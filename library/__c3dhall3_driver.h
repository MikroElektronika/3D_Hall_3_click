/*
    __c3dhall3_driver.h

-----------------------------------------------------------------------------

  This file is part of mikroSDK.
  
  Copyright (c) 2017, MikroElektonika - http://www.mikroe.com

  All rights reserved.

----------------------------------------------------------------------------- */

/**
@file   __c3dhall3_driver.h
@brief    3D_Hall_3 Driver
@mainpage 3D_Hall_3 Click
@{

@image html libstock_fb_view.jpg

@}

@defgroup   C3DHALL3
@brief      3D_Hall_3 Click Driver
@{

| Global Library Prefix | **C3DHALL3** |
|:---------------------:|:-----------------:|
| Version               | **1.0.0**    |
| Date                  | **Nov 2018.**      |
| Developer             | **MikroE Team**     |

*/
/* -------------------------------------------------------------------------- */

#include "stdint.h"

#ifndef _C3DHALL3_H_
#define _C3DHALL3_H_

/** 
 * @macro T_C3DHALL3_P
 * @brief Driver Abstract type 
 */
#define T_C3DHALL3_P    const uint8_t*

/** @defgroup C3DHALL3_COMPILE Compilation Config */              /** @{ */

   #define   __C3DHALL3_DRV_SPI__                            /**<     @macro __C3DHALL3_DRV_SPI__  @brief SPI driver selector */
   #define   __C3DHALL3_DRV_I2C__                            /**<     @macro __C3DHALL3_DRV_I2C__  @brief I2C driver selector */                                          
// #define   __C3DHALL3_DRV_UART__                           /**<     @macro __C3DHALL3_DRV_UART__ @brief UART driver selector */ 

                                                                       /** @} */
/** @defgroup C3DHALL3_VAR Variables */                           /** @{ */

/* register addresses */
extern const uint8_t _C3DHALL3_OFFSET_X_REG_L;
extern const uint8_t _C3DHALL3_OFFSET_Y_REG_L;
extern const uint8_t _C3DHALL3_OFFSET_Z_REG_L;
extern const uint8_t _C3DHALL3_INT_CRTL;
extern const uint8_t _C3DHALL3_INT_SOURCE;
extern const uint8_t _C3DHALL3_INT_THS_L;
extern const uint8_t _C3DHALL3_STATUS;
extern const uint8_t _C3DHALL3_OUTX_L;
extern const uint8_t _C3DHALL3_OUTY_L;
extern const uint8_t _C3DHALL3_OUTZ_L;
extern const uint8_t _C3DHALL3_CONFIGURATION_REGISTER_A;
extern const uint8_t _C3DHALL3_CONFIGURATION_REGISTER_B;
extern const uint8_t _C3DHALL3_CONFIGURATION_REGISTER_C;
extern const uint8_t _C3DHALL3_INTERRUPT_CONTROL;
extern const uint8_t _C3DHALL3_TEMPERATURE_L;
extern const uint8_t _C3DHALL3_TEMPERATURE_H;

/* CFG A register bits */
extern const uint8_t _C3DHALL3_CFGA_TEMPERATURE_COMPENSATION;
extern const uint8_t _C3DHALL3_CFGA_REBOOT_MEMORY;
extern const uint8_t _C3DHALL3_CFGA_SOFT_RESET;
extern const uint8_t _C3DHALL3_CFGA_LOW_POWER_MODE;
extern const uint8_t _C3DHALL3_CFGA_OUTPUT_DATA_RATE_10;
extern const uint8_t _C3DHALL3_CFGA_OUTPUT_DATA_RATE_20;
extern const uint8_t _C3DHALL3_CFGA_OUTPUT_DATA_RATE_50;
extern const uint8_t _C3DHALL3_CFGA_OUTPUT_DATA_RATE_100;
extern const uint8_t _C3DHALL3_CFGA_MODE_CONTINIOUS;
extern const uint8_t _C3DHALL3_CFGA_MODE_SINGLE;
extern const uint8_t _C3DHALL3_CFGA_MODE_IDLE;
extern const uint8_t _C3DHALL3_CFGA_MODE_IDLE_DEFAULT;

