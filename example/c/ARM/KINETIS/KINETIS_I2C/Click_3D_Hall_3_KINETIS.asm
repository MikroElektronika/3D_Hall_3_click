_systemInit:
;Click_3D_Hall_3_KINETIS.c,33 :: 		void systemInit( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_3D_Hall_3_KINETIS.c,35 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
MOVS	R2, #1
MOVS	R1, #7
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_3D_Hall_3_KINETIS.c,36 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_RST_PIN, _GPIO_OUTPUT );
MOVS	R2, #0
MOVS	R1, #1
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_3D_Hall_3_KINETIS.c,37 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN, _GPIO_OUTPUT );
MOVS	R2, #0
MOVS	R1, #2
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_3D_Hall_3_KINETIS.c,39 :: 		mikrobus_i2cInit( _MIKROBUS1, &_C3DHALL3_I2C_CFG[0] );
MOVW	R0, #lo_addr(__C3DHALL3_I2C_CFG+0)
MOVT	R0, #hi_addr(__C3DHALL3_I2C_CFG+0)
MOV	R1, R0
MOVS	R0, #0
BL	_mikrobus_i2cInit+0
;Click_3D_Hall_3_KINETIS.c,41 :: 		mikrobus_logInit( _LOG_USBUART, 9600 );
MOVW	R1, #9600
MOVS	R0, #16
BL	_mikrobus_logInit+0
;Click_3D_Hall_3_KINETIS.c,43 :: 		Delay_ms(100);
MOVW	R7, #2302
MOVT	R7, #61
NOP
NOP
L_systemInit0:
SUBS	R7, R7, #1
BNE	L_systemInit0
NOP
NOP
NOP
;Click_3D_Hall_3_KINETIS.c,45 :: 		mikrobus_logWrite( "  ... system init done ...  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr1_Click_3D_Hall_3_KINETIS+0)
MOVT	R0, #hi_addr(?lstr1_Click_3D_Hall_3_KINETIS+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_3D_Hall_3_KINETIS.c,46 :: 		}
L_end_systemInit:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _systemInit
_applicationInit:
;Click_3D_Hall_3_KINETIS.c,48 :: 		void applicationInit( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_3D_Hall_3_KINETIS.c,50 :: 		c3dhall3_i2cDriverInit( (T_C3DHALL3_P)&_MIKROBUS1_GPIO, (T_C3DHALL3_P)&_MIKROBUS1_I2C, 0x1E );
MOVS	R2, #30
MOVW	R1, #lo_addr(__MIKROBUS1_I2C+0)
MOVT	R1, #hi_addr(__MIKROBUS1_I2C+0)
MOVW	R0, #lo_addr(__MIKROBUS1_GPIO+0)
MOVT	R0, #hi_addr(__MIKROBUS1_GPIO+0)
BL	_c3dhall3_i2cDriverInit+0
;Click_3D_Hall_3_KINETIS.c,52 :: 		Delay_ms(500);
MOVW	R7, #11518
MOVT	R7, #305
NOP
NOP
L_applicationInit2:
SUBS	R7, R7, #1
BNE	L_applicationInit2
NOP
NOP
NOP
;Click_3D_Hall_3_KINETIS.c,54 :: 		c3dhall3_configuration( );
BL	_c3dhall3_configuration+0
;Click_3D_Hall_3_KINETIS.c,56 :: 		mikrobus_logWrite( "... application init done ...  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr2_Click_3D_Hall_3_KINETIS+0)
MOVT	R0, #hi_addr(?lstr2_Click_3D_Hall_3_KINETIS+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_3D_Hall_3_KINETIS.c,57 :: 		}
L_end_applicationInit:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _applicationInit
_applicationTask:
;Click_3D_Hall_3_KINETIS.c,59 :: 		void applicationTask( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_3D_Hall_3_KINETIS.c,61 :: 		c3dhall3_readXYZ( &axes_xyz[0] );
MOVW	R0, #lo_addr(_axes_xyz+0)
MOVT	R0, #hi_addr(_axes_xyz+0)
BL	_c3dhall3_readXYZ+0
;Click_3D_Hall_3_KINETIS.c,63 :: 		mikrobus_logWrite( " X:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr3_Click_3D_Hall_3_KINETIS+0)
MOVT	R0, #hi_addr(?lstr3_Click_3D_Hall_3_KINETIS+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_3D_Hall_3_KINETIS.c,64 :: 		IntToStr( axes_xyz[0], text );
MOVW	R0, #lo_addr(_axes_xyz+0)
MOVT	R0, #hi_addr(_axes_xyz+0)
LDRSH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_IntToStr+0
;Click_3D_Hall_3_KINETIS.c,65 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_3D_Hall_3_KINETIS.c,66 :: 		mikrobus_logWrite( " Y:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr4_Click_3D_Hall_3_KINETIS+0)
MOVT	R0, #hi_addr(?lstr4_Click_3D_Hall_3_KINETIS+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_3D_Hall_3_KINETIS.c,67 :: 		IntToStr( axes_xyz[1], text );
MOVW	R0, #lo_addr(_axes_xyz+2)
MOVT	R0, #hi_addr(_axes_xyz+2)
LDRSH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_IntToStr+0
;Click_3D_Hall_3_KINETIS.c,68 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_3D_Hall_3_KINETIS.c,69 :: 		mikrobus_logWrite( " Z:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr5_Click_3D_Hall_3_KINETIS+0)
MOVT	R0, #hi_addr(?lstr5_Click_3D_Hall_3_KINETIS+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_3D_Hall_3_KINETIS.c,70 :: 		IntToStr( axes_xyz[2], text );
MOVW	R0, #lo_addr(_axes_xyz+4)
MOVT	R0, #hi_addr(_axes_xyz+4)
LDRSH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_IntToStr+0
;Click_3D_Hall_3_KINETIS.c,71 :: 		mikrobus_logWrite( text, _LOG_LINE );
MOVS	R1, #2
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_3D_Hall_3_KINETIS.c,73 :: 		Delay_ms(100);
MOVW	R7, #2302
MOVT	R7, #61
NOP
NOP
L_applicationTask4:
SUBS	R7, R7, #1
BNE	L_applicationTask4
NOP
NOP
NOP
;Click_3D_Hall_3_KINETIS.c,74 :: 		}
L_end_applicationTask:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _applicationTask
_main:
;Click_3D_Hall_3_KINETIS.c,76 :: 		void main( )
;Click_3D_Hall_3_KINETIS.c,78 :: 		systemInit( );
BL	_systemInit+0
;Click_3D_Hall_3_KINETIS.c,79 :: 		applicationInit( );
BL	_applicationInit+0
;Click_3D_Hall_3_KINETIS.c,81 :: 		while (1)
L_main6:
;Click_3D_Hall_3_KINETIS.c,83 :: 		applicationTask( );
BL	_applicationTask+0
;Click_3D_Hall_3_KINETIS.c,84 :: 		}
IT	AL
BAL	L_main6
;Click_3D_Hall_3_KINETIS.c,85 :: 		}
L_end_main:
L__main_end_loop:
B	L__main_end_loop
; end of _main
