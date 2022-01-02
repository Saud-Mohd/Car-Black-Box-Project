/* 
 * File:   main.h
 * Author: Saud
 *
 * Created on December 29, 2021, 6:32 AM
 */

#ifndef MAIN_H
#define	MAIN_H
#include <string.h>

#define RETURN_BACK            0x02
#define LOGIN_SUCCESS          0x01
#define TASK_SUCCESS           0x11
#define TASK_FAIL              0x22

#define DASH_BOARD_FLAG 		0x01
#define LOGIN_FLAG 				0x02
#define LOGIN_MENU_FLAG 		0x04
#define VEIW_LOG_FLAG	 		0x08
#define CLEAR_LOG_FLAG	 		0x10
#define DOWNLOAD_LOG_FLAG 		0x20
#define SET_TIME_FLAG	 		0x40
#define CHANGE_PASSWORD_FLAG 	0x80
#define RESET_NOTHING			0x00
#define RESET_PASSWORD			0x01
#define RESET_LOGIN_MENU		0x02
#define RESET_MEMORY			0x04
#define RESET_VIEW_LOG_POS		0x08
#define RESET_TIME				0x10
#define RESET_DOWNLOAD          0x03
#define LED1                    RD0

#endif	/* MAIN_H */