/* CFG B register bits */
extern const uint8_t _C3DHALL3_CFGB_OFFSET_CANCELLATION_SINGLE_MODE;
extern const uint8_t _C3DHALL3_CFGB_INT_ON_DATAOFF;
extern const uint8_t _C3DHALL3_CFGB_SET_PULSE_FREQUENCY_EVERY_63_ODR;
extern const uint8_t _C3DHALL3_CFGB_SET_PULSE_FREQUENCY_AFTER_PD;
extern const uint8_t _C3DHALL3_CFGB_OFFSET_CANCELLATION;
extern const uint8_t _C3DHALL3_CFGB_LOW_PASS_FILTER_ODR_2;
extern const uint8_t _C3DHALL3_CFGB_LOW_PASS_FILTER_ODR_4;

/* CFG C register bits */
extern const uint8_t _C3DHALL3_CFGC_INTERRUPT_ON_INT;
extern const uint8_t _C3DHALL3_CFGC_I2C_DISABLE;
extern const uint8_t _C3DHALL3_CFGC_ASYNC_DATA_READ;
extern const uint8_t _C3DHALL3_CFGC_DATA_INVERT;
extern const uint8_t _C3DHALL3_CFGC_SELF_TEST;
extern const uint8_t _C3DHALL3_CFGC_DATA_READY_ON_INT;

/* INT CONTROL register bits */
extern const uint8_t _C3DHALL3_INTCTRL_INTERRUPT_ON_X_AXIS;
extern const uint8_t _C3DHALL3_INTCTRL_INTERRUPT_ON_Y_AXIS;
extern const uint8_t _C3DHALL3_INTCTRL_INTERRUPT_ON_Z_AXIS;
extern const uint8_t _C3DHALL3_INTCTRL_INTERRUPT_POLARITY_LOW;
extern const uint8_t _C3DHALL3_INTCTRL_INTERRUPT_POLARITY_HIGH;
extern const uint8_t _C3DHALL3_INTCTRL_INTERRUPT_BIT_LATCHED;
extern const uint8_t _C3DHALL3_INTCTRL_INTERRUPT_BIT_PULSED;
extern const uint8_t _C3DHALL3_INTCTRL_INTERRUPT_ENABLE;

                                                                       /** @} */
/** @defgroup C3DHALL3_TYPES Types */                             /** @{ */



                                                                       /** @} */
#ifdef __cplusplus
extern "C"{
#endif

/** @defgroup C3DHALL3_INIT Driver Initialization */              /** @{ */

#ifdef   __C3DHALL3_DRV_SPI__
void c3dhall3_spiDriverInit(T_C3DHALL3_P gpioObj, T_C3DHALL3_P spiObj);
#endif
#ifdef   __C3DHALL3_DRV_I2C__
void c3dhall3_i2cDriverInit(T_C3DHALL3_P gpioObj, T_C3DHALL3_P i2cObj, uint8_t slave);
#endif
#ifdef   __C3DHALL3_DRV_UART__
void c3dhall3_uartDriverInit(T_C3DHALL3_P gpioObj, T_C3DHALL3_P uartObj);
#endif

// GPIO Only Drivers - remove in other cases
void c3dhall3_gpioDriverInit(T_C3DHALL3_P gpioObj);
                                                                       /** @} */
/** @defgroup C3DHALL3_FUNC Driver Functions */                   /** @{ */

/**
 * @brief Reading registers
 *
 * @param[in]  First register address
 * @param[out] Register buffer array
 * @param[in]  Number of registers
 *
 * This function reads up to 6 registers in a row
 * This function reads nRegisters starting from registerAddress and fills registerBuffer[] with register data
 */
void c3dhall3_readRegisters( uint8_t registerAddress, uint8_t *registerBuffer, uint8_t nRegisters );

/**
 * @brief Writing registers
 *
 * @param[in]  First register address
 * @param[out] Register buffer
 * @param[in]  Number of registers
 *
 * This function writes up to 6 registers in a row
 * This function writes nRegisters starting from registerAddress and fills registers with registerBuffer[]
 */
void c3dhall3_writeRegisters( uint8_t registerAddress, uint8_t *registerBuffer, uint8_t nRegisters );

/**
 * @brief Reading status
 *
 * @param[out] Status byte
 *
 * This function reads value of status register
 */
uint8_t c3dhall3_readStatus( void );

/**
 * @brief Reading X-axis value
 *
 * @param[out] X-axis value
 *
 * This function reads 16-bit 2s complement output value of X-axis
 */
int16_t c3dhall3_readX( void );

/**
 * @brief Reading Y-axis value
 *
 * @param[out] Y-axis value
 *
 * This function reads 16-bit 2s complement output value of Y-axis
 */
int16_t c3dhall3_readY( void );

/**
 * @brief Reading Z-axis value
 *
 * @param[out] Z-axis value
 *
 * This function reads 16-bit 2s complement output value of Z-axis
 */
int16_t c3dhall3_readZ( void );

/**
 * @brief Reading X Y Z - axes values
 *
 * @param[out] X Y Z - axes values
 *
 * This function reads 16-bit 2s complement output values of X Y Z-axes
 */
void c3dhall3_readXYZ( int16_t *OUT_XYZ );

/**
 * @brief Writing X Y or Z-axis offset
 *
 * @param[in] offset value
 * @param[in] axis
 *
 * This function writes value for X Y or Z-axis offset
 */
void c3dhall3_writeOffset(uint8_t axis, uint16_t offset );

/**
 * @brief Reading interrupt source
 *
 * @param[out] Interrupt source byte
 *
 * This function reads interrupt source register
 */
uint8_t c3dhall3_readInterruptSource( void );

/**
 * @brief Setting interrupt threshold value
 *
 * @param[in] Threshold value
 *
 * This function writes interrupt threshold value
 */
void c3dhall3_interruptThreshold( uint16_t threshold );

/**
 * @brief Checking status of INT pin
 *
 * @param[out] INT pin status
 *
 * This function checks INT pin status
 * This function returns 0 if INT pin is LOW
 * This function returns 1 if INT pin is HIGH
 */
uint8_t c3dhall3_checkIntPin( void );

/**
 * @brief Click initialization
 *
 * This function initializes 3D Hall 3 Click to basic settings
 */
void c3dhall3_configuration( void );

                                                                       /** @} */
#ifdef __cplusplus
} // extern "C"
#endif
#endif

