/*
    __c3dhall3_driver.c

-----------------------------------------------------------------------------

  This file is part of mikroSDK.

  Copyright (c) 2017, MikroElektonika - http://www.mikroe.com

  All rights reserved.

----------------------------------------------------------------------------- */

#include "__c3dhall3_driver.h"
#include "__c3dhall3_hal.c"

/* ------------------------------------------------------------------- MACROS */

/* register addresses */
const uint8_t _C3DHALL3_OFFSET_X_REG_L                        = 0x45;
const uint8_t _C3DHALL3_OFFSET_Y_REG_L                        = 0x47;
const uint8_t _C3DHALL3_OFFSET_Z_REG_L                        = 0x49;
const uint8_t _C3DHALL3_INT_CRTL                              = 0x63;
const uint8_t _C3DHALL3_INT_SOURCE                            = 0x64;
const uint8_t _C3DHALL3_INT_THS_L                             = 0x65;
const uint8_t _C3DHALL3_STATUS                                = 0x67;
const uint8_t _C3DHALL3_OUTX_L                                = 0x68;
const uint8_t _C3DHALL3_OUTY_L                                = 0x6A;
const uint8_t _C3DHALL3_OUTZ_L                                = 0x6C;
const uint8_t _C3DHALL3_CONFIGURATION_REGISTER_A              = 0x60;
const uint8_t _C3DHALL3_CONFIGURATION_REGISTER_B              = 0x61;
const uint8_t _C3DHALL3_CONFIGURATION_REGISTER_C              = 0x62;
const uint8_t _C3DHALL3_INTERRUPT_CONTROL                     = 0x63;
const uint8_t _C3DHALL3_TEMPERATURE_L                         = 0x6E;
const uint8_t _C3DHALL3_TEMPERATURE_H                         = 0x6F;

/* CFG A register bits */
const uint8_t _C3DHALL3_CFGA_TEMPERATURE_COMPENSATION         = 0x80;
const uint8_t _C3DHALL3_CFGA_REBOOT_MEMORY                    = 0x40;
const uint8_t _C3DHALL3_CFGA_SOFT_RESET                       = 0x20;
const uint8_t _C3DHALL3_CFGA_LOW_POWER_MODE                   = 0x10;
const uint8_t _C3DHALL3_CFGA_OUTPUT_DATA_RATE_10              = 0x00;
const uint8_t _C3DHALL3_CFGA_OUTPUT_DATA_RATE_20              = 0x04;
const uint8_t _C3DHALL3_CFGA_OUTPUT_DATA_RATE_50              = 0x08;
const uint8_t _C3DHALL3_CFGA_OUTPUT_DATA_RATE_100             = 0x0C;
const uint8_t _C3DHALL3_CFGA_MODE_CONTINIOUS                  = 0x00;
const uint8_t _C3DHALL3_CFGA_MODE_SINGLE                      = 0x01;
const uint8_t _C3DHALL3_CFGA_MODE_IDLE                        = 0x02;
const uint8_t _C3DHALL3_CFGA_MODE_IDLE_DEFAULT                = 0x03;

/* CFG B register bits */
const uint8_t _C3DHALL3_CFGB_OFFSET_CANCELLATION_SINGLE_MODE  = 0x10;
const uint8_t _C3DHALL3_CFGB_INT_ON_DATAOFF                   = 0x08;
const uint8_t _C3DHALL3_CFGB_SET_PULSE_FREQUENCY_EVERY_63_ODR = 0x00;
const uint8_t _C3DHALL3_CFGB_SET_PULSE_FREQUENCY_AFTER_PD     = 0x04;
const uint8_t _C3DHALL3_CFGB_OFFSET_CANCELLATION              = 0x02;
const uint8_t _C3DHALL3_CFGB_LOW_PASS_FILTER_ODR_2            = 0x00;
const uint8_t _C3DHALL3_CFGB_LOW_PASS_FILTER_ODR_4            = 0x01;

/* CFG C register bits */
const uint8_t _C3DHALL3_CFGC_INTERRUPT_ON_INT                 = 0x40;
const uint8_t _C3DHALL3_CFGC_I2C_DISABLE                      = 0x20;
const uint8_t _C3DHALL3_CFGC_ASYNC_DATA_READ                  = 0x10;
const uint8_t _C3DHALL3_CFGC_DATA_INVERT                      = 0x08;
const uint8_t _C3DHALL3_CFGC_SELF_TEST                        = 0x02;
const uint8_t _C3DHALL3_CFGC_DATA_READY_ON_INT                = 0x01;

/* INT CONTROL register bits */
const uint8_t _C3DHALL3_INTCTRL_INTERRUPT_ON_X_AXIS           = 0x80;
const uint8_t _C3DHALL3_INTCTRL_INTERRUPT_ON_Y_AXIS           = 0x40;
const uint8_t _C3DHALL3_INTCTRL_INTERRUPT_ON_Z_AXIS           = 0x20;
const uint8_t _C3DHALL3_INTCTRL_INTERRUPT_POLARITY_LOW        = 0x00;
const uint8_t _C3DHALL3_INTCTRL_INTERRUPT_POLARITY_HIGH       = 0x40;
const uint8_t _C3DHALL3_INTCTRL_INTERRUPT_BIT_LATCHED         = 0x00;
const uint8_t _C3DHALL3_INTCTRL_INTERRUPT_BIT_PULSED          = 0x20;
const uint8_t _C3DHALL3_INTCTRL_INTERRUPT_ENABLE              = 0x01;

/* ---------------------------------------------------------------- VARIABLES */

#ifdef   __C3DHALL3_DRV_I2C__
static uint8_t _slaveAddress;
#endif

static char c3dhall3_communicationType;

/* -------------------------------------------- PRIVATE FUNCTION DECLARATIONS */



/* --------------------------------------------- PRIVATE FUNCTION DEFINITIONS */



/* --------------------------------------------------------- PUBLIC FUNCTIONS */

#ifdef   __C3DHALL3_DRV_SPI__

void c3dhall3_spiDriverInit(T_C3DHALL3_P gpioObj, T_C3DHALL3_P spiObj)
{
    hal_spiMap( (T_HAL_P)spiObj );
    hal_gpioMap( (T_HAL_P)gpioObj );
        
    c3dhall3_communicationType = 0;
        
    hal_gpio_rstSet(1);
}

#endif
#ifdef   __C3DHALL3_DRV_I2C__

void c3dhall3_i2cDriverInit(T_C3DHALL3_P gpioObj, T_C3DHALL3_P i2cObj, uint8_t slave)
{
    _slaveAddress = slave;
    hal_i2cMap( (T_HAL_P)i2cObj );
    hal_gpioMap( (T_HAL_P)gpioObj );
        
    c3dhall3_communicationType = 1;
         
    hal_gpio_csSet(1);
}

#endif
#ifdef   __C3DHALL3_DRV_UART__

void c3dhall3_uartDriverInit(T_C3DHALL3_P gpioObj, T_C3DHALL3_P uartObj)
{
    hal_uartMap( (T_HAL_P)uartObj );
    hal_gpioMap( (T_HAL_P)gpioObj );
}

#endif

/* ----------------------------------------------------------- IMPLEMENTATION */

void c3dhall3_readRegisters( uint8_t registerAddress, uint8_t *registerBuffer, uint8_t nRegisters )
{
    if (c3dhall3_communicationType == 0)
    {
        uint8_t spi_auxBufferIn[1];
        uint8_t spi_auxBufferOut[6];
        uint8_t i;

        spi_auxBufferIn[0] = registerAddress;
        spi_auxBufferIn[0] |= 0x80;

        hal_gpio_rstSet(1);
        hal_gpio_csSet(0);
        hal_spiWrite( spi_auxBufferIn, 1 );
        hal_gpio_rstSet(0);
        hal_spiRead( registerBuffer, nRegisters );
        hal_gpio_csSet(1);
        
    }
    else if (c3dhall3_communicationType == 1)
    {
        uint8_t i2c_regAddr;

        i2c_regAddr = registerAddress;
        i2c_regAddr |= 0x80;

        hal_gpio_csSet(1);

        hal_i2cStart( );
        hal_i2cWrite( _slaveAddress, &i2c_regAddr, 1, END_MODE_RESTART );
        hal_i2cRead( _slaveAddress, registerBuffer, nRegisters, END_MODE_STOP );
    }
}

void c3dhall3_writeRegisters( uint8_t registerAddress, uint8_t *registerBuffer, uint8_t nRegisters )
{
    if (c3dhall3_communicationType == 0)
    {
        uint8_t spi_auxBufferIn[7];
        uint8_t i;

        spi_auxBufferIn[0] = registerAddress;

        for ( i = 0; i < nRegisters + 1; i ++ )
        {
            spi_auxBufferIn[ i + 1 ] = registerBuffer[ i ];
        }

        hal_gpio_rstSet(1);
        hal_gpio_csSet(0);
        hal_spiWrite( spi_auxBufferIn, nRegisters + 1 );
        hal_gpio_csSet(1);
    }
    else if (c3dhall3_communicationType == 1)
    {
        uint8_t i2c_auxBuffer[7];
        uint8_t i;

        i2c_auxBuffer[0] = registerAddress;
        i2c_auxBuffer[0] |= 0x80;

        for ( i = 0; i < nRegisters + 1; i ++ )
        {
            i2c_auxBuffer[ i + 1 ] = registerBuffer[ i ];
        }

        hal_gpio_csSet(1);

        hal_i2cStart( );
        hal_i2cWrite( _slaveAddress, i2c_auxBuffer, nRegisters + 1, END_MODE_STOP );
    }
}

