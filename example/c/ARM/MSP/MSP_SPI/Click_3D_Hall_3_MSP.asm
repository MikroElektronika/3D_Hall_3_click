_systemInit:
;Click_3D_Hall_3_MSP.c,33 :: 		void systemInit( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_3D_Hall_3_MSP.c,35 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
MOVS	R2, #1
MOVS	R1, #7
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_3D_Hall_3_MSP.c,36 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_RST_PIN, _GPIO_OUTPUT );
MOVS	R2, #0
MOVS	R1, #1
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_3D_Hall_3_MSP.c,37 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN, _GPIO_OUTPUT );
MOVS	R2, #0
MOVS	R1, #2
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_3D_Hall_3_MSP.c,39 :: 		mikrobus_spiInit( _MIKROBUS1, &_C3DHALL3_SPI_CFG[0] );
MOVW	R0, #lo_addr(__C3DHALL3_SPI_CFG+0)
MOVT	R0, #hi_addr(__C3DHALL3_SPI_CFG+0)
MOV	R1, R0
MOVS	R0, #0
BL	_mikrobus_spiInit+0
;Click_3D_Hall_3_MSP.c,41 :: 		mikrobus_logInit( _MIKROBUS2, 9600 );
MOVW	R1, #9600
MOVS	R0, #1
BL	_mikrobus_logInit+0
;Click_3D_Hall_3_MSP.c,43 :: 		Delay_ms(100);
MOVW	R7, #20349
MOVT	R7, #18
NOP
NOP
L_systemInit0:
SUBS	R7, R7, #1
BNE	L_systemInit0
NOP
NOP
NOP
;Click_3D_Hall_3_MSP.c,45 :: 		mikrobus_logWrite( "  ... system init done ...  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr1_Click_3D_Hall_3_MSP+0)
MOVT	R0, #hi_addr(?lstr1_Click_3D_Hall_3_MSP+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_3D_Hall_3_MSP.c,46 :: 		}
L_end_systemInit:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _systemInit
_applicationInit:
;Click_3D_Hall_3_MSP.c,48 :: 		void applicationInit( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_3D_Hall_3_MSP.c,50 :: 		c3dhall3_spiDriverInit( (T_C3DHALL3_P)&_MIKROBUS1_GPIO, (T_C3DHALL3_P)&_MIKROBUS1_SPI );
MOVW	R1, #lo_addr(__MIKROBUS1_SPI+0)
MOVT	R1, #hi_addr(__MIKROBUS1_SPI+0)
MOVW	R0, #lo_addr(__MIKROBUS1_GPIO+0)
MOVT	R0, #hi_addr(__MIKROBUS1_GPIO+0)
BL	_c3dhall3_spiDriverInit+0
;Click_3D_Hall_3_MSP.c,52 :: 		Delay_ms(500);
MOVW	R7, #36221
MOVT	R7, #91
NOP
NOP
L_applicationInit2:
SUBS	R7, R7, #1
BNE	L_applicationInit2
NOP
NOP
NOP
;Click_3D_Hall_3_MSP.c,54 :: 		c3dhall3_initilaziation( );
BL	_c3dhall3_initilaziation+0
;Click_3D_Hall_3_MSP.c,56 :: 		mikrobus_logWrite( "... application init done ...  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr2_Click_3D_Hall_3_MSP+0)
MOVT	R0, #hi_addr(?lstr2_Click_3D_Hall_3_MSP+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_3D_Hall_3_MSP.c,57 :: 		}
L_end_applicationInit:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _applicationInit
_applicationTask:
;Click_3D_Hall_3_MSP.c,59 :: 		void applicationTask( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_3D_Hall_3_MSP.c,61 :: 		c3dhall3_OUT_XYZ( &axes_xyz[0] );
MOVW	R0, #lo_addr(_axes_xyz+0)
MOVT	R0, #hi_addr(_axes_xyz+0)
BL	_c3dhall3_OUT_XYZ+0
;Click_3D_Hall_3_MSP.c,63 :: 		mikrobus_logWrite( " X:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr3_Click_3D_Hall_3_MSP+0)
MOVT	R0, #hi_addr(?lstr3_Click_3D_Hall_3_MSP+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_3D_Hall_3_MSP.c,64 :: 		IntToStr( axes_xyz[0], text );
MOVW	R0, #lo_addr(_axes_xyz+0)
MOVT	R0, #hi_addr(_axes_xyz+0)
LDRSH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_IntToStr+0
;Click_3D_Hall_3_MSP.c,65 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_3D_Hall_3_MSP.c,66 :: 		mikrobus_logWrite( " Y:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr4_Click_3D_Hall_3_MSP+0)
MOVT	R0, #hi_addr(?lstr4_Click_3D_Hall_3_MSP+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_3D_Hall_3_MSP.c,67 :: 		IntToStr( axes_xyz[1], text );
MOVW	R0, #lo_addr(_axes_xyz+2)
MOVT	R0, #hi_addr(_axes_xyz+2)
LDRSH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_IntToStr+0
;Click_3D_Hall_3_MSP.c,68 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_3D_Hall_3_MSP.c,69 :: 		mikrobus_logWrite( " Z:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr5_Click_3D_Hall_3_MSP+0)
MOVT	R0, #hi_addr(?lstr5_Click_3D_Hall_3_MSP+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_3D_Hall_3_MSP.c,70 :: 		IntToStr( axes_xyz[2], text );
MOVW	R0, #lo_addr(_axes_xyz+4)
MOVT	R0, #hi_addr(_axes_xyz+4)
LDRSH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_IntToStr+0
;Click_3D_Hall_3_MSP.c,71 :: 		mikrobus_logWrite( text, _LOG_LINE );
MOVS	R1, #2
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_3D_Hall_3_MSP.c,73 :: 		Delay_ms(100);
MOVW	R7, #20349
MOVT	R7, #18
NOP
NOP
L_applicationTask4:
SUBS	R7, R7, #1
BNE	L_applicationTask4
NOP
NOP
NOP
;Click_3D_Hall_3_MSP.c,74 :: 		}
L_end_applicationTask:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _applicationTask
_main:
;Click_3D_Hall_3_MSP.c,76 :: 		void main( )
;Click_3D_Hall_3_MSP.c,78 :: 		systemInit( );
BL	_systemInit+0
;Click_3D_Hall_3_MSP.c,79 :: 		applicationInit( );
BL	_applicationInit+0
;Click_3D_Hall_3_MSP.c,81 :: 		while (1)
L_main6:
;Click_3D_Hall_3_MSP.c,83 :: 		applicationTask( );
BL	_applicationTask+0
;Click_3D_Hall_3_MSP.c,84 :: 		}
IT	AL
BAL	L_main6
;Click_3D_Hall_3_MSP.c,85 :: 		}
L_end_main:
L__main_end_loop:
B	L__main_end_loop
; end of _main
