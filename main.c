/* 
 * File:   main.c
 * Author: Saud
 *
 * Created on December 29, 2021, 6:32 AM
 */

#include <xc.h>
#include "main.h"
#include "clcd.h"
#include "digital_keypad.h"
#include "i2c.h"
#include "ds1307.h"
#include "helper.h"
#include "adc.h"
#include "timers.h"
#include "at24c04.h"
#include "uart.h"
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
unsigned int l_count = 0;
char log_flag;
char *gear[] = { "GN", "GR", "G1", "G2", "G3", "G4" };

void init_config(void)
{
    init_clcd();
    init_digital_keypad();
    init_i2c();
	init_ds1307();
    init_adc();
    init_timer2();
    init_uart(9600);
    
    /* Peripheral Interrupt Enable Bit (For Timer2) */
    PEIE = 1;
    
    /* Enable all the Global Interrupts */
    GIE = 1;  
}
void main(void)
{
    init_config();
    //Variable Declaration
    unsigned char key;
    
    //the very first event after reset will be ON
 	char event[3] = "ON";
	int gr = 0;
	unsigned short speed = 0;
	char control_flag = DASH_BOARD_FLAG;
	char reset_flag = RESET_NOTHING ;
	int menu_pos = 0;
    int wait_time = 0;
    log_car_event(event, speed);
    while(1)
    {
         key = read_digital_keypad(STATE);
         //just a simple to delay to make digital keypad settle. To avoid bouncing effect
         for (unsigned int wait = 3000; wait--;);
         
          /*adc_read will give us the value between 0 and 1023 as we have a 10 bit adc
          We are scaling down the values between 0 to 99
          */
         speed = read_adc() * ((float)100/1024);
         if (key == SW1)
         {
             strcpy(event, " C");
             log_car_event(event, speed);
             
         }
         else if (key == SW2 && gr < 5)
         {
             gr++;
             strcpy(event, gear[gr]);
             log_car_event(event, speed);
         }
         else if (key == SW3 && gr > 0)
         {
             gr--;
             strcpy(event, gear[gr]);
             log_car_event(event, speed);         
         }
         else if(key == SW4 && control_flag == DASH_BOARD_FLAG)
         {
             CLEAR_DISP_SCREEN;
             clcd_print(" Enter Password ", LINE1(0));
             clcd_putch(' ', LINE2(0));
             DISP_ON_AND_CURSOR_ON;
             reset_flag = RESET_PASSWORD;
             control_flag = LOGIN_FLAG;
             //We have to turn on Timer Here. Because if we dnt enter the password within specified time we have to return back to main screen
             TMR2ON = 1;     
         }
         else if (key == LSW4 && control_flag == LOGIN_MENU_FLAG)
         {
             switch(menu_pos)
             {
                 //view log
                 case 0:
                     CLEAR_DISP_SCREEN;
                     clcd_print("# TIME   EVNT SP", LINE1(0));
                     reset_flag = RESET_VIEW_LOG_POS;
                     control_flag = VEIW_LOG_FLAG;
                     break;
                 //clear log    
                 case 1:
                     CLEAR_DISP_SCREEN;
                     reset_flag = RESET_MEMORY;
                     control_flag = CLEAR_LOG_FLAG;
                     TMR2ON = 1;
                     break;
                //download log     
                 case 2:
                     CLEAR_DISP_SCREEN;
                     reset_flag = RESET_DOWNLOAD;
                     control_flag = DOWNLOAD_LOG_FLAG;
                     TMR2ON = 1;
                     break;
                 //set time
                 case 3:
                     CLEAR_DISP_SCREEN;
                     clcd_print("HH:MM:SS", LINE1(0));
                     reset_flag = RESET_TIME;
                     control_flag = SET_TIME_FLAG;
                     break;
                //change password
                 case 4:
                     //Clear display screen
                     CLEAR_DISP_SCREEN;
                     clcd_print("Enter New Passwd ", LINE1(0));
                     clcd_putch(' ', LINE2(0));
                     DISP_ON_AND_CURSOR_ON;
                     reset_flag = RESET_PASSWORD;
                     control_flag = CHANGE_PASSWORD_FLAG;
                     TMR2ON = 1;
                     break;   
             }
                    
         }
         //if we Long press SW5 in LOGIN_MENU. Then we should return back to dashboard
         else if (key == LSW5 && control_flag == LOGIN_MENU_FLAG)
         {
             CLEAR_DISP_SCREEN;
             DISP_ON_AND_CURSOR_OFF;
             //go back to dashboard 
             control_flag = DASH_BOARD_FLAG;
         }
         else if (key == LSW5 && (control_flag == VEIW_LOG_FLAG || control_flag == CHANGE_PASSWORD_FLAG || control_flag == SET_TIME_FLAG)) //view log, change passwrd, set time
         {
             CLEAR_DISP_SCREEN;
             DISP_ON_AND_CURSOR_OFF;
             control_flag = LOGIN_MENU_FLAG;
             reset_flag = RESET_LOGIN_MENU;
         }
         switch (control_flag)
         {
             case DASH_BOARD_FLAG:
                 display_dash_board(event , speed);
                 break;
             case LOGIN_FLAG:
                 switch(login(key , reset_flag))
                 {
                     case RETURN_BACK: 
                         control_flag = DASH_BOARD_FLAG;
                         TMR2ON = 0;
                         DISP_ON_AND_CURSOR_OFF;
                         break;
                     case LOGIN_SUCCESS:
                         control_flag = LOGIN_MENU_FLAG;
                         reset_flag = RESET_LOGIN_MENU;
                         TMR2ON = 0;
                         DISP_ON_AND_CURSOR_OFF;
                         continue;
                         break;
                 }
                 break;
              case LOGIN_MENU_FLAG:
                  menu_pos = login_menu(key, reset_flag);
                  break;
             case VEIW_LOG_FLAG:
                 view_log(key, reset_flag);
                 break;
             case CLEAR_LOG_FLAG:
                 if (clear_log(reset_flag) == TASK_SUCCESS)
                 {
                    log_car_event("CL", speed);
                    //making timer 2 OFF
                    TMR2ON = 0;
                    control_flag = LOGIN_MENU_FLAG;
                    reset_flag = RESET_LOGIN_MENU;
                    CLEAR_DISP_SCREEN;
                    continue;
                 }
                 break;
             case DOWNLOAD_LOG_FLAG:
                 if(download_log(reset_flag) == TASK_SUCCESS)
                 {
                     control_flag = LOGIN_MENU_FLAG;
                     reset_flag = RESET_LOGIN_MENU;
                     CLEAR_DISP_SCREEN;
                     TMR2ON = 0;
                     continue;
                 }
                 break;
             case SET_TIME_FLAG:
                 set_time(key, reset_flag);
                 break;
             case CHANGE_PASSWORD_FLAG:
                 switch(change_password(key , reset_flag))
                 {
                     case RETURN_BACK: 
                         control_flag = DASH_BOARD_FLAG;
                         TMR2ON = 0;
                         DISP_ON_AND_CURSOR_OFF;
                         break;
                     case TASK_SUCCESS:
                         CLEAR_DISP_SCREEN;
                         control_flag = LOGIN_MENU_FLAG;
                         reset_flag = RESET_LOGIN_MENU;
                         TMR2ON = 0;
                         DISP_ON_AND_CURSOR_OFF;
                         continue;
                         break;
                 }
                 break;
                 
         }
         reset_flag = RESET_NOTHING;    
    }
}    











