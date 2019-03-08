/*
Example for 3D_Hall_3 Click

    Date          : Nov 2018.
    Author        : MikroE Team

Test configuration STM32 :
    
    MCU              : STM32F107VCT6
    Dev. Board       : EasyMx PRO v7 for STM32
    ARM Compiler ver : v6.0.0.0

---

Description :

The application is composed of three sections :

- System Initialization - Initializes SPI communication, INT pin as input, RST pin as output and CS pin as output
- Application Initialization - Initializes SPI driver and 3D Hall 3 to basic settings
- Application Task - Reads and logs XYZ axes values

*/

#include "Click_3D_Hall_3_types.h"
#include "Click_3D_Hall_3_config.h"

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
    c3dhall3_spiDriverInit( (T_C3DHALL3_P)&_MIKROBUS1_GPIO, (T_C3DHALL3_P)&_MIKROBUS1_SPI );
    
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