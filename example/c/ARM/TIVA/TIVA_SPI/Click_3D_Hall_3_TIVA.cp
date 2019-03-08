#line 1 "C:/Users/Software/Desktop/3D Hall 3 Click Project/3D Hall 3 Click 4/example/c/ARM/TIVA/TIVA_SPI/Click_3D_Hall_3_TIVA.c"
#line 1 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/example/c/arm/tiva/tiva_spi/click_3d_hall_3_types.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/stdint.h"





typedef signed char int8_t;
typedef signed int int16_t;
typedef signed long int int32_t;
typedef signed long long int64_t;


typedef unsigned char uint8_t;
typedef unsigned int uint16_t;
typedef unsigned long int uint32_t;
typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef signed int int_least16_t;
typedef signed long int int_least32_t;
typedef signed long long int_least64_t;


typedef unsigned char uint_least8_t;
typedef unsigned int uint_least16_t;
typedef unsigned long int uint_least32_t;
typedef unsigned long long uint_least64_t;



typedef signed long int int_fast8_t;
typedef signed long int int_fast16_t;
typedef signed long int int_fast32_t;
typedef signed long long int_fast64_t;


typedef unsigned long int uint_fast8_t;
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long long uint_fast64_t;


typedef signed long int intptr_t;
typedef unsigned long int uintptr_t;


typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;
#line 1 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/example/c/arm/tiva/tiva_spi/click_3d_hall_3_config.h"
#line 1 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/example/c/arm/tiva/tiva_spi/click_3d_hall_3_types.h"
#line 4 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/example/c/arm/tiva/tiva_spi/click_3d_hall_3_config.h"
const uint32_t _C3DHALL3_SPI_CFG[ 3 ] =
{
 1000000,
 _SPI_MASTER,
 _SPI_8_BIT |
 _SPI_CLK_IDLE_HIGH |
 _SPI_SECOND_CLK_EDGE_TRANSITION
};



const uint32_t _C3DHALL3_I2C_CFG[ 1 ] =
{
 _I2C_BITRATE_STANDARD_MODE
};
#line 1 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/stdint.h"
#line 58 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
extern const uint8_t _C3DHALL3_CONFIGURATION_REGISTER_A;
extern const uint8_t _C3DHALL3_CONFIGURATION_REGISTER_B;
extern const uint8_t _C3DHALL3_CONFIGURATION_REGISTER_C;
extern const uint8_t _C3DHALL3_INTERRUPT_CONTROL;
extern const uint8_t _C3DHALL3_TEMPERATURE_L;
extern const uint8_t _C3DHALL3_TEMPERATURE_H;


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


extern const uint8_t _C3DHALL3_CFGB_OFFSET_CANCELLATION_SINGLE_MODE;
extern const uint8_t _C3DHALL3_CFGB_INT_ON_DATAOFF;
extern const uint8_t _C3DHALL3_CFGB_SET_PULSE_FREQUENCY_EVERY_63_ODR;
extern const uint8_t _C3DHALL3_CFGB_SET_PULSE_FREQUENCY_AFTER_PD;
extern const uint8_t _C3DHALL3_CFGB_OFFSET_CANCELLATION;
extern const uint8_t _C3DHALL3_CFGB_LOW_PASS_FILTER_ODR_2;
extern const uint8_t _C3DHALL3_CFGB_LOW_PASS_FILTER_ODR_4;


extern const uint8_t _C3DHALL3_CFGC_INTERRUPT_ON_INT;
extern const uint8_t _C3DHALL3_CFGC_I2C_DISABLE;
extern const uint8_t _C3DHALL3_CFGC_ASYNC_DATA_READ;
extern const uint8_t _C3DHALL3_CFGC_DATA_INVERT;
extern const uint8_t _C3DHALL3_CFGC_SELF_TEST;
extern const uint8_t _C3DHALL3_CFGC_DATA_READY_ON_INT;


extern const uint8_t _C3DHALL3_INTCTRL_INTERRUPT_ON_X_AXIS;
extern const uint8_t _C3DHALL3_INTCTRL_INTERRUPT_ON_Y_AXIS;
extern const uint8_t _C3DHALL3_INTCTRL_INTERRUPT_ON_Z_AXIS;
extern const uint8_t _C3DHALL3_INTCTRL_INTERRUPT_POLARITY_LOW;
extern const uint8_t _C3DHALL3_INTCTRL_INTERRUPT_POLARITY_HIGH;
extern const uint8_t _C3DHALL3_INTCTRL_INTERRUPT_BIT_LATCHED;
extern const uint8_t _C3DHALL3_INTCTRL_INTERRUPT_BIT_PULSED;
extern const uint8_t _C3DHALL3_INTCTRL_INTERRUPT_ENABLE;
#line 119 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
void c3dhall3_spiDriverInit( const uint8_t*  gpioObj,  const uint8_t*  spiObj);


void c3dhall3_i2cDriverInit( const uint8_t*  gpioObj,  const uint8_t*  i2cObj, uint8_t slave);
#line 129 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
void c3dhall3_gpioDriverInit( const uint8_t*  gpioObj);
#line 143 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
void c3dhall3_readRegisters( uint8_t registerAddress, uint8_t *registerBuffer, uint8_t nRegisters );
#line 155 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
void c3dhall3_writeRegisters( uint8_t registerAddress, uint8_t *registerBuffer, uint8_t nRegisters );
#line 164 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
uint8_t c3dhall3_readStatus( void );
#line 173 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
int16_t c3dhall3_readX( void );
#line 182 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
int16_t c3dhall3_readY( void );
#line 191 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
int16_t c3dhall3_readZ( void );
#line 200 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
void c3dhall3_readXYZ( int16_t *OUT_XYZ );
#line 209 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
void c3dhall3_writeOffsetX( uint16_t offsetX );
#line 218 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
void c3dhall3_writeOffsetY( uint16_t offsetY );
#line 227 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
void c3dhall3_writeOffsetZ( uint16_t offsetZ );
#line 238 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
void c3dhall3_writeOffsetXYZ( uint16_t offsetX, uint16_t offsetY, uint16_t offsetZ );
#line 247 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
uint8_t c3dhall3_readInterruptSource( void );
#line 256 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
void c3dhall3_interruptThreshold( uint16_t threshold );
#line 267 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
uint8_t c3dhall3_checkIntPin( void );
#line 274 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
void c3dhall3_configuration( void );
#line 29 "C:/Users/Software/Desktop/3D Hall 3 Click Project/3D Hall 3 Click 4/example/c/ARM/TIVA/TIVA_SPI/Click_3D_Hall_3_TIVA.c"
int16_t axes_xyz[3];
char text[50];

void systemInit( )
{
 mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
 mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_RST_PIN, _GPIO_OUTPUT );
 mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN, _GPIO_OUTPUT );

 mikrobus_spiInit( _MIKROBUS1, &_C3DHALL3_SPI_CFG[0] );

 mikrobus_logInit( _LOG_USBUART_A, 9600 );

 Delay_ms(100);

 mikrobus_logWrite( "  ... system init done ...  ", _LOG_LINE );
}

void applicationInit( )
{
 c3dhall3_spiDriverInit( ( const uint8_t* )&_MIKROBUS1_GPIO, ( const uint8_t* )&_MIKROBUS1_SPI );

 Delay_ms(500);

 c3dhall3_configuration( );

 mikrobus_logWrite( "... application init done ...  ", _LOG_LINE );
}

void applicationTask( )
{
 c3dhall3_readXYZ( &axes_xyz[0] );

 mikrobus_logWrite( " X:", _LOG_TEXT );
 IntToStr( axes_xyz[0], text );
 mikrobus_logWrite( text, _LOG_TEXT );
 mikrobus_logWrite( " Y:", _LOG_TEXT );
 IntToStr( axes_xyz[1], text );
 mikrobus_logWrite( text, _LOG_TEXT );
 mikrobus_logWrite( " Z:", _LOG_TEXT );
 IntToStr( axes_xyz[2], text );
 mikrobus_logWrite( text, _LOG_LINE );

 Delay_ms(100);
}

void main( )
{
 systemInit( );
 applicationInit( );

 while (1)
 {
 applicationTask( );
 }
}
