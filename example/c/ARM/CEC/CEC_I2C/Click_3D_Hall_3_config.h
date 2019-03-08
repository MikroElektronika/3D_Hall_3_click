#include "Click_3D_Hall_3_types.h"

const uint32_t _C3DHALL3_SPI_CFG[ 3 ] = 
{ 
	1000000,  
	_SPI_MSB_FIRST, 
	_SPI_CLK_IDLE_LOW | 
	_SPI_SAMPLE_DATA_RISING_EDGE 
};

const uint32_t _C3DHALL3_I2C_CFG[ 1 ] = 
{ 
	_I2C_100KHZ 
};