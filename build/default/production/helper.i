# 1 "helper.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "helper.c" 2
# 1 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/xc.h" 1 3
# 18 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);



# 1 "/opt/microchip/xc8/v2.32/pic/include/c90/xc8debug.h" 1 3
# 13 "/opt/microchip/xc8/v2.32/pic/include/c90/xc8debug.h" 3
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 24 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/xc.h" 2 3



# 1 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/pic.h" 1 3




# 1 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/htc.h" 1 3



# 1 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/xc.h" 1 3
# 5 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/htc.h" 2 3
# 6 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/pic.h" 2 3







# 1 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/pic_chip_select.h" 1 3
# 663 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/pic_chip_select.h" 3
# 1 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 1 3
# 44 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
# 1 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/__at.h" 1 3
# 45 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 2 3







extern volatile unsigned char INDF __attribute__((address(0x000)));

__asm("INDF equ 00h");




extern volatile unsigned char TMR0 __attribute__((address(0x001)));

__asm("TMR0 equ 01h");




extern volatile unsigned char PCL __attribute__((address(0x002)));

__asm("PCL equ 02h");




extern volatile unsigned char STATUS __attribute__((address(0x003)));

__asm("STATUS equ 03h");


typedef union {
    struct {
        unsigned C :1;
        unsigned DC :1;
        unsigned Z :1;
        unsigned nPD :1;
        unsigned nTO :1;
        unsigned RP :2;
        unsigned IRP :1;
    };
    struct {
        unsigned :5;
        unsigned RP0 :1;
        unsigned RP1 :1;
    };
    struct {
        unsigned CARRY :1;
        unsigned :1;
        unsigned ZERO :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0x003)));
# 159 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char FSR __attribute__((address(0x004)));

__asm("FSR equ 04h");




extern volatile unsigned char PORTA __attribute__((address(0x005)));

__asm("PORTA equ 05h");


typedef union {
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned RA4 :1;
        unsigned RA5 :1;
    };
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __attribute__((address(0x005)));
# 216 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char PORTB __attribute__((address(0x006)));

__asm("PORTB equ 06h");


