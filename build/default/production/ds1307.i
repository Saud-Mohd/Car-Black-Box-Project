# 1 "ds1307.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8/pic/include/language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "ds1307.c" 2
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
# 2 "ds1307.c" 2
# 1 "./ds1307.h" 1
# 16 "./ds1307.h"
void init_ds1307(void);
void write_ds1307(unsigned char address1, unsigned char data);
unsigned char read_ds1307(unsigned char address1);
# 3 "ds1307.c" 2
# 1 "./i2c.h" 1



void init_i2c(void);
void i2c_wait_for_idle(void);
void i2c_start(void);
void i2c_rep_start(void);
void i2c_stop(void);
int i2c_read(unsigned char ack);
unsigned char i2c_write(unsigned char i2c_write_data);
# 4 "ds1307.c" 2







void init_ds1307(void)
{
 unsigned char dummy;

 dummy = read_ds1307(0x00);

 write_ds1307(0x00, dummy & 0x7F);

}

void write_ds1307(unsigned char address, unsigned char data)
{
 i2c_start();
 i2c_write(0xD0);
 i2c_write(address);
 i2c_write(data);
 i2c_stop();
}

unsigned char read_ds1307(unsigned char address)
{
 unsigned char data;

 i2c_start();
 i2c_write(0xD0);
 i2c_write(address);
 i2c_rep_start();
 i2c_write(0xD1);
 data = i2c_read(0);
 i2c_stop();

 return data;
}
