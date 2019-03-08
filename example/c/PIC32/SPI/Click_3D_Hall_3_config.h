#include "Click_3D_Hall_3_types.h"

const uint32_t _C3DHALL3_SPI_CFG[ 7 ] = 
{ 
	_SPI_MASTER, 
	_SPI_8_BIT, 
	80, 
	_SPI_SS_DISABLE, 
	_SPI_DATA_SAMPLE_MIDDLE, 
	_SPI_CLK_IDLE_LOW, 
	_SPI_IDLE_2_ACTIVE 
};

const uint32_t _C3DHALL3_I2C_CFG[ 1 ] = 
{
	100000
};