/**
    @example Click_3D_Hall_3_STM.c
    @example Click_3D_Hall_3_TIVA.c
    @example Click_3D_Hall_3_CEC.c
    @example Click_3D_Hall_3_KINETIS.c
    @example Click_3D_Hall_3_MSP.c
    @example Click_3D_Hall_3_PIC.c
    @example Click_3D_Hall_3_PIC32.c
    @example Click_3D_Hall_3_DSPIC.c
    @example Click_3D_Hall_3_AVR.c
    @example Click_3D_Hall_3_FT90x.c
    @example Click_3D_Hall_3_STM.mbas
    @example Click_3D_Hall_3_TIVA.mbas
    @example Click_3D_Hall_3_CEC.mbas
    @example Click_3D_Hall_3_KINETIS.mbas
    @example Click_3D_Hall_3_MSP.mbas
    @example Click_3D_Hall_3_PIC.mbas
    @example Click_3D_Hall_3_PIC32.mbas
    @example Click_3D_Hall_3_DSPIC.mbas
    @example Click_3D_Hall_3_AVR.mbas
    @example Click_3D_Hall_3_FT90x.mbas
    @example Click_3D_Hall_3_STM.mpas
    @example Click_3D_Hall_3_TIVA.mpas
    @example Click_3D_Hall_3_CEC.mpas
    @example Click_3D_Hall_3_KINETIS.mpas
    @example Click_3D_Hall_3_MSP.mpas
    @example Click_3D_Hall_3_PIC.mpas
    @example Click_3D_Hall_3_PIC32.mpas
    @example Click_3D_Hall_3_DSPIC.mpas
    @example Click_3D_Hall_3_AVR.mpas
    @example Click_3D_Hall_3_FT90x.mpas
*/                                                                     /** @} */
/* -------------------------------------------------------------------------- */
/*
  __c3dhall3_driver.h

  Copyright (c) 2017, MikroElektonika - http://www.mikroe.com

  All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.

3. All advertising materials mentioning features or use of this software
   must display the following acknowledgement:
   This product includes software developed by the MikroElektonika.

4. Neither the name of the MikroElektonika nor the
   names of its contributors may be used to endorse or promote products
   derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY MIKROELEKTRONIKA ''AS IS'' AND ANY
EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL MIKROELEKTRONIKA BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

----------------------------------------------------------------------------- */