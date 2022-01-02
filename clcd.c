#include <xc.h>
#include "clcd.h"

void clcd_write(unsigned char byte, unsigned char mode)
{
    CLCD_RS = mode;
    CLCD_PORT = byte;

    CLCD_EN = HI;
    __delay_us(100);
    CLCD_EN = LO;
    
    __delay_us(4100);
}       
    
void init_display_controller(void)
{
    /* Page 46 */
    __delay_ms(500);

    EIGHT_BIT_MODE;
    __delay_us(4100);
    EIGHT_BIT_MODE;
    __delay_us(100);
    EIGHT_BIT_MODE;
    __delay_us(100);

    TWO_LINE_5x8_MATRIX_8_BIT;
    __delay_us(100);
    CLEAR_DISP_SCREEN;
    __delay_us(500);
    DISP_ON_AND_CURSOR_OFF;
    __delay_us(100);
}

void init_clcd()
{
    /* Set PortD as output port for CLCD data */
    CLCD_PORT_DDR = 0x00;
    /* Set PortE pins as output port for CLCD control */
    CLCD_RS_DDR = 0;
    CLCD_EN_DDR = 0;

    init_display_controller();
}

void clcd_print(const char *data, unsigned char addr)
{
    clcd_write(addr, INST_MODE);
    while (*data != '\0')
    {
        clcd_write(*data++, DATA_MODE);
    }
}

void clcd_putch(const char data, unsigned char addr)
{
    clcd_write(addr, INST_MODE);
    clcd_write(data, DATA_MODE);
}
