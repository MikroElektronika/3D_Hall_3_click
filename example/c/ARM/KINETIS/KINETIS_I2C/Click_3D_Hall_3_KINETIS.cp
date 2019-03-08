#line 1 "C:/Users/Software/Desktop/3D Hall 3 Click Project/3D Hall 3 Click 4/example/c/ARM/KINETIS/KINETIS_I2C/Click_3D_Hall_3_KINETIS.c"
#line 1 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/example/c/arm/kinetis/kinetis_i2c/click_3d_hall_3_types.h"
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
#line 1 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/example/c/arm/kinetis/kinetis_i2c/click_3d_hall_3_config.h"
#line 1 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/example/c/arm/kinetis/kinetis_i2c/click_3d_hall_3_types.h"
#line 3 "c:/users/software/desktop/3d hall 3 click project/3d hall 3 click 4/example/c/arm/kinetis/kinetis_i2c/click_3d_hall_3_config.h"
const uint32_t _C3DHALL3_SPI_CFG[ 2 ] =
{
 1000000,
 _SPI_CFG_CLK_PHASE_CAPT_LEADING |
 _SPI_CFG_CLK_IDLE_LOW |
 _SPI_CFG_MASTER |
 _SPI_CFG_MSB_FIRST |
 _SPI_CFG_FRAME_SIZE_8BITS |
 _SPI_CFG_SELECT_CTAR0
};

const uint32_t _C3DHALL3_I2C_CFG[ 1 ] =
{
 100000
};
#line 28 "C:/Users/Software/Desktop/3D Hall 3 Click Project/3D Hall 3 Click 4/example/c/ARM/KINETIS/KINETIS_I2C/Click_3D_Hall_3_KINETIS.c"
int16_t axes_xyz[3];
char text[50];

void systemInit( )
{
 mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
 mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_RST_PIN, _GPIO_OUTPUT );
 mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN, _GPIO_OUTPUT );

 mikrobus_i2cInit( _MIKROBUS1, &_C3DHALL3_I2C_CFG[0] );

 mikrobus_logInit( _LOG_USBUART, 9600 );

 Delay_ms(100);

 mikrobus_logWrite( "  ... system init done ...  ", _LOG_LINE );
}

void applicationInit( )
{
 c3dhall3_i2cDriverInit( ( const uint8_t* )&_MIKROBUS1_GPIO, ( const uint8_t* )&_MIKROBUS1_I2C, 0x1E );

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
