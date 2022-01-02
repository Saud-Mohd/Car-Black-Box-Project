/* 
 * File:   helper.h
 * Author: Saud
 *
 * Created on December 29, 2021, 6:32 AM
 */

#ifndef HELPER_H
#define	HELPER_H

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
#endif	/* HELPER_H */

