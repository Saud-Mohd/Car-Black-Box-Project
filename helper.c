#include <xc.h>
#include "main.h"
#include "helper.h"
#include "ds1307.h"
#include "clcd.h"
#include "at24c04.h"
#include "digital_keypad.h"
#include "uart.h"
#include <string.h>

unsigned char clock_reg[3];
unsigned char time[7];
//sec and return_time are defined in isr.c so externing them here
extern int sec , return_time;
int flag;
char *menu[]= { "View Log", "Clear Log", "Download Log","Set Time", "Change Paswd" };
char overflow = 0;
char log[11];
static int pos = -1;
int access = -1;
//saved password or correct password 
char spassword[5];

void display_dash_board( char event[], unsigned short speed)
{
	clcd_print("  TIME  EVNT  SP", LINE1(0));
    get_time();
    display_time();
    clcd_putch(' ',LINE2(8));
    clcd_print(event, LINE2(9));
    clcd_putch(' ',LINE2(12));
    clcd_putch('0' + (speed / 10), LINE2(14));
    clcd_putch('0' + (speed % 10), LINE2(15)); 
}


void display_time(void)
{
	clcd_putch(time[0],LINE2(0));
	clcd_putch(time[1],LINE2(1));
	clcd_putch(':',LINE2(2));
	clcd_putch(time[2],LINE2(3));
	clcd_putch(time[3],LINE2(4));
	clcd_putch(':',LINE2(5));
	clcd_putch(time[4],LINE2(6));
	clcd_putch(time[5],LINE2(7));
}

void get_time(void)
{
	clock_reg[0] = read_ds1307(HOUR_ADDR);
	clock_reg[1] = read_ds1307(MIN_ADDR);
	clock_reg[2] = read_ds1307(SEC_ADDR);

	if (clock_reg[0] & 0x40)
	{
		time[0] = '0' + ((clock_reg[0] >> 4) & 0x01);
		time[1] = '0' + (clock_reg[0] & 0x0F);
	}
	else
	{
		time[0] = '0' + ((clock_reg[0] >> 4) & 0x03);
		time[1] = '0' + (clock_reg[0] & 0x0F);
	}
	time[2] = '0' + ((clock_reg[1] >> 4) & 0x0F);
	time[3] = '0' + (clock_reg[1] & 0x0F);
	time[4] = '0' + ((clock_reg[2] >> 4) & 0x0F);
	time[5] = '0' + (clock_reg[2] & 0x0F);
	time[6] = '\0';
}

//function to get password from external eeprom. Note: The password is stored in 0-3 memory location of eeprom
void get_password(void)
{
    //going to memory location 0x00 0x01 0x02 0x03 and getting data and storing in spassword
	for (int i = 0; i < 4; i++)
    {
        spassword[i] = eeprom_at24c04_random_read(i);
    }
}

char login(unsigned char key, char reset_password)
{
    //entered password
    static char npassword[4];
    static unsigned char i;
    static unsigned char attempt_remaining;
    if (reset_password == RESET_PASSWORD)
    {
        npassword[0] = 0;
        npassword[1] = 0;
        npassword[2] = 0;
        npassword[3] = 0;
        i = 0;
        attempt_remaining = '3';
        //timeout for main screen
        return_time = 5;
        sec = 0;
        //getting password from external eeprom
        get_password();
        key = 0x00;
        
    }
    //if time out out for reading password
    if (!return_time)
    {
        return RETURN_BACK;
    }
    //read password from the user based on key pressed
    if (i < 4 && key == SW4)
    {
        return_time = 5;
        npassword[i] = '0';
        clcd_putch('*', LINE2(i+6));
        i++;
    }
    else if (i < 4 && key == SW5)
    {
        return_time = 5;
        npassword[i] = '1';
        clcd_putch('*', LINE2(i+6));
        i++;
    }
    //if i == 4 that means user has entered the password now we will compare the password enterred with the spassword
    else if (i == 4)
    {
        get_password();
        if (strncmp(spassword, npassword, 4) == 0)
        {
            CLEAR_DISP_SCREEN;
            return LOGIN_SUCCESS;
        }
        //password not matching
        else
        {
            //if attempts all over. We will get blocked for 60 sec
            if (--attempt_remaining == '0')
            {
                CLEAR_DISP_SCREEN;
                clcd_print("You are locked", LINE1(0));
                clcd_print("Wait .. 60 sec", LINE2(0));
                sec = 60;
                //turning cursor off 
                DISP_ON_AND_CURSOR_OFF;
                while (sec)
                {
                    clcd_putch('0' + (sec / 10), LINE2(8));
                    clcd_putch('0' + (sec % 10), LINE2(9));
                }
                //Again making attempts left as 3 after blocking of 60 sec
                attempt_remaining = '3';
                //making cursor on again
                DISP_ON_AND_CURSOR_ON;
            }
            else
            {
                CLEAR_DISP_SCREEN;
                clcd_print("WRONG PASSWORD", LINE1(1));
                clcd_putch(attempt_remaining, LINE2(0));
                clcd_print("Attempt Left", LINE2(2));
                //providing 3 sec delay here through timer. Sec is defined in isr
                sec = 3;
                while(sec);
            }
            CLEAR_DISP_SCREEN;
            clcd_print("Enter Password", LINE1(1));        
            return_time = 5;
            i = 0;
        }
    }
    return 0x10;
	
}


