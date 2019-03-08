_systemInit:
;Click_3D_Hall_3_STM.c,32 :: 		void systemInit( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_3D_Hall_3_STM.c,34 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
MOVS	R2, #1
MOVS	R1, #7
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_3D_Hall_3_STM.c,35 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_RST_PIN, _GPIO_OUTPUT );
MOVS	R2, #0
MOVS	R1, #1
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_3D_Hall_3_STM.c,36 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN, _GPIO_OUTPUT );
MOVS	R2, #0
MOVS	R1, #2
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_3D_Hall_3_STM.c,38 :: 		mikrobus_spiInit( _MIKROBUS1, &_C3DHALL3_SPI_CFG[0] );
MOVW	R0, #lo_addr(__C3DHALL3_SPI_CFG+0)
MOVT	R0, #hi_addr(__C3DHALL3_SPI_CFG+0)
MOV	R1, R0
MOVS	R0, #0
BL	_mikrobus_spiInit+0
;Click_3D_Hall_3_STM.c,40 :: 		mikrobus_logInit( _LOG_USBUART_A, 9600 );
MOVW	R1, #9600
MOVS	R0, #32
BL	_mikrobus_logInit+0
;Click_3D_Hall_3_STM.c,42 :: 		Delay_ms(100);
MOVW	R7, #20351
MOVT	R7, #18
NOP
NOP
L_systemInit0:
SUBS	R7, R7, #1
BNE	L_systemInit0
NOP
NOP
NOP
;Click_3D_Hall_3_STM.c,44 :: 		mikrobus_logWrite( "  ... system init done ...  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr1_Click_3D_Hall_3_STM+0)
MOVT	R0, #hi_addr(?lstr1_Click_3D_Hall_3_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_3D_Hall_3_STM.c,45 :: 		}
L_end_systemInit:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _systemInit
_applicationInit:
;Click_3D_Hall_3_STM.c,47 :: 		void applicationInit( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_3D_Hall_3_STM.c,49 :: 		c3dhall3_spiDriverInit( (T_C3DHALL3_P)&_MIKROBUS1_GPIO, (T_C3DHALL3_P)&_MIKROBUS1_SPI );
MOVW	R1, #lo_addr(__MIKROBUS1_SPI+0)
MOVT	R1, #hi_addr(__MIKROBUS1_SPI+0)
MOVW	R0, #lo_addr(__MIKROBUS1_GPIO+0)
MOVT	R0, #hi_addr(__MIKROBUS1_GPIO+0)
BL	_c3dhall3_spiDriverInit+0
;Click_3D_Hall_3_STM.c,51 :: 		Delay_ms(500);
MOVW	R7, #36223
MOVT	R7, #91
NOP
NOP
L_applicationInit2:
SUBS	R7, R7, #1
BNE	L_applicationInit2
NOP
NOP
NOP
;Click_3D_Hall_3_STM.c,53 :: 		c3dhall3_configuration( );
BL	_c3dhall3_configuration+0
;Click_3D_Hall_3_STM.c,55 :: 		mikrobus_logWrite( "... application init done ...  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr2_Click_3D_Hall_3_STM+0)
MOVT	R0, #hi_addr(?lstr2_Click_3D_Hall_3_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_3D_Hall_3_STM.c,56 :: 		}
L_end_applicationInit:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _applicationInit
_applicationTask:
;Click_3D_Hall_3_STM.c,58 :: 		void applicationTask( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_3D_Hall_3_STM.c,60 :: 		c3dhall3_readXYZ( &axes_xyz[0] );
MOVW	R0, #lo_addr(_axes_xyz+0)
MOVT	R0, #hi_addr(_axes_xyz+0)
BL	_c3dhall3_readXYZ+0
;Click_3D_Hall_3_STM.c,62 :: 		mikrobus_logWrite( " X:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr3_Click_3D_Hall_3_STM+0)
MOVT	R0, #hi_addr(?lstr3_Click_3D_Hall_3_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_3D_Hall_3_STM.c,63 :: 		IntToStr( axes_xyz[0], text );
MOVW	R0, #lo_addr(_axes_xyz+0)
MOVT	R0, #hi_addr(_axes_xyz+0)
LDRSH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_IntToStr+0
;Click_3D_Hall_3_STM.c,64 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_3D_Hall_3_STM.c,65 :: 		mikrobus_logWrite( " Y:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr4_Click_3D_Hall_3_STM+0)
MOVT	R0, #hi_addr(?lstr4_Click_3D_Hall_3_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_3D_Hall_3_STM.c,66 :: 		IntToStr( axes_xyz[1], text );
MOVW	R0, #lo_addr(_axes_xyz+2)
MOVT	R0, #hi_addr(_axes_xyz+2)
LDRSH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_IntToStr+0
;Click_3D_Hall_3_STM.c,67 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_3D_Hall_3_STM.c,68 :: 		mikrobus_logWrite( " Z:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr5_Click_3D_Hall_3_STM+0)
MOVT	R0, #hi_addr(?lstr5_Click_3D_Hall_3_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_3D_Hall_3_STM.c,69 :: 		IntToStr( axes_xyz[2], text );
MOVW	R0, #lo_addr(_axes_xyz+4)
MOVT	R0, #hi_addr(_axes_xyz+4)
LDRSH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_IntToStr+0
;Click_3D_Hall_3_STM.c,70 :: 		mikrobus_logWrite( text, _LOG_LINE );
MOVS	R1, #2
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_3D_Hall_3_STM.c,72 :: 		Delay_ms(100);
MOVW	R7, #20351
MOVT	R7, #18
NOP
NOP
L_applicationTask4:
SUBS	R7, R7, #1
BNE	L_applicationTask4
NOP
NOP
NOP
;Click_3D_Hall_3_STM.c,73 :: 		}
L_end_applicationTask:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _applicationTask
_main:
;Click_3D_Hall_3_STM.c,75 :: 		void main( )
;Click_3D_Hall_3_STM.c,77 :: 		systemInit( );
BL	_systemInit+0
;Click_3D_Hall_3_STM.c,78 :: 		applicationInit( );
BL	_applicationInit+0
;Click_3D_Hall_3_STM.c,80 :: 		while (1)
L_main6:
;Click_3D_Hall_3_STM.c,82 :: 		applicationTask( );
BL	_applicationTask+0
;Click_3D_Hall_3_STM.c,83 :: 		}
IT	AL
BAL	L_main6
;Click_3D_Hall_3_STM.c,84 :: 		}
L_end_main:
L__main_end_loop:
B	L__main_end_loop
; end of _main