typedef union {
    struct {
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RB2 :1;
        unsigned RB3 :1;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __attribute__((address(0x006)));
# 278 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char PORTC __attribute__((address(0x007)));

__asm("PORTC equ 07h");


typedef union {
    struct {
        unsigned RC0 :1;
        unsigned RC1 :1;
        unsigned RC2 :1;
        unsigned RC3 :1;
        unsigned RC4 :1;
        unsigned RC5 :1;
        unsigned RC6 :1;
        unsigned RC7 :1;
    };
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __attribute__((address(0x007)));
# 340 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char PORTD __attribute__((address(0x008)));

__asm("PORTD equ 08h");


typedef union {
    struct {
        unsigned RD0 :1;
        unsigned RD1 :1;
        unsigned RD2 :1;
        unsigned RD3 :1;
        unsigned RD4 :1;
        unsigned RD5 :1;
        unsigned RD6 :1;
        unsigned RD7 :1;
    };
} PORTDbits_t;
extern volatile PORTDbits_t PORTDbits __attribute__((address(0x008)));
# 402 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char PORTE __attribute__((address(0x009)));

__asm("PORTE equ 09h");


typedef union {
    struct {
        unsigned RE0 :1;
        unsigned RE1 :1;
        unsigned RE2 :1;
    };
} PORTEbits_t;
extern volatile PORTEbits_t PORTEbits __attribute__((address(0x009)));
# 434 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char PCLATH __attribute__((address(0x00A)));

__asm("PCLATH equ 0Ah");


typedef union {
    struct {
        unsigned PCLATH :5;
    };
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __attribute__((address(0x00A)));
# 454 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char INTCON __attribute__((address(0x00B)));

__asm("INTCON equ 0Bh");


typedef union {
    struct {
        unsigned RBIF :1;
        unsigned INTF :1;
        unsigned TMR0IF :1;
        unsigned RBIE :1;
        unsigned INTE :1;
        unsigned TMR0IE :1;
        unsigned PEIE :1;
        unsigned GIE :1;
    };
    struct {
        unsigned :2;
        unsigned T0IF :1;
        unsigned :2;
        unsigned T0IE :1;
    };
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __attribute__((address(0x00B)));
# 532 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char PIR1 __attribute__((address(0x00C)));

__asm("PIR1 equ 0Ch");


typedef union {
    struct {
        unsigned TMR1IF :1;
        unsigned TMR2IF :1;
        unsigned CCP1IF :1;
        unsigned SSPIF :1;
        unsigned TXIF :1;
        unsigned RCIF :1;
        unsigned ADIF :1;
        unsigned PSPIF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0x00C)));
# 594 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char PIR2 __attribute__((address(0x00D)));

__asm("PIR2 equ 0Dh");


typedef union {
    struct {
        unsigned CCP2IF :1;
        unsigned :2;
        unsigned BCLIF :1;
        unsigned EEIF :1;
        unsigned :1;
        unsigned CMIF :1;
    };
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __attribute__((address(0x00D)));
# 634 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned short TMR1 __attribute__((address(0x00E)));

__asm("TMR1 equ 0Eh");




extern volatile unsigned char TMR1L __attribute__((address(0x00E)));

__asm("TMR1L equ 0Eh");




extern volatile unsigned char TMR1H __attribute__((address(0x00F)));

__asm("TMR1H equ 0Fh");




extern volatile unsigned char T1CON __attribute__((address(0x010)));

__asm("T1CON equ 010h");


typedef union {
    struct {
        unsigned TMR1ON :1;
        unsigned TMR1CS :1;
        unsigned nT1SYNC :1;
        unsigned T1OSCEN :1;
        unsigned T1CKPS :2;
    };
    struct {
        unsigned :2;
        unsigned T1SYNC :1;
        unsigned :1;
        unsigned T1CKPS0 :1;
        unsigned T1CKPS1 :1;
    };
    struct {
        unsigned :2;
        unsigned T1INSYNC :1;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0x010)));
# 730 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char TMR2 __attribute__((address(0x011)));

__asm("TMR2 equ 011h");




extern volatile unsigned char T2CON __attribute__((address(0x012)));

__asm("T2CON equ 012h");


typedef union {
    struct {
        unsigned T2CKPS :2;
        unsigned TMR2ON :1;
        unsigned TOUTPS :4;
    };
    struct {
        unsigned T2CKPS0 :1;
        unsigned T2CKPS1 :1;
        unsigned :1;
        unsigned TOUTPS0 :1;
        unsigned TOUTPS1 :1;
        unsigned TOUTPS2 :1;
        unsigned TOUTPS3 :1;
    };
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __attribute__((address(0x012)));
# 808 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char SSPBUF __attribute__((address(0x013)));

__asm("SSPBUF equ 013h");




extern volatile unsigned char SSPCON __attribute__((address(0x014)));

__asm("SSPCON equ 014h");


typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
} SSPCONbits_t;
extern volatile SSPCONbits_t SSPCONbits __attribute__((address(0x014)));
# 885 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned short CCPR1 __attribute__((address(0x015)));

__asm("CCPR1 equ 015h");




extern volatile unsigned char CCPR1L __attribute__((address(0x015)));

__asm("CCPR1L equ 015h");




extern volatile unsigned char CCPR1H __attribute__((address(0x016)));

__asm("CCPR1H equ 016h");




extern volatile unsigned char CCP1CON __attribute__((address(0x017)));

__asm("CCP1CON equ 017h");


typedef union {
    struct {
        unsigned CCP1M :4;
        unsigned CCP1Y :1;
        unsigned CCP1X :1;
    };
    struct {
        unsigned CCP1M0 :1;
        unsigned CCP1M1 :1;
        unsigned CCP1M2 :1;
        unsigned CCP1M3 :1;
    };
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __attribute__((address(0x017)));
# 964 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char RCSTA __attribute__((address(0x018)));

__asm("RCSTA equ 018h");


typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
    struct {
        unsigned RCD8 :1;
        unsigned :5;
        unsigned RC9 :1;
    };
    struct {
        unsigned :6;
        unsigned nRC8 :1;
    };
    struct {
        unsigned :6;
        unsigned RC8_9 :1;
    };
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __attribute__((address(0x018)));
# 1059 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char TXREG __attribute__((address(0x019)));

__asm("TXREG equ 019h");




extern volatile unsigned char RCREG __attribute__((address(0x01A)));

__asm("RCREG equ 01Ah");




extern volatile unsigned short CCPR2 __attribute__((address(0x01B)));

__asm("CCPR2 equ 01Bh");




extern volatile unsigned char CCPR2L __attribute__((address(0x01B)));

__asm("CCPR2L equ 01Bh");




extern volatile unsigned char CCPR2H __attribute__((address(0x01C)));

__asm("CCPR2H equ 01Ch");




extern volatile unsigned char CCP2CON __attribute__((address(0x01D)));

__asm("CCP2CON equ 01Dh");


typedef union {
    struct {
        unsigned CCP2M :4;
        unsigned CCP2Y :1;
        unsigned CCP2X :1;
    };
    struct {
        unsigned CCP2M0 :1;
        unsigned CCP2M1 :1;
        unsigned CCP2M2 :1;
        unsigned CCP2M3 :1;
    };
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __attribute__((address(0x01D)));
# 1152 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char ADRESH __attribute__((address(0x01E)));

__asm("ADRESH equ 01Eh");




extern volatile unsigned char ADCON0 __attribute__((address(0x01F)));

__asm("ADCON0 equ 01Fh");


typedef union {
    struct {
        unsigned ADON :1;
        unsigned :1;
        unsigned GO_nDONE :1;
        unsigned CHS :3;
        unsigned ADCS :2;
    };
    struct {
        unsigned :2;
        unsigned GO :1;
        unsigned CHS0 :1;
        unsigned CHS1 :1;
        unsigned CHS2 :1;
        unsigned ADCS0 :1;
        unsigned ADCS1 :1;
    };
    struct {
        unsigned :2;
        unsigned nDONE :1;
    };
    struct {
        unsigned :2;
        unsigned GO_DONE :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0x01F)));
# 1255 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char OPTION_REG __attribute__((address(0x081)));

__asm("OPTION_REG equ 081h");


typedef union {
    struct {
        unsigned PS :3;
        unsigned PSA :1;
        unsigned T0SE :1;
        unsigned T0CS :1;
        unsigned INTEDG :1;
        unsigned nRBPU :1;
    };
    struct {
        unsigned PS0 :1;
        unsigned PS1 :1;
        unsigned PS2 :1;
    };
} OPTION_REGbits_t;
extern volatile OPTION_REGbits_t OPTION_REGbits __attribute__((address(0x081)));
# 1325 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char TRISA __attribute__((address(0x085)));

__asm("TRISA equ 085h");


typedef union {
    struct {
        unsigned TRISA0 :1;
        unsigned TRISA1 :1;
        unsigned TRISA2 :1;
        unsigned TRISA3 :1;
        unsigned TRISA4 :1;
        unsigned TRISA5 :1;
    };
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __attribute__((address(0x085)));
# 1375 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char TRISB __attribute__((address(0x086)));

__asm("TRISB equ 086h");


typedef union {
    struct {
        unsigned TRISB0 :1;
        unsigned TRISB1 :1;
        unsigned TRISB2 :1;
        unsigned TRISB3 :1;
        unsigned TRISB4 :1;
        unsigned TRISB5 :1;
        unsigned TRISB6 :1;
        unsigned TRISB7 :1;
    };
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __attribute__((address(0x086)));
# 1437 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char TRISC __attribute__((address(0x087)));

__asm("TRISC equ 087h");


typedef union {
    struct {
        unsigned TRISC0 :1;
        unsigned TRISC1 :1;
        unsigned TRISC2 :1;
        unsigned TRISC3 :1;
        unsigned TRISC4 :1;
        unsigned TRISC5 :1;
        unsigned TRISC6 :1;
        unsigned TRISC7 :1;
    };
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __attribute__((address(0x087)));
# 1499 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char TRISD __attribute__((address(0x088)));

__asm("TRISD equ 088h");


typedef union {
    struct {
        unsigned TRISD0 :1;
        unsigned TRISD1 :1;
        unsigned TRISD2 :1;
        unsigned TRISD3 :1;
        unsigned TRISD4 :1;
        unsigned TRISD5 :1;
        unsigned TRISD6 :1;
        unsigned TRISD7 :1;
    };
} TRISDbits_t;
extern volatile TRISDbits_t TRISDbits __attribute__((address(0x088)));
# 1561 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char TRISE __attribute__((address(0x089)));

__asm("TRISE equ 089h");


typedef union {
    struct {
        unsigned TRISE0 :1;
        unsigned TRISE1 :1;
        unsigned TRISE2 :1;
        unsigned :1;
        unsigned PSPMODE :1;
        unsigned IBOV :1;
        unsigned OBF :1;
        unsigned IBF :1;
    };
} TRISEbits_t;
extern volatile TRISEbits_t TRISEbits __attribute__((address(0x089)));
# 1618 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char PIE1 __attribute__((address(0x08C)));

__asm("PIE1 equ 08Ch");


typedef union {
    struct {
        unsigned TMR1IE :1;
        unsigned TMR2IE :1;
        unsigned CCP1IE :1;
        unsigned SSPIE :1;
        unsigned TXIE :1;
        unsigned RCIE :1;
        unsigned ADIE :1;
        unsigned PSPIE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0x08C)));
# 1680 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char PIE2 __attribute__((address(0x08D)));

__asm("PIE2 equ 08Dh");


typedef union {
    struct {
        unsigned CCP2IE :1;
        unsigned :2;
        unsigned BCLIE :1;
        unsigned EEIE :1;
        unsigned :1;
        unsigned CMIE :1;
    };
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __attribute__((address(0x08D)));
# 1720 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char PCON __attribute__((address(0x08E)));

__asm("PCON equ 08Eh");


typedef union {
    struct {
        unsigned nBOR :1;
        unsigned nPOR :1;
    };
    struct {
        unsigned nBO :1;
    };
} PCONbits_t;
extern volatile PCONbits_t PCONbits __attribute__((address(0x08E)));
# 1754 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char SSPCON2 __attribute__((address(0x091)));

__asm("SSPCON2 equ 091h");


typedef union {
    struct {
        unsigned SEN :1;
        unsigned RSEN :1;
        unsigned PEN :1;
        unsigned RCEN :1;
        unsigned ACKEN :1;
        unsigned ACKDT :1;
        unsigned ACKSTAT :1;
        unsigned GCEN :1;
    };
} SSPCON2bits_t;
extern volatile SSPCON2bits_t SSPCON2bits __attribute__((address(0x091)));
# 1816 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char PR2 __attribute__((address(0x092)));

__asm("PR2 equ 092h");




extern volatile unsigned char SSPADD __attribute__((address(0x093)));

__asm("SSPADD equ 093h");




extern volatile unsigned char SSPSTAT __attribute__((address(0x094)));

__asm("SSPSTAT equ 094h");


typedef union {
    struct {
        unsigned BF :1;
        unsigned UA :1;
        unsigned R_nW :1;
        unsigned S :1;
        unsigned P :1;
        unsigned D_nA :1;
        unsigned CKE :1;
        unsigned SMP :1;
    };
    struct {
        unsigned :2;
        unsigned R :1;
        unsigned :2;
        unsigned D :1;
    };
    struct {
        unsigned :2;
        unsigned I2C_READ :1;
        unsigned I2C_START :1;
        unsigned I2C_STOP :1;
        unsigned I2C_DATA :1;
    };
    struct {
        unsigned :2;
        unsigned nW :1;
        unsigned :2;
        unsigned nA :1;
    };
    struct {
        unsigned :2;
        unsigned nWRITE :1;
        unsigned :2;
        unsigned nADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned R_W :1;
        unsigned :2;
        unsigned D_A :1;
    };
    struct {
        unsigned :2;
        unsigned READ_WRITE :1;
        unsigned :2;
        unsigned DATA_ADDRESS :1;
    };
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __attribute__((address(0x094)));
# 1999 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char TXSTA __attribute__((address(0x098)));

__asm("TXSTA equ 098h");


typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
    struct {
        unsigned TXD8 :1;
        unsigned :5;
        unsigned nTX8 :1;
    };
    struct {
        unsigned :6;
        unsigned TX8_9 :1;
    };
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __attribute__((address(0x098)));
# 2080 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char SPBRG __attribute__((address(0x099)));

__asm("SPBRG equ 099h");




extern volatile unsigned char CMCON __attribute__((address(0x09C)));

__asm("CMCON equ 09Ch");


typedef union {
    struct {
        unsigned CM :3;
        unsigned CIS :1;
        unsigned C1INV :1;
        unsigned C2INV :1;
        unsigned C1OUT :1;
        unsigned C2OUT :1;
    };
    struct {
        unsigned CM0 :1;
        unsigned CM1 :1;
        unsigned CM2 :1;
    };
} CMCONbits_t;
extern volatile CMCONbits_t CMCONbits __attribute__((address(0x09C)));
# 2157 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char CVRCON __attribute__((address(0x09D)));

__asm("CVRCON equ 09Dh");


typedef union {
    struct {
        unsigned CVR :4;
        unsigned :1;
        unsigned CVRR :1;
        unsigned CVROE :1;
        unsigned CVREN :1;
    };
    struct {
        unsigned CVR0 :1;
        unsigned CVR1 :1;
        unsigned CVR2 :1;
        unsigned CVR3 :1;
    };
} CVRCONbits_t;
extern volatile CVRCONbits_t CVRCONbits __attribute__((address(0x09D)));
# 2222 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char ADRESL __attribute__((address(0x09E)));

__asm("ADRESL equ 09Eh");




extern volatile unsigned char ADCON1 __attribute__((address(0x09F)));

__asm("ADCON1 equ 09Fh");


typedef union {
    struct {
        unsigned PCFG :4;
        unsigned :2;
        unsigned ADCS2 :1;
        unsigned ADFM :1;
    };
    struct {
        unsigned PCFG0 :1;
        unsigned PCFG1 :1;
        unsigned PCFG2 :1;
        unsigned PCFG3 :1;
    };
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __attribute__((address(0x09F)));
# 2288 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char EEDATA __attribute__((address(0x10C)));

__asm("EEDATA equ 010Ch");




extern volatile unsigned char EEADR __attribute__((address(0x10D)));

__asm("EEADR equ 010Dh");




extern volatile unsigned char EEDATH __attribute__((address(0x10E)));

__asm("EEDATH equ 010Eh");




extern volatile unsigned char EEADRH __attribute__((address(0x10F)));

__asm("EEADRH equ 010Fh");




extern volatile unsigned char EECON1 __attribute__((address(0x18C)));

__asm("EECON1 equ 018Ch");


typedef union {
    struct {
        unsigned RD :1;
        unsigned WR :1;
        unsigned WREN :1;
        unsigned WRERR :1;
        unsigned :3;
        unsigned EEPGD :1;
    };
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __attribute__((address(0x18C)));
# 2361 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile unsigned char EECON2 __attribute__((address(0x18D)));

__asm("EECON2 equ 018Dh");
# 2374 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/proc/pic16f877a.h" 3
extern volatile __bit ACKDT __attribute__((address(0x48D)));


extern volatile __bit ACKEN __attribute__((address(0x48C)));


extern volatile __bit ACKSTAT __attribute__((address(0x48E)));


extern volatile __bit ADCS0 __attribute__((address(0xFE)));


extern volatile __bit ADCS1 __attribute__((address(0xFF)));


extern volatile __bit ADCS2 __attribute__((address(0x4FE)));


extern volatile __bit ADDEN __attribute__((address(0xC3)));


extern volatile __bit ADFM __attribute__((address(0x4FF)));


extern volatile __bit ADIE __attribute__((address(0x466)));


extern volatile __bit ADIF __attribute__((address(0x66)));


extern volatile __bit ADON __attribute__((address(0xF8)));


extern volatile __bit BCLIE __attribute__((address(0x46B)));


extern volatile __bit BCLIF __attribute__((address(0x6B)));


extern volatile __bit BF __attribute__((address(0x4A0)));


extern volatile __bit BRGH __attribute__((address(0x4C2)));


extern volatile __bit C1INV __attribute__((address(0x4E4)));


extern volatile __bit C1OUT __attribute__((address(0x4E6)));


extern volatile __bit C2INV __attribute__((address(0x4E5)));


extern volatile __bit C2OUT __attribute__((address(0x4E7)));


extern volatile __bit CARRY __attribute__((address(0x18)));


extern volatile __bit CCP1IE __attribute__((address(0x462)));


extern volatile __bit CCP1IF __attribute__((address(0x62)));


extern volatile __bit CCP1M0 __attribute__((address(0xB8)));


extern volatile __bit CCP1M1 __attribute__((address(0xB9)));


extern volatile __bit CCP1M2 __attribute__((address(0xBA)));


extern volatile __bit CCP1M3 __attribute__((address(0xBB)));


extern volatile __bit CCP1X __attribute__((address(0xBD)));


extern volatile __bit CCP1Y __attribute__((address(0xBC)));


extern volatile __bit CCP2IE __attribute__((address(0x468)));


extern volatile __bit CCP2IF __attribute__((address(0x68)));


extern volatile __bit CCP2M0 __attribute__((address(0xE8)));


extern volatile __bit CCP2M1 __attribute__((address(0xE9)));


extern volatile __bit CCP2M2 __attribute__((address(0xEA)));


extern volatile __bit CCP2M3 __attribute__((address(0xEB)));


extern volatile __bit CCP2X __attribute__((address(0xED)));


extern volatile __bit CCP2Y __attribute__((address(0xEC)));


extern volatile __bit CHS0 __attribute__((address(0xFB)));


extern volatile __bit CHS1 __attribute__((address(0xFC)));


extern volatile __bit CHS2 __attribute__((address(0xFD)));


extern volatile __bit CIS __attribute__((address(0x4E3)));


extern volatile __bit CKE __attribute__((address(0x4A6)));


extern volatile __bit CKP __attribute__((address(0xA4)));


extern volatile __bit CM0 __attribute__((address(0x4E0)));


extern volatile __bit CM1 __attribute__((address(0x4E1)));


extern volatile __bit CM2 __attribute__((address(0x4E2)));


extern volatile __bit CMIE __attribute__((address(0x46E)));


extern volatile __bit CMIF __attribute__((address(0x6E)));


extern volatile __bit CREN __attribute__((address(0xC4)));


extern volatile __bit CSRC __attribute__((address(0x4C7)));


extern volatile __bit CVR0 __attribute__((address(0x4E8)));


extern volatile __bit CVR1 __attribute__((address(0x4E9)));


extern volatile __bit CVR2 __attribute__((address(0x4EA)));


extern volatile __bit CVR3 __attribute__((address(0x4EB)));


extern volatile __bit CVREN __attribute__((address(0x4EF)));


extern volatile __bit CVROE __attribute__((address(0x4EE)));


extern volatile __bit CVRR __attribute__((address(0x4ED)));


extern volatile __bit DATA_ADDRESS __attribute__((address(0x4A5)));


extern volatile __bit DC __attribute__((address(0x19)));


extern volatile __bit D_A __attribute__((address(0x4A5)));


extern volatile __bit D_nA __attribute__((address(0x4A5)));


extern volatile __bit EEIE __attribute__((address(0x46C)));


extern volatile __bit EEIF __attribute__((address(0x6C)));


extern volatile __bit EEPGD __attribute__((address(0xC67)));


extern volatile __bit FERR __attribute__((address(0xC2)));


extern volatile __bit GCEN __attribute__((address(0x48F)));


extern volatile __bit GIE __attribute__((address(0x5F)));


extern volatile __bit GO __attribute__((address(0xFA)));


extern volatile __bit GO_DONE __attribute__((address(0xFA)));


extern volatile __bit GO_nDONE __attribute__((address(0xFA)));


extern volatile __bit I2C_DATA __attribute__((address(0x4A5)));


extern volatile __bit I2C_READ __attribute__((address(0x4A2)));


extern volatile __bit I2C_START __attribute__((address(0x4A3)));


extern volatile __bit I2C_STOP __attribute__((address(0x4A4)));


extern volatile __bit IBF __attribute__((address(0x44F)));


extern volatile __bit IBOV __attribute__((address(0x44D)));


extern volatile __bit INTE __attribute__((address(0x5C)));


extern volatile __bit INTEDG __attribute__((address(0x40E)));


extern volatile __bit INTF __attribute__((address(0x59)));


extern volatile __bit IRP __attribute__((address(0x1F)));


extern volatile __bit OBF __attribute__((address(0x44E)));


extern volatile __bit OERR __attribute__((address(0xC1)));


extern volatile __bit PCFG0 __attribute__((address(0x4F8)));


extern volatile __bit PCFG1 __attribute__((address(0x4F9)));


extern volatile __bit PCFG2 __attribute__((address(0x4FA)));


extern volatile __bit PCFG3 __attribute__((address(0x4FB)));


extern volatile __bit PEIE __attribute__((address(0x5E)));


extern volatile __bit PEN __attribute__((address(0x48A)));


extern volatile __bit PS0 __attribute__((address(0x408)));


extern volatile __bit PS1 __attribute__((address(0x409)));


extern volatile __bit PS2 __attribute__((address(0x40A)));


extern volatile __bit PSA __attribute__((address(0x40B)));


extern volatile __bit PSPIE __attribute__((address(0x467)));


extern volatile __bit PSPIF __attribute__((address(0x67)));


extern volatile __bit PSPMODE __attribute__((address(0x44C)));


extern volatile __bit RA0 __attribute__((address(0x28)));


extern volatile __bit RA1 __attribute__((address(0x29)));


extern volatile __bit RA2 __attribute__((address(0x2A)));


extern volatile __bit RA3 __attribute__((address(0x2B)));


extern volatile __bit RA4 __attribute__((address(0x2C)));


extern volatile __bit RA5 __attribute__((address(0x2D)));


extern volatile __bit RB0 __attribute__((address(0x30)));


extern volatile __bit RB1 __attribute__((address(0x31)));


extern volatile __bit RB2 __attribute__((address(0x32)));


extern volatile __bit RB3 __attribute__((address(0x33)));


extern volatile __bit RB4 __attribute__((address(0x34)));


extern volatile __bit RB5 __attribute__((address(0x35)));


extern volatile __bit RB6 __attribute__((address(0x36)));


extern volatile __bit RB7 __attribute__((address(0x37)));


extern volatile __bit RBIE __attribute__((address(0x5B)));


extern volatile __bit RBIF __attribute__((address(0x58)));


extern volatile __bit RC0 __attribute__((address(0x38)));


extern volatile __bit RC1 __attribute__((address(0x39)));


extern volatile __bit RC2 __attribute__((address(0x3A)));


extern volatile __bit RC3 __attribute__((address(0x3B)));


extern volatile __bit RC4 __attribute__((address(0x3C)));


extern volatile __bit RC5 __attribute__((address(0x3D)));


extern volatile __bit RC6 __attribute__((address(0x3E)));


extern volatile __bit RC7 __attribute__((address(0x3F)));


extern volatile __bit RC8_9 __attribute__((address(0xC6)));


extern volatile __bit RC9 __attribute__((address(0xC6)));


extern volatile __bit RCD8 __attribute__((address(0xC0)));


extern volatile __bit RCEN __attribute__((address(0x48B)));


extern volatile __bit RCIE __attribute__((address(0x465)));


extern volatile __bit RCIF __attribute__((address(0x65)));


extern volatile __bit RD __attribute__((address(0xC60)));


extern volatile __bit RD0 __attribute__((address(0x40)));


extern volatile __bit RD1 __attribute__((address(0x41)));


extern volatile __bit RD2 __attribute__((address(0x42)));


extern volatile __bit RD3 __attribute__((address(0x43)));


extern volatile __bit RD4 __attribute__((address(0x44)));


extern volatile __bit RD5 __attribute__((address(0x45)));


extern volatile __bit RD6 __attribute__((address(0x46)));


extern volatile __bit RD7 __attribute__((address(0x47)));


extern volatile __bit RE0 __attribute__((address(0x48)));


extern volatile __bit RE1 __attribute__((address(0x49)));


extern volatile __bit RE2 __attribute__((address(0x4A)));


extern volatile __bit READ_WRITE __attribute__((address(0x4A2)));


extern volatile __bit RP0 __attribute__((address(0x1D)));


extern volatile __bit RP1 __attribute__((address(0x1E)));


extern volatile __bit RSEN __attribute__((address(0x489)));


extern volatile __bit RX9 __attribute__((address(0xC6)));


extern volatile __bit RX9D __attribute__((address(0xC0)));


extern volatile __bit R_W __attribute__((address(0x4A2)));


extern volatile __bit R_nW __attribute__((address(0x4A2)));


extern volatile __bit SEN __attribute__((address(0x488)));


extern volatile __bit SMP __attribute__((address(0x4A7)));


extern volatile __bit SPEN __attribute__((address(0xC7)));


extern volatile __bit SREN __attribute__((address(0xC5)));


extern volatile __bit SSPEN __attribute__((address(0xA5)));


extern volatile __bit SSPIE __attribute__((address(0x463)));


extern volatile __bit SSPIF __attribute__((address(0x63)));


extern volatile __bit SSPM0 __attribute__((address(0xA0)));


extern volatile __bit SSPM1 __attribute__((address(0xA1)));


extern volatile __bit SSPM2 __attribute__((address(0xA2)));


extern volatile __bit SSPM3 __attribute__((address(0xA3)));


extern volatile __bit SSPOV __attribute__((address(0xA6)));


extern volatile __bit SYNC __attribute__((address(0x4C4)));


extern volatile __bit T0CS __attribute__((address(0x40D)));


extern volatile __bit T0IE __attribute__((address(0x5D)));


extern volatile __bit T0IF __attribute__((address(0x5A)));


extern volatile __bit T0SE __attribute__((address(0x40C)));


extern volatile __bit T1CKPS0 __attribute__((address(0x84)));


extern volatile __bit T1CKPS1 __attribute__((address(0x85)));


extern volatile __bit T1INSYNC __attribute__((address(0x82)));


extern volatile __bit T1OSCEN __attribute__((address(0x83)));


extern volatile __bit T1SYNC __attribute__((address(0x82)));


extern volatile __bit T2CKPS0 __attribute__((address(0x90)));


extern volatile __bit T2CKPS1 __attribute__((address(0x91)));


extern volatile __bit TMR0IE __attribute__((address(0x5D)));


extern volatile __bit TMR0IF __attribute__((address(0x5A)));


extern volatile __bit TMR1CS __attribute__((address(0x81)));


extern volatile __bit TMR1IE __attribute__((address(0x460)));


extern volatile __bit TMR1IF __attribute__((address(0x60)));


extern volatile __bit TMR1ON __attribute__((address(0x80)));


extern volatile __bit TMR2IE __attribute__((address(0x461)));


extern volatile __bit TMR2IF __attribute__((address(0x61)));


extern volatile __bit TMR2ON __attribute__((address(0x92)));


extern volatile __bit TOUTPS0 __attribute__((address(0x93)));


extern volatile __bit TOUTPS1 __attribute__((address(0x94)));


extern volatile __bit TOUTPS2 __attribute__((address(0x95)));


extern volatile __bit TOUTPS3 __attribute__((address(0x96)));


extern volatile __bit TRISA0 __attribute__((address(0x428)));


extern volatile __bit TRISA1 __attribute__((address(0x429)));


extern volatile __bit TRISA2 __attribute__((address(0x42A)));


extern volatile __bit TRISA3 __attribute__((address(0x42B)));


extern volatile __bit TRISA4 __attribute__((address(0x42C)));


extern volatile __bit TRISA5 __attribute__((address(0x42D)));


extern volatile __bit TRISB0 __attribute__((address(0x430)));


extern volatile __bit TRISB1 __attribute__((address(0x431)));


extern volatile __bit TRISB2 __attribute__((address(0x432)));


extern volatile __bit TRISB3 __attribute__((address(0x433)));


extern volatile __bit TRISB4 __attribute__((address(0x434)));


extern volatile __bit TRISB5 __attribute__((address(0x435)));


extern volatile __bit TRISB6 __attribute__((address(0x436)));


extern volatile __bit TRISB7 __attribute__((address(0x437)));


extern volatile __bit TRISC0 __attribute__((address(0x438)));


extern volatile __bit TRISC1 __attribute__((address(0x439)));


extern volatile __bit TRISC2 __attribute__((address(0x43A)));


extern volatile __bit TRISC3 __attribute__((address(0x43B)));


extern volatile __bit TRISC4 __attribute__((address(0x43C)));


extern volatile __bit TRISC5 __attribute__((address(0x43D)));


extern volatile __bit TRISC6 __attribute__((address(0x43E)));


extern volatile __bit TRISC7 __attribute__((address(0x43F)));


extern volatile __bit TRISD0 __attribute__((address(0x440)));


extern volatile __bit TRISD1 __attribute__((address(0x441)));


extern volatile __bit TRISD2 __attribute__((address(0x442)));


extern volatile __bit TRISD3 __attribute__((address(0x443)));


extern volatile __bit TRISD4 __attribute__((address(0x444)));


extern volatile __bit TRISD5 __attribute__((address(0x445)));


extern volatile __bit TRISD6 __attribute__((address(0x446)));


extern volatile __bit TRISD7 __attribute__((address(0x447)));


extern volatile __bit TRISE0 __attribute__((address(0x448)));


extern volatile __bit TRISE1 __attribute__((address(0x449)));


extern volatile __bit TRISE2 __attribute__((address(0x44A)));


extern volatile __bit TRMT __attribute__((address(0x4C1)));


extern volatile __bit TX8_9 __attribute__((address(0x4C6)));


extern volatile __bit TX9 __attribute__((address(0x4C6)));


extern volatile __bit TX9D __attribute__((address(0x4C0)));


extern volatile __bit TXD8 __attribute__((address(0x4C0)));


extern volatile __bit TXEN __attribute__((address(0x4C5)));


extern volatile __bit TXIE __attribute__((address(0x464)));


extern volatile __bit TXIF __attribute__((address(0x64)));


extern volatile __bit UA __attribute__((address(0x4A1)));


extern volatile __bit WCOL __attribute__((address(0xA7)));


extern volatile __bit WR __attribute__((address(0xC61)));


extern volatile __bit WREN __attribute__((address(0xC62)));


extern volatile __bit WRERR __attribute__((address(0xC63)));


extern volatile __bit ZERO __attribute__((address(0x1A)));


extern volatile __bit nA __attribute__((address(0x4A5)));


extern volatile __bit nADDRESS __attribute__((address(0x4A5)));


extern volatile __bit nBO __attribute__((address(0x470)));


extern volatile __bit nBOR __attribute__((address(0x470)));


extern volatile __bit nDONE __attribute__((address(0xFA)));


extern volatile __bit nPD __attribute__((address(0x1B)));


extern volatile __bit nPOR __attribute__((address(0x471)));


extern volatile __bit nRBPU __attribute__((address(0x40F)));


extern volatile __bit nRC8 __attribute__((address(0xC6)));


extern volatile __bit nT1SYNC __attribute__((address(0x82)));


extern volatile __bit nTO __attribute__((address(0x1C)));


extern volatile __bit nTX8 __attribute__((address(0x4C6)));


extern volatile __bit nW __attribute__((address(0x4A2)));


extern volatile __bit nWRITE __attribute__((address(0x4A2)));
# 664 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/pic_chip_select.h" 2 3
# 14 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/pic.h" 2 3
# 30 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/pic.h" 3
#pragma intrinsic(__nop)
extern void __nop(void);
# 78 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/pic.h" 3
__attribute__((__unsupported__("The " "FLASH_READ" " macro function is no longer supported. Please use the MPLAB X MCC."))) unsigned char __flash_read(unsigned short addr);

__attribute__((__unsupported__("The " "FLASH_WRITE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_write(unsigned short addr, unsigned short data);

__attribute__((__unsupported__("The " "FLASH_ERASE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_erase(unsigned short addr);



# 1 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/eeprom_routines.h" 1 3
# 114 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/eeprom_routines.h" 3
extern void eeprom_write(unsigned char addr, unsigned char value);
extern unsigned char eeprom_read(unsigned char addr);
# 86 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/pic.h" 2 3





#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(unsigned long);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(unsigned long);
# 137 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/pic.h" 3
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;
# 28 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/xc.h" 2 3
# 1 "helper.c" 2

# 1 "./main.h" 1
# 10 "./main.h"
# 1 "/opt/microchip/xc8/v2.32/pic/include/c90/string.h" 1 3





# 1 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/__size_t.h" 1 3



typedef unsigned size_t;
# 7 "/opt/microchip/xc8/v2.32/pic/include/c90/string.h" 2 3
# 1 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/__null.h" 1 3
# 8 "/opt/microchip/xc8/v2.32/pic/include/c90/string.h" 2 3






extern void * memcpy(void *, const void *, size_t);
extern void * memmove(void *, const void *, size_t);
extern void * memset(void *, int, size_t);
# 36 "/opt/microchip/xc8/v2.32/pic/include/c90/string.h" 3
extern char * strcat(char *, const char *);
extern char * strcpy(char *, const char *);
extern char * strncat(char *, const char *, size_t);
extern char * strncpy(char *, const char *, size_t);
extern char * strdup(const char *);
extern char * strtok(char *, const char *);


extern int memcmp(const void *, const void *, size_t);
extern int strcmp(const char *, const char *);
extern int stricmp(const char *, const char *);
extern int strncmp(const char *, const char *, size_t);
extern int strnicmp(const char *, const char *, size_t);
extern void * memchr(const void *, int, size_t);
extern size_t strcspn(const char *, const char *);
extern char * strpbrk(const char *, const char *);
extern size_t strspn(const char *, const char *);
extern char * strstr(const char *, const char *);
extern char * stristr(const char *, const char *);
extern char * strerror(int);
extern size_t strlen(const char *);
extern char * strchr(const char *, int);
extern char * strichr(const char *, int);
extern char * strrchr(const char *, int);
extern char * strrichr(const char *, int);
# 10 "./main.h" 2
# 2 "helper.c" 2

# 1 "./helper.h" 1
# 11 "./helper.h"
void log_car_event (char *event ,unsigned short speed);
void get_time(void);
void display_time(void);
unsigned char download_log(unsigned char reset_download);
void display_dash_board( char event[], unsigned short speed);
char login(unsigned char key, char reset_password );
void get_password(void);
int login_menu(unsigned char key, unsigned char reset_menu);
void view_log(unsigned char key, unsigned char reset_shift);
char clear_log (unsigned char reset_memory);
char set_time( unsigned char key ,unsigned char reset_time );
char change_password(unsigned char key, char reset_pwd );
char confirm_change_password(unsigned char key, unsigned char* changed_password);
# 3 "helper.c" 2

# 1 "./ds1307.h" 1
# 16 "./ds1307.h"
void init_ds1307(void);
void write_ds1307(unsigned char address1, unsigned char data);
unsigned char read_ds1307(unsigned char address1);
# 4 "helper.c" 2

# 1 "./clcd.h" 1
# 40 "./clcd.h"
void init_clcd(void);
void clcd_print(const char *data, unsigned char addr);
void clcd_putch(const char data, unsigned char addr);
void clcd_write(unsigned char byte, unsigned char mode);
# 5 "helper.c" 2

# 1 "./at24c04.h" 1



# 1 "./i2c.h" 1



void init_i2c(void);
void i2c_wait_for_idle(void);
void i2c_start(void);
void i2c_rep_start(void);
void i2c_stop(void);
int i2c_read(unsigned char ack);
unsigned char i2c_write(unsigned char i2c_write_data);
# 5 "./at24c04.h" 2
# 1 "./delay.h" 1
# 51 "./delay.h"
extern void delay_ms(unsigned char);
# 6 "./at24c04.h" 2





unsigned char eeprom_at24c04_random_read(unsigned char memory_loc);
void eeprom_at24c04_byte_write(unsigned char memory_loc, unsigned char data);
void eeprom_at24c04_str_write(unsigned char memory_loc, char *data);
# 6 "helper.c" 2

# 1 "./digital_keypad.h" 1
# 30 "./digital_keypad.h"
unsigned char read_digital_keypad(unsigned char mode);
void init_digital_keypad(void);
# 7 "helper.c" 2

# 1 "./uart.h" 1
# 11 "./uart.h"
void init_uart(unsigned long baud);
void putchar(unsigned char data);
void puts(const char* s);
unsigned char getchar(void);
# 8 "helper.c" 2



unsigned char clock_reg[3];
unsigned char time[7];

extern int sec , return_time;
int flag;
char *menu[]= { "View Log", "Clear Log", "Download Log","Set Time", "Change Paswd" };
char overflow = 0;
char log[11];
static int pos = -1;
int access = -1;

char spassword[5];

void display_dash_board( char event[], unsigned short speed)
{
 clcd_print("  TIME  EVNT  SP", (0x80 + (0)));
    get_time();
    display_time();
    clcd_putch(' ',(0xC0 + (8)));
    clcd_print(event, (0xC0 + (9)));
    clcd_putch(' ',(0xC0 + (12)));
    clcd_putch('0' + (speed / 10), (0xC0 + (14)));
    clcd_putch('0' + (speed % 10), (0xC0 + (15)));
}


void display_time(void)
{
 clcd_putch(time[0],(0xC0 + (0)));
 clcd_putch(time[1],(0xC0 + (1)));
 clcd_putch(':',(0xC0 + (2)));
 clcd_putch(time[2],(0xC0 + (3)));
 clcd_putch(time[3],(0xC0 + (4)));
 clcd_putch(':',(0xC0 + (5)));
 clcd_putch(time[4],(0xC0 + (6)));
 clcd_putch(time[5],(0xC0 + (7)));
}

void get_time(void)
{
 clock_reg[0] = read_ds1307(0x02);
 clock_reg[1] = read_ds1307(0x01);
 clock_reg[2] = read_ds1307(0x00);

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


void get_password(void)
{

 for (int i = 0; i < 4; i++)
    {
        spassword[i] = eeprom_at24c04_random_read(i);
    }
}

char login(unsigned char key, char reset_password)
{

    static char npassword[4];
    static unsigned char i;
    static unsigned char attempt_remaining;
    if (reset_password == 0x01)
    {
        npassword[0] = 0;
        npassword[1] = 0;
        npassword[2] = 0;
        npassword[3] = 0;
        i = 0;
        attempt_remaining = '3';

        return_time = 5;
        sec = 0;

        get_password();
        key = 0x00;

    }

    if (!return_time)
    {
        return 0x02;
    }

    if (i < 4 && key == 0x37)
    {
        return_time = 5;
        npassword[i] = '0';
        clcd_putch('*', (0xC0 + (i+6)));
        i++;
    }
    else if (i < 4 && key == 0x2F)
    {
        return_time = 5;
        npassword[i] = '1';
        clcd_putch('*', (0xC0 + (i+6)));
        i++;
    }

    else if (i == 4)
    {
        get_password();
        if (strncmp(spassword, npassword, 4) == 0)
        {
            clcd_write(0x01, 0);
            return 0x01;
        }

        else
        {

            if (--attempt_remaining == '0')
            {
                clcd_write(0x01, 0);
                clcd_print("You are locked", (0x80 + (0)));
                clcd_print("Wait .. 60 sec", (0xC0 + (0)));
                sec = 60;

                clcd_write(0x0C, 0);
                while (sec)
                {
                    clcd_putch('0' + (sec / 10), (0xC0 + (8)));
                    clcd_putch('0' + (sec % 10), (0xC0 + (9)));
                }

                attempt_remaining = '3';

                clcd_write(0x0F, 0);
            }
            else
            {
                clcd_write(0x01, 0);
                clcd_print("WRONG PASSWORD", (0x80 + (1)));
                clcd_putch(attempt_remaining, (0xC0 + (0)));
                clcd_print("Attempt Left", (0xC0 + (2)));

                sec = 3;
                while(sec);
            }
            clcd_write(0x01, 0);
            clcd_print("Enter Password", (0x80 + (1)));
            return_time = 5;
            i = 0;
        }
    }
    return 0x10;

}


int login_menu(unsigned char key, unsigned char reset_menu)
{
 static int menu_pos = 0, select_pos = 1;
    if (reset_menu == 0x02)
    {
        menu_pos = 0;
        select_pos = 1;
    }
    if (key == 0x2F && menu_pos < 4)
    {
        menu_pos++;
        if (select_pos < 2)
            select_pos++;
        clcd_write(0x01, 0);
    }
    if (key == 0x37 && menu_pos > 0)
    {
        menu_pos--;
         if (select_pos > 1)
            select_pos--;
        clcd_write(0x01, 0);
    }
    if (select_pos == 1)
    {
        clcd_putch('*', (0x80 + (0)));
        clcd_print(menu[menu_pos], (0x80 + (2)));
        clcd_print(menu[menu_pos + 1], (0xC0 + (2)));
    }
    else if (select_pos == 2)
    {
        clcd_putch('*', (0xC0 + (0)));
        clcd_print(menu[menu_pos - 1], (0x80 + (2)));
        clcd_print(menu[menu_pos], (0xC0 + (2)));
    }
    return menu_pos;
}

void log_event( )
{
    char addr;

    if (++pos == 10)
    {
        pos = 0;
        overflow = 1;
    }

    addr = (pos * 10) + 5;

    eeprom_at24c04_str_write(addr, log);

    if (access < 9)
    {
        access++;
    }

}


void log_car_event (char *event ,unsigned short speed)
{

    get_time();

    strncpy(log, time, 6);

    strncpy(&log[6], event, 2);


    log[8] = (speed/10) + '0';
    log[9] = (speed % 10) + '0';
    log[10] = '\0';


    log_event();

}

void view_log(unsigned char key, unsigned char reset_shift)
{
    static int shift;
    char rlog[11];
    rlog[10] = 0;
    int rpos;
    unsigned char add;

    if (access == -1)
    {
        clcd_print("no logs available",(0xC0 + (0)));
    }
    else
    {
        if (reset_shift == 0x08)
        {
            shift = 0;
        }
        rpos = (overflow) ? (pos + 1) % 10 : 0;

        if (key == 0x37 && shift < access)
        {
            shift++;
        }
        else if (key == 0x2F && shift > 0)
        {
            shift--;
        }

        rpos = (rpos + shift) % 10;

        for (int i = 0; i < 10; i++)
        {
            add = rpos * 10 + 5 + i;
            rlog[i] = eeprom_at24c04_random_read(add);
        }
        clcd_putch(shift + '0', (0xC0 + (0)));

        clcd_putch(rlog[0], (0xC0 + (2)));
        clcd_putch(rlog[1], (0xC0 + (3)));
        clcd_putch(':', (0xC0 + (4)));
        clcd_putch(rlog[2], (0xC0 + (5)));
        clcd_putch(rlog[3], (0xC0 + (6)));
        clcd_putch(':', (0xC0 + (7)));
        clcd_putch(rlog[4], (0xC0 + (8)));
        clcd_putch(rlog[5], (0xC0 + (9)));


        clcd_putch(rlog[6], (0xC0 + (11)));
        clcd_putch(rlog[7], (0xC0 + (12)));


        clcd_putch(rlog[8], (0xC0 + (14)));
        clcd_putch(rlog[9], (0xC0 + (15)));
    }

}



char clear_log (unsigned char reset_memory)
{
    if (reset_memory == 0x04)
    {
        clcd_print("CLEAR LOG", (0x80 + (2)));
        clcd_print("Successful", (0xC0 + (2)));
        sec = 3;
        while(sec);
        pos = -1;
        access = -1;
        return 0x11;
    }
    return 0x22;
}



unsigned char download_log(unsigned char reset_download)
{
    static unsigned int read_pos;
    unsigned char read_data[10];
    int addr, i;
 if (reset_download == 0x03)
    {
        read_pos = 0;

        puts("\r\n# TIME   EVNT SP\n\r");
    }
    if (read_pos > access)
    {
        clcd_write(0x01, 0);
        sec = 3;
        while(sec)
        {
           clcd_print("Downloaded Logs", (0x80 + (0)));
        }
        return 0x11;
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

    return 0x10;
}

char set_time( unsigned char key ,unsigned char reset_time )
{
    static unsigned char pos, cursor_pos, set_flag, flag;
    static int wait = 0;
    static int num;
    if (reset_time == 0x10)
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
            clcd_putch(0xff,(0xC0 + (cursor_pos)));
        else
            clcd_putch(time[pos], (0xC0 + (cursor_pos)));
    }


    if(key == 0x37)
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
    else if (key == 0x2F)
    {
        cursor_pos--;
        pos--;
        if (pos > 5)
            pos = 5;


        if (cursor_pos == 2 || cursor_pos == 5)
            cursor_pos--;
        if(cursor_pos > 7)
            cursor_pos = 7;
        display_time();
    }
    if (set_flag == 1)
    {
        set_flag = 0;

        clock_reg[0] = 0x00;

        clock_reg[0] |= ((time[0] - '0') << 4) | (time[1] - '0');
        write_ds1307(0x02, clock_reg[0]);


        clock_reg[1] = 0x00;

        clock_reg[1] |= ((time[2] - '0') << 4) | (time[3] - '0');
        write_ds1307(0x01, clock_reg[1]);


        clock_reg[2] = 0x00;

        clock_reg[2] |= ((time[4] - '0') << 4) | (time[5] - '0');
        write_ds1307(0x00, clock_reg[2]);
    }
    return 0x11;
}
char change_password(unsigned char key, char reset_pwd )
{
 static unsigned char r_password[5];
    static unsigned int i;
    if (reset_pwd == 0x01)
    {
        r_password[0] = 0;
        r_password[1] = 0;
        r_password[2] = 0;
        r_password[3] = 0;
        r_password[4] = 0;

        i = 0;
        return_time = 5;
        sec = 0;
        key = 0x00;
        get_password();

        flag = 0;
    }

    if (!return_time)
    {
        return 0x02;
    }

    if (i < 4 && key == 0x37)
    {
        return_time = 5;
        r_password[i] = '0';
        clcd_putch('*', (0xC0 + (i+6)));
        i++;
    }
    else if (i < 4 && key == 0x2F)
    {
        return_time = 5;
        r_password[i] = '1';
        clcd_putch('*', (0xC0 + (i+6)));
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
        clcd_write(0x01, 0);
        i = 0;
        clcd_print("Confirm Passwrd", (0x80 + (1)));
        clcd_putch(' ', (0xC0 + (0)));
        clcd_write(0x0F, 0);
        sec = 0;
        return_time = 5;
        attempt_remaining = '3';
        flag = 1;
        key = 0x00;
    }

    if (!return_time)
    {
        return 0x02;
    }

    if (i < 4 && key == 0x37)
    {
        return_time = 5;
        confirmed_password[i] = '0';
        clcd_putch('*', (0xC0 + (i+6)));
        i++;
    }
    else if (i < 4 && key == 0x2F)
    {
        return_time = 5;
        confirmed_password[i] = '1';
        clcd_putch('*', (0xC0 + (i+6)));
        i++;
    }
    else if (i == 4)
    {
        if (strncmp(changed_password, confirmed_password, 4) == 0)
        {
            clcd_write(0x01, 0);
            sec = 3;
            clcd_write(0x0C, 0);
            while(sec)
            {
                clcd_print("Password Changed", (0x80 + (0)));
                clcd_print("Successfully", (0xC0 + (3)));
            }

            eeprom_at24c04_str_write(0x00, confirmed_password);
            return 0x11;
        }

        else
        {

            if (--attempt_remaining == '0')
            {
                clcd_write(0x01, 0);
                clcd_print("You are locked", (0x80 + (0)));
                clcd_print("Wait .. 60 sec", (0xC0 + (0)));
                sec = 30;

                clcd_write(0x0C, 0);
                while (sec)
                {
                    clcd_putch('0' + (sec / 10), (0xC0 + (8)));
                    clcd_putch('0' + (sec % 10), (0xC0 + (9)));
                }

                attempt_remaining = '3';

                clcd_write(0x0F, 0);
            }
            else
            {
                clcd_write(0x01, 0);
                clcd_print("Not matching", (0x80 + (1)));
                clcd_putch(attempt_remaining, (0xC0 + (0)));
                clcd_print("Attempts Left", (0xC0 + (2)));

                sec = 3;
                while(sec);
            }
            clcd_write(0x01, 0);
            clcd_print("Confirm Passwrd", (0x80 + (0)));
            return_time = 5;
            i = 0;
        }
    }
    return 0x10;
}