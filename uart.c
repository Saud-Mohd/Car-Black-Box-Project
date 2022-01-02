#include <xc.h>
#include "uart.h"
void init_uart(unsigned long baud)
{
    //To enable USART. and make RC7 as Rx and RC6 ad TX
    SPEN = 1; 
    // to enable continuous reception.
    CREN = 1;
    
    //setting the baud rate
    SPBRG = (FOSC/(baud * 16)) - 1;
    //rest all bits as 0
}

void putchar(unsigned char data)
{
    TXREG = data;
    do 
    {
        
    }while (TXIF != 1);
    
    TXIF = 0;    
} 

void puts(const char* s)
{
    while (*s != '\0')
    {
        putchar(*s++);
    }
}

unsigned char getchar(void)
{
    //waiting for RCIF to get 1
    while(RCIF != 1);
    
    RCIF = 0;
    return RCREG;
}   


