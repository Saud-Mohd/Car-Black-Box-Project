/* 
 * File:   clcd.h
 * Author: adil
 *
 * Created on 17 May, 2020, 11:07 AM
 */

#ifndef CLCD_H
#define	CLCD_H

#define _XTAL_FREQ                  20000000

#define CLCD_PORT_DDR               TRISD
#define CLCD_EN_DDR                 TRISE1
#define CLCD_RS_DDR                 TRISE2

#define CLCD_PORT                   PORTD
#define CLCD_EN                     RE1
#define CLCD_RS                     RE2

#define HI                          1
#define LO                          0
    
#define DATA_MODE                   1
#define INST_MODE                   0
    
#define LINE1(x)                    (0x80 + (x))
#define LINE2(x)                    (0xC0 + (x))
    
#define EIGHT_BIT_MODE              clcd_write(0x33, INST_MODE)
#define FOUR_BIT_MODE               0x02
#define TWO_LINE_5x8_MATRIX_8_BIT   clcd_write(0x38, INST_MODE)
#define CLEAR_DISP_SCREEN           clcd_write(0x01, INST_MODE)
#define CURSOR_HOME                 0x0E
#define DISP_ON_AND_CURSOR_OFF      clcd_write(0x0C, INST_MODE)
#define DISP_ON_AND_CURSOR_ON       clcd_write(0x0F, INST_MODE)    
#define CLEAR_LINE2                 clcd_print("                ", LINE2(0)) 
#define CLEAR_LINE1                 clcd_print("                ", LINE1(0)) 
#define MOVE_CURSOR(add)            clcd_write(add, INST_MODE) 
void init_clcd(void);
void clcd_print(const char *data, unsigned char addr);
void clcd_putch(const char data, unsigned char addr);
void clcd_write(unsigned char byte, unsigned char mode);

#endif	/* CLCD_H */

