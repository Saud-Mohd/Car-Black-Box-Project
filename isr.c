#include <xc.h>
#include "main.h"
#include "clcd.h"
int sec;
int return_time;
void __interrupt() isr(void)
{
  static unsigned short count;
    if (TMR2IF == 1)
    {
        //calculation for 1 sec
        if (count++ == 1250)
	{   
	    count = 0;
            if (sec > 0)
            {
                sec--;
            }
            if (return_time > 0 && !sec)
            {
                return_time--;
            }
	}
        TMR2IF = 0;
    }
}