uint8_t c3dhall3_readStatus( void )
{
    uint8_t auxBuffer[1];

    c3dhall3_readRegisters( _C3DHALL3_STATUS, auxBuffer, 1 );

    return auxBuffer[0];
}

int16_t c3dhall3_readX( void )
{
    uint16_t OUT_X;
    uint8_t auxBuffer[2];

    c3dhall3_readRegisters( _C3DHALL3_OUTX_L, auxBuffer, 2 );

    OUT_X = auxBuffer[1];
    OUT_X <<= 8;
    OUT_X |= auxBuffer[0];

    return OUT_X;
}

int16_t c3dhall3_readY( void )
{
    int16_t OUT_Y;
    uint8_t auxBuffer[2];

    c3dhall3_readRegisters( _C3DHALL3_OUTY_L, auxBuffer, 2 );

    OUT_Y = auxBuffer[1];
    OUT_Y <<= 8;
    OUT_Y |= auxBuffer[0];

    return OUT_Y;
}

int16_t c3dhall3_readZ( void )
{
    int16_t OUT_Z;
    uint8_t auxBuffer[2];

    c3dhall3_readRegisters( _C3DHALL3_OUTZ_L, auxBuffer, 2 );

    OUT_Z = auxBuffer[1];
    OUT_Z <<= 8;
    OUT_Z |= auxBuffer[0];

    return OUT_Z;
}

void c3dhall3_readXYZ( int16_t *OUT_XYZ )
{
    uint8_t auxBuffer[6];

    c3dhall3_readRegisters( _C3DHALL3_OUTX_L, auxBuffer, 6 );

    OUT_XYZ[0] = auxBuffer[1];
    OUT_XYZ[0] <<= 8;
    OUT_XYZ[0] |= auxBuffer[0];

    OUT_XYZ[1] = auxBuffer[3];
    OUT_XYZ[1] <<= 8;
    OUT_XYZ[1] |= auxBuffer[2];

    OUT_XYZ[2] = auxBuffer[5];
    OUT_XYZ[2] <<= 8;
    OUT_XYZ[2] |= auxBuffer[4];
}

void c3dhall3_writeOffset(uint8_t axis, uint16_t offset )
{
    uint8_t auxBuffer[2];

    auxBuffer[0] = (uint8_t)(offset);
    auxBuffer[1] = (uint8_t)(offset >> 8);

    c3dhall3_writeRegisters( axis, auxBuffer, 2 );
}

uint8_t c3dhall3_readInterruptSource( void )
{
    uint8_t auxBuffer[1];

    c3dhall3_readRegisters( _C3DHALL3_INT_SOURCE, auxBuffer, 1 );

    return auxBuffer[0];
}

void c3dhall3_interruptThreshold( uint16_t threshold )
{
    uint8_t auxBuffer[2];

    auxBuffer[0] = (uint8_t)(threshold);
    auxBuffer[1] = (uint8_t)(threshold >> 8);

    c3dhall3_writeRegisters( _C3DHALL3_INT_THS_L, auxBuffer, 2 );
}

uint8_t c3dhall3_checkIntPin( void )
{
    uint8_t intPinStatus;

    intPinStatus = hal_gpio_intGet( );

    return intPinStatus;
}

void c3dhall3_configuration( void )
{
    uint8_t auxBuffer[1];

    auxBuffer[0] = _C3DHALL3_CFGA_REBOOT_MEMORY | _C3DHALL3_CFGA_SOFT_RESET | _C3DHALL3_CFGA_MODE_CONTINIOUS;
    c3dhall3_writeRegisters( _C3DHALL3_CONFIGURATION_REGISTER_A, auxBuffer, 1 );

    Delay_100ms( );

    auxBuffer[0] = _C3DHALL3_CFGA_TEMPERATURE_COMPENSATION | _C3DHALL3_CFGA_OUTPUT_DATA_RATE_100 | _C3DHALL3_CFGA_MODE_CONTINIOUS;
    c3dhall3_writeRegisters( _C3DHALL3_CONFIGURATION_REGISTER_A, auxBuffer, 1 );

    auxBuffer[0] = _C3DHALL3_CFGC_ASYNC_DATA_READ | _C3DHALL3_CFGC_DATA_READY_ON_INT;
    c3dhall3_writeRegisters( _C3DHALL3_CONFIGURATION_REGISTER_C, auxBuffer, 1 );
}

/* -------------------------------------------------------------------------- */
/*
  __c3dhall3_driver.c

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