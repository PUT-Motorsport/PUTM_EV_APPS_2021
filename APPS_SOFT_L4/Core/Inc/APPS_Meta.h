/*
 * CAN_meta.h
 *
 *  Created on: Nov 23, 2020
 *      Author: kwitnoncy
 */

#ifndef INC_APPS_META_H_
#define INC_APPS_META_H_

#include <main.h>
static_assert(sizeof(int) == 4);


const int APPS_CAN_ID = 0x0A;
const int APPS_CAN_DLC = 2;


// global scope
CAN_TxHeaderTypeDef tx_header_apps_data{
		APPS_CAN_ID,
		0xFFF,
		CAN_ID_STD,
		CAN_RTR_DATA,
		APPS_CAN_DLC,
		DISABLE
};
uint32_t mail_data_apps = 0;

// tx_header_apps_data.StdId = APPS_CAN_ID;
// tx_header_apps_data.RTR = CAN_RTR_DATA;
// tx_header_apps_data.IDE = CAN_ID_STD;
// tx_header_apps_data.DLC = APPS_CAN_DLC;
// tx_header_apps_data.TransmitGlobalTime = DISABLE;



// const for apps sensor 1
const int APPS_1_RAW_MIN = 716;
const int APPS_1_RAW_MAX = 1660;
static_assert(APPS_1_RAW_MIN < APPS_1_RAW_MAX);
const int APPS_1_RAW_FULLSCALE = APPS_1_RAW_MAX - APPS_1_RAW_MIN;

// const for apps sensor 2
const int APPS_2_RAW_MIN = 938;
const int APPS_2_RAW_MAX = 1890;
static_assert(APPS_2_RAW_MIN < APPS_2_RAW_MAX);
const int APPS_2_RAW_FULLSCALE = APPS_2_RAW_MAX - APPS_2_RAW_MIN;

// const for apps scaled values
const int APPS_REAL_MIN = 0;
const int APPS_REAL_MAX = 500;
static_assert(APPS_REAL_MIN < APPS_REAL_MAX);
const int APPS_REAL_SCALE = APPS_REAL_MAX - APPS_REAL_MIN;


const float	scale_factor_1 = (float) (((float) APPS_1_RAW_MAX - (float) APPS_1_RAW_MIN) / (float) APPS_REAL_MAX);
const float	scale_factor_2 = (float) (((float) APPS_2_RAW_MAX - (float) APPS_2_RAW_MIN) / (float) APPS_REAL_MAX);

const float sensor_implausibility_factor = 0.1;

/*
	https://www.formulastudent.de/fileadmin/user_upload/all/2020/rules/FS-Rules_2020_V1.0.pdf
 */



#endif /* INC_APPS_META_H_ */
