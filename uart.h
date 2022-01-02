/* 
 * File:   uart.h
 * Author: saud
 *
 * Created on 21 December, 2021, 7:17 PM
 */

#ifndef UART_H
#define	UART_H
#define FOSC 20000000
void init_uart(unsigned long baud);
void putchar(unsigned char data);
void puts(const char* s);
unsigned char getchar(void);
#endif	/* UART_H */

