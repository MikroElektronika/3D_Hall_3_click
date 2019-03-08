![MikroE](http://www.mikroe.com/img/designs/beta/logo_small.png)

---

# 3D_Hall_3 Click

- **CIC Prefix**  : C3DHALL3
- **Author**      : MikroE Team
- **Verison**     : 1.0.0
- **Date**        : Nov 2018.

---


### Software Support

We provide a library for the 3D_Hall_3 Click on our [LibStock](https://libstock.mikroe.com/projects/view/2648/3d-hall-3-click) 
page, as well as a demo application (example), developed using MikroElektronika 
[compilers](http://shop.mikroe.com/compilers). The demo can run on all the main 
MikroElektronika [development boards](http://shop.mikroe.com/development-boards).

**Library Description**

The library initializes and defines the I2C bus or SPI bus driver and drivers that offer a choice for writing data in registers and reading data from registers.
The library includes function for read X/Y/Z axis data, set offset, read interrupt state.
The user also has the function for configuration chip.

Key functions :

- ``` void c3dhall3_readXYZ( int16_t *OUT_XYZ ) ``` - Reading X Y Z - axes values
- ``` void c3dhall3_configuration( void ) ``` - Click default configuration
- ``` void c3dhall3_writeOffset(uint8_t axis, uint16_t offset ) ``` -Writing X Y or Z-axis offset 

**Examples Description**

The application is composed of three sections :

- System Initialization - Initializes I2C communication, INT pin as input, RST pin as output and CS pin as output
- Application Initialization - Initializes I2C driver and 3D Hall 3 to basic settings
- Application Task - Reads and logs XYZ axes values


```.c
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
```

The full application code, and ready to use projects can be found on our 
[LibStock](https://libstock.mikroe.com/projects/view/2648/3d-hall-3-click) page.

Other mikroE Libraries used in the example:

- I2C
- SPI
- UART

**Additional notes and informations**

Depending on the development board you are using, you may need 
[USB UART click](http://shop.mikroe.com/usb-uart-click), 
[USB UART 2 Click](http://shop.mikroe.com/usb-uart-2-click) or 
[RS232 Click](http://shop.mikroe.com/rs232-click) to connect to your PC, for 
development systems with no UART to USB interface available on the board. The 
terminal available in all Mikroelektronika 
[compilers](http://shop.mikroe.com/compilers), or any other terminal application 
of your choice, can be used to read the message.

---
---