int login_menu(unsigned char key, unsigned char reset_menu)
{
	static int menu_pos = 0, select_pos = 1;
    if (reset_menu == RESET_LOGIN_MENU)
    {
        menu_pos = 0;
        select_pos = 1;
    }
    if (key == SW5 && menu_pos < 4)
    {
        menu_pos++;
        if (select_pos < 2)
            select_pos++;
        CLEAR_DISP_SCREEN;
    }
    if (key == SW4 && menu_pos > 0)
    {
        menu_pos--;
         if (select_pos > 1)
            select_pos--;
        CLEAR_DISP_SCREEN;
    }
    if (select_pos == 1)
    {
        clcd_putch('*', LINE1(0));
        clcd_print(menu[menu_pos], LINE1(2));
        clcd_print(menu[menu_pos + 1], LINE2(2));
    }
    else if (select_pos == 2)
    {
        clcd_putch('*', LINE2(0));
        clcd_print(menu[menu_pos - 1], LINE1(2));
        clcd_print(menu[menu_pos], LINE2(2));
    }
    return menu_pos;
}

void log_event( )
{
    char addr;
    //we can store maximum of 10 events
    if (++pos == 10)
    {
        pos = 0;
        overflow = 1;
    }
    //each event take 10 bytes hhmmss(6) + event(2) + speed(2) = 6 + 2 + 2 = 10 
    addr = (pos * 10) + 5;
    //to store string at memory location <addr> of external eepropm at24c04
    eeprom_at24c04_str_write(addr, log);
    
    if (access < 9)
    {
        access++;
    }
	
}


void log_car_event (char *event ,unsigned short speed)
{
    //We are trying to store time event and speed
    get_time();
    //hhmmss
    strncpy(log, time, 6);
    //event C, ON, GN, GR, G1, G2, G3, G4
    strncpy(&log[6], event, 2);
    
    //speed varies from 0 to 99
    log[8] = (speed/10) + '0';
    log[9] = (speed % 10) + '0';
    log[10] = '\0';
    
    //calling log event
    log_event();
    
}

void view_log(unsigned char key, unsigned char reset_shift)
{
    static int shift;
    char rlog[11];
    rlog[10] = 0;
    int rpos;
    unsigned char add;
    //if access is -1 that we have already selected clear log
    if (access == -1)
    {
        clcd_print("no logs available",LINE2(0));
    }
    else
    {    
        if (reset_shift == RESET_VIEW_LOG_POS)
        {
            shift = 0;
        }
        rpos = (overflow) ? (pos + 1) % 10 : 0;
        //for scroll up and scroll down the logs
        if (key == SW4 && shift < access)
        {
            shift++;
        }
        else if (key == SW5 && shift > 0)
        {
            shift--;
        }

        rpos = (rpos + shift) % 10;

        for (int i = 0; i < 10; i++)
        {
            add = rpos * 10 + 5 + i;
            rlog[i] = eeprom_at24c04_random_read(add);
        }
        clcd_putch(shift + '0', LINE2(0));
        //time
        clcd_putch(rlog[0], LINE2(2));
        clcd_putch(rlog[1], LINE2(3));
        clcd_putch(':', LINE2(4));
        clcd_putch(rlog[2], LINE2(5));
        clcd_putch(rlog[3], LINE2(6));
        clcd_putch(':', LINE2(7));
        clcd_putch(rlog[4], LINE2(8));
        clcd_putch(rlog[5], LINE2(9));

        //event
        clcd_putch(rlog[6], LINE2(11));
        clcd_putch(rlog[7], LINE2(12));

        //speed
        clcd_putch(rlog[8], LINE2(14));
        clcd_putch(rlog[9], LINE2(15));
    }  
 
}



