/*
 *	Delay functions
 *	See delay.h for details
 *
 *	Make sure this code is compiled with full optimization!!!
 */
#include <xc.h>
#include"delay.h"

void delay_ms(unsigned char count)
{
#if	XTAL_FREQ <= 2000000
	do
	{
		delay_us(996);
	}
	while(--count);
#endif

#if    XTAL_FREQ > 2000000	
	unsigned char i;
	do 
	{
		i = 4;
		do
		{
			delay_us(250);
		}
		while(--i);
	}
	while(--count);
#endif
}
