#include <xc.h>

void init_adc(void)
{
    /* Selecting right justified ADRES Registers order */
    /*Six (6) Most Significant bits of ADRESH are read as ?0?*/
	ADFM = 1;
    
    /*
	 * Selecting the conversion clock of Fosc / 32 -> 1.6usecs -> 1Tad
	 * Our device frequency is 20 MHz
	 */
	ADCS0 = 0;
	ADCS1 = 1;
	ADCS2 = 0;

/* Stop the conversion to start with */
	GO = 0;
    
    
	/* Just clearing the ADRESH & ADRESL registers, for time pass */
	ADRESH = 0;
	ADRESL = 0;

	/* Turn ON the ADC module */
	ADON = 1;
}

unsigned short read_adc(void)
{
	unsigned short reg_val;

	/* Start the conversion */
	GO = 1;
	while (GO);
	reg_val = (ADRESH << 8) | ADRESL; 

	return reg_val;
}