char clear_log (unsigned char reset_memory)
{
    if (reset_memory == RESET_MEMORY)
    {
        clcd_print("CLEAR LOG", LINE1(2));
        clcd_print("Successful", LINE2(2));
        sec = 3;
        while(sec);
        pos = -1;
        access = -1;
        return TASK_SUCCESS;      
    }
    return TASK_FAIL;
}



unsigned char download_log(unsigned char reset_download)
{
    static unsigned int read_pos;
    unsigned char read_data[10];
    int addr, i;
	if (reset_download == RESET_DOWNLOAD)
    {
        read_pos = 0; 
        //writing headlines to the laptop
        puts("\r\n# TIME   EVNT SP\n\r");
    }
    if (read_pos > access)
    {
        CLEAR_DISP_SCREEN;
        sec = 3;
        while(sec)
        {
           clcd_print("Downloaded Logs", LINE1(0));
        }
        return TASK_SUCCESS;
    }
    for (i = 0; i < 10; i++)
    {
        addr = (read_pos * 10) + 5 + i;
        if (i == 0)
        {
            putchar(read_pos + '0');
            putchar(' ');
        }
        if (i == 2 || i == 4)
            putchar(':');
        if (i == 6 || i == 8)
            putchar(' ');
        read_data[i] = eeprom_at24c04_random_read(addr);
        putchar(read_data[i]);
    }
    puts("\n\r");
    read_pos++;
    //just for the sake of returning nothing else
    return 0x10;
}

char set_time( unsigned char key ,unsigned char reset_time )
{
    static unsigned char pos, cursor_pos, set_flag, flag;
    static int wait = 0; 
    static int num;
    if (reset_time == RESET_TIME)
    {
        pos = 5;
        cursor_pos = 7;
        get_time();
        display_time();
        set_flag = 0;
        flag = 1;
        key = 0x00;
    }

    if (wait++ == 100)
    {
        wait = 0;
        flag = !flag;
        if (flag == 1)
            clcd_putch(0xff,LINE2(cursor_pos));
        else
            clcd_putch(time[pos], LINE2(cursor_pos));
    }

    //if key is SW4 that means I have to increment time[pos] field
    if(key == SW4)
    {
        time[pos]++;
        if((pos == 5 || pos == 3) && time[pos] > '9')
            time[pos] = '0';
        else if ((pos == 4 || pos == 2) && time[pos] > '5')
            time[pos] = '0';
        else if (pos == 1 || pos == 0)
        {
            
            if (time[1] > '9')
                time[1] = '0';
            
            if (time[0] == '2' && time[1] > '3')
                time[1] = '0';
            
            if (time[0] > '2')
                time[0] = '0';
        }
        display_time();
        set_flag = 1;
    }
    else if (key == SW5)
    {
        cursor_pos--;
        pos--;
        if (pos > 5)
            pos = 5;
//        set_flag = 1;
        //at 2 and 5 position of time array we have : so skipping those
        if (cursor_pos == 2 || cursor_pos == 5)
            cursor_pos--;
        if(cursor_pos > 7)
            cursor_pos = 7;
        display_time();
    }
    if (set_flag == 1)
    {
        set_flag = 0;
        //clearing clock_reg[0]
        clock_reg[0] = 0x00;
        //setting new value to clock_reg[0]
        clock_reg[0] |= ((time[0] - '0') << 4) | (time[1] - '0'); 
        write_ds1307(HOUR_ADDR, clock_reg[0]);
        
        //clearing clock_reg[1]
        clock_reg[1] = 0x00;
        //setting new value to clock_reg[1]
        clock_reg[1] |= ((time[2] - '0') << 4) | (time[3] - '0'); 
        write_ds1307(MIN_ADDR, clock_reg[1]);

        //clearing clock_reg[2]
        clock_reg[2] = 0x00;
       //setting new value to clock_reg[1]
        clock_reg[2] |= ((time[4] - '0') << 4) | (time[5] - '0'); 
        write_ds1307(SEC_ADDR, clock_reg[2]);
    }
    return TASK_SUCCESS;
}
char change_password(unsigned char key, char reset_pwd )
{
	static unsigned char r_password[5];
    static unsigned int i;
    if (reset_pwd == RESET_PASSWORD)
    {
        r_password[0] = 0;
        r_password[1] = 0;
        r_password[2] = 0;
        r_password[3] = 0;
        r_password[4] = 0;
        //making i as 0
        i = 0;
        return_time = 5;
        sec = 0;
        key = 0x00;
        get_password();
        //resetting flag so that initialisations in confirmed_password function can be done
        flag = 0;
    }
     //if time out out for reading password
    if (!return_time)
    {
        return RETURN_BACK;
    }
    //read password from the user based on key pressed
    if (i < 4 && key == SW4)
    {
        return_time = 5;
        r_password[i] = '0';
        clcd_putch('*', LINE2(i+6));
        i++;
    }
    else if (i < 4 && key == SW5)
    {
        return_time = 5;
        r_password[i] = '1';
        clcd_putch('*', LINE2(i+6));
        i++;
    }
    else if (i == 4)
    {
        
       return confirm_change_password(key, r_password);
        
    }
    return 0x10;
	
}

char confirm_change_password(unsigned char key, unsigned char* changed_password)
{
    static unsigned char confirmed_password[5] = {0};
    static unsigned int i;
    static unsigned char attempt_remaining;
    if (flag == 0)
    {
        CLEAR_DISP_SCREEN;
        i = 0;
        clcd_print("Confirm Passwrd", LINE1(1));
        clcd_putch(' ', LINE2(0));
        DISP_ON_AND_CURSOR_ON;
        sec = 0;
        return_time = 5;
        attempt_remaining = '3';
        flag = 1;
        key = 0x00;
    }
    //if time out out for reading password
    if (!return_time)
    {
        return RETURN_BACK;
    }
    //read password from the user based on key pressed
    if (i < 4 && key == SW4)
    {
        return_time = 5;
        confirmed_password[i] = '0';
        clcd_putch('*', LINE2(i+6));
        i++;
    }
    else if (i < 4 && key == SW5)
    {
        return_time = 5;
        confirmed_password[i] = '1';
        clcd_putch('*', LINE2(i+6));
        i++;
    }
    else if (i == 4)
    {
        if (strncmp(changed_password, confirmed_password, 4) == 0)
        {
            CLEAR_DISP_SCREEN;
            sec = 3;
            DISP_ON_AND_CURSOR_OFF;
            while(sec)
            {
                clcd_print("Password Changed", LINE1(0));
                clcd_print("Successfully", LINE2(3));
            }
            //now writing this new password to external eeprom (from 0x00 to 0x03)
            eeprom_at24c04_str_write(0x00, confirmed_password);
            return TASK_SUCCESS;
        }
        //password not matching
        else
        {
            //if attempts all over. We will get blocked for 60 sec
            if (--attempt_remaining == '0')
            {
                CLEAR_DISP_SCREEN;
                clcd_print("You are locked", LINE1(0));
                clcd_print("Wait .. 60 sec", LINE2(0));
                sec = 30;
                //turning cursor off 
                DISP_ON_AND_CURSOR_OFF;
                while (sec)
                {
                    clcd_putch('0' + (sec / 10), LINE2(8));
                    clcd_putch('0' + (sec % 10), LINE2(9));
                }
                //Again making attempts left as 3 after blocking of 60 sec
                attempt_remaining = '3';
                //making cursor on again
                DISP_ON_AND_CURSOR_ON;
            }
            else
            {
                CLEAR_DISP_SCREEN;
                clcd_print("Not matching", LINE1(1));
                clcd_putch(attempt_remaining, LINE2(0));
                clcd_print("Attempts Left", LINE2(2));
                //providing 3 sec delay here through timer. Sec is defined in isr
                sec = 3;
                while(sec);
            }
            CLEAR_DISP_SCREEN;
            clcd_print("Confirm Passwrd", LINE1(0));        
            return_time = 5;
            i = 0;
        }
    }
    return 0x10;
}
