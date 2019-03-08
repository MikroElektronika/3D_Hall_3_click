#line 1 "C:/Users/Software/Desktop/3D Hall 3 Click Project/3D Hall 3 Click 4/example/c/DSPIC/I2C/Click_3D_Hall_3_DSPIC.c"
#line 1 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/example/c/dspic/i2c/click_3d_hall_3_types.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for dspic/include/stdint.h"




typedef signed char int8_t;
typedef signed int int16_t;
typedef signed long int int32_t;


typedef unsigned char uint8_t;
typedef unsigned int uint16_t;
typedef unsigned long int uint32_t;


typedef signed char int_least8_t;
typedef signed int int_least16_t;
typedef signed long int int_least32_t;


typedef unsigned char uint_least8_t;
typedef unsigned int uint_least16_t;
typedef unsigned long int uint_least32_t;



typedef signed int int_fast8_t;
typedef signed int int_fast16_t;
typedef signed long int int_fast32_t;


typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned long int uint_fast32_t;


typedef signed int intptr_t;
typedef unsigned int uintptr_t;


typedef signed long int intmax_t;
typedef unsigned long int uintmax_t;
#line 1 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/example/c/dspic/i2c/click_3d_hall_3_config.h"
#line 1 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/example/c/dspic/i2c/click_3d_hall_3_types.h"
#line 4 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/example/c/dspic/i2c/click_3d_hall_3_config.h"
const uint32_t _C3DHALL3_SPI_CFG[ 8 ] =
{
 _SPI_MASTER,
 _SPI_8_BIT,
 _SPI_PRESCALE_SEC_4,
 _SPI_PRESCALE_PRI_4,
 _SPI_SS_DISABLE,
 _SPI_DATA_SAMPLE_MIDDLE,
 _SPI_CLK_IDLE_LOW,
 _SPI_IDLE_2_ACTIVE
};



const uint32_t _C3DHALL3_I2C_CFG[ 1 ] =
{
 100000
};
#line 1 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for dspic/include/stdint.h"
#line 57 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
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
#line 114 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
void c3dhall3_spiDriverInit( const uint8_t*  gpioObj,  const uint8_t*  spiObj);


void c3dhall3_i2cDriverInit( const uint8_t*  gpioObj,  const uint8_t*  i2cObj, uint8_t slave);
#line 124 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
void c3dhall3_gpioDriverInit( const uint8_t*  gpioObj);
#line 138 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
void c3dhall3_readRegisters( uint8_t registerAddress, uint8_t *registerBuffer, uint8_t nRegisters );
#line 150 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
void c3dhall3_writeRegisters( uint8_t registerAddress, uint8_t *registerBuffer, uint8_t nRegisters );
#line 159 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
uint8_t c3dhall3_readStatus( void );
#line 168 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
int16_t c3dhall3_OUT_X( void );
#line 177 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
int16_t c3dhall3_OUT_Y( void );
#line 186 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
int16_t c3dhall3_OUT_Z( void );
#line 195 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
void c3dhall3_OUT_XYZ( int16_t *OUT_XYZ );
#line 204 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
void c3dhall3_writeOffsetX( uint16_t offsetX );
#line 213 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
void c3dhall3_writeOffsetY( uint16_t offsetY );
#line 222 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
void c3dhall3_writeOffsetZ( uint16_t offsetZ );
#line 231 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
uint8_t c3dhall3_readInterruptSource( void );
#line 240 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
void c3dhall3_interruptThreshold( uint16_t threshold );
#line 251 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
uint8_t c3dhall3_checkIntPin( void );
#line 258 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/library/__c3dhall3_driver.h"
void c3dhall3_initilaziation( void );
#line 30 "C:/Users/Software/Desktop/3D Hall 3 Click Project/3D Hall 3 Click 4/example/c/DSPIC/I2C/Click_3D_Hall_3_DSPIC.c"
int16_t axes_xyz[3];
char text[50];

void systemInit( )
{
 mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
 mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_RST_PIN, _GPIO_OUTPUT );
 mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN, _GPIO_OUTPUT );

 mikrobus_i2cInit( _MIKROBUS1, &_C3DHALL3_I2C_CFG[0] );

 mikrobus_logInit( _LOG_USBUART_A, 9600 );

 Delay_ms(100);

 mikrobus_logWrite( "  ... system init done ...  ", _LOG_LINE );
}

void applicationInit( )
{
 c3dhall3_i2cDriverInit( ( const uint8_t* )&_MIKROBUS1_GPIO, ( const uint8_t* )&_MIKROBUS1_I2C, 0x1E );

 Delay_ms(500);

 c3dhall3_initilaziation( );

 mikrobus_logWrite( "... application init done ...  ", _LOG_LINE );
}

void applicationTask( )
{
 c3dhall3_OUT_XYZ( &axes_xyz[0] );

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
