/*
 * Delay functions for HI-TECH C on the PIC
 *
 * Functions available:
 *		delay_us(x)	Delay specified number of microseconds
 *		DelayMs(x)	Delay specified number of milliseconds
 *
 * Note that there are range limits: x must not exceed 255 - for xtal
 * frequencies > 12MHz the range for delay_us is even smaller.
 * To use delay_us it is only necessary to include this file; to use
 * DelayMs you must include delay.c in your project.
 *
 */

/*	Set the crystal frequency in the CPP predefined symbols list in
	HPDPIC, or on the PICC commmand line, e.g.
	picc -DXTAL_FREQ=4MHZ
	
	or
	picc -DXTAL_FREQ=100KHZ
	
	Note that this is the crystal frequency, the CPU clock is
	divided by 4.

 *	MAKE SURE this code is compiled with full optimization!!!
	
 */
#include <xc.h>

//#define	MHZ	*1000L			/* number of kHz in a MHz */
//#define	KHZ	*1				/* number of kHz in a kHz */
#ifndef	XTAL_FREQ
#define	XTAL_FREQ	20000000	/* Crystal frequency in 20MHz */
#endif


#if	XTAL_FREQ >= 12000000

#define	delay_us(x)	{ unsigned char _dcnt; \
			  _dcnt = (x)*((XTAL_FREQ)/(12000000)); \
			  while(--_dcnt != 0) \
				  continue; }
#else

#define	delay_us(x)	{ unsigned char _dcnt; \
			  _dcnt = (x)/((12MHZ)/(XTAL_FREQ))|1; \
			  while(--_dcnt != 0) \
				  continue; }
#endif

extern void delay_ms(unsigned char);
