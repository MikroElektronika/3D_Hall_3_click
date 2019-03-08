
_systemInit:

;Click_3D_Hall_3_AVR.c,32 :: 		void systemInit( )
;Click_3D_Hall_3_AVR.c,34 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
	PUSH       R2
	PUSH       R3
	PUSH       R4
	PUSH       R5
	PUSH       R6
	CLR        R4
	LDI        R27, 7
	MOV        R3, R27
	CLR        R2
	CALL       _mikrobus_gpioInit+0
;Click_3D_Hall_3_AVR.c,35 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_RST_PIN, _GPIO_OUTPUT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, 1
	MOV        R3, R27
	CLR        R2
	CALL       _mikrobus_gpioInit+0
;Click_3D_Hall_3_AVR.c,36 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN, _GPIO_OUTPUT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, 2
	MOV        R3, R27
	CLR        R2
	CALL       _mikrobus_gpioInit+0
;Click_3D_Hall_3_AVR.c,38 :: 		mikrobus_spiInit( _MIKROBUS1, &_C3DHALL3_SPI_CFG[0] );
	LDI        R16, #lo_addr(__C3DHALL3_SPI_CFG+0)
	LDI        R17, hi_addr(__C3DHALL3_SPI_CFG+0)
	MOV        R3, R16
	MOV        R4, R17
	CLR        R2
	CALL       _mikrobus_spiInit+0
;Click_3D_Hall_3_AVR.c,40 :: 		mikrobus_logInit( _LOG_USBUART, 9600 );
	LDI        R27, 128
	MOV        R3, R27
	LDI        R27, 37
	MOV        R4, R27
	LDI        R27, 0
	MOV        R5, R27
	MOV        R6, R27
	LDI        R27, 16
	MOV        R2, R27
	CALL       _mikrobus_logInit+0
;Click_3D_Hall_3_AVR.c,42 :: 		Delay_ms(100);
	LDI        R18, 5
	LDI        R17, 15
	LDI        R16, 242
L_systemInit0:
	DEC        R16
	BRNE       L_systemInit0
	DEC        R17
	BRNE       L_systemInit0
	DEC        R18
	BRNE       L_systemInit0
;Click_3D_Hall_3_AVR.c,44 :: 		mikrobus_logWrite( "  ... system init done ...  ", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr1_Click_3D_Hall_3_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr1_Click_3D_Hall_3_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_3D_Hall_3_AVR.c,45 :: 		}
L_end_systemInit:
	POP        R6
	POP        R5
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _systemInit

_applicationInit:

;Click_3D_Hall_3_AVR.c,47 :: 		void applicationInit( )
;Click_3D_Hall_3_AVR.c,49 :: 		c3dhall3_spiDriverInit( (T_C3DHALL3_P)&_MIKROBUS1_GPIO, (T_C3DHALL3_P)&_MIKROBUS1_SPI );
	PUSH       R2
	PUSH       R3
	PUSH       R4
	PUSH       R5
	LDI        R27, #lo_addr(__MIKROBUS1_SPI+0)
	MOV        R4, R27
	LDI        R27, hi_addr(__MIKROBUS1_SPI+0)
	MOV        R5, R27
	LDI        R27, #lo_addr(__MIKROBUS1_GPIO+0)
	MOV        R2, R27
	LDI        R27, hi_addr(__MIKROBUS1_GPIO+0)
	MOV        R3, R27
	CALL       _c3dhall3_spiDriverInit+0
;Click_3D_Hall_3_AVR.c,51 :: 		Delay_ms(500);
	LDI        R18, 21
	LDI        R17, 75
	LDI        R16, 191
L_applicationInit2:
	DEC        R16
	BRNE       L_applicationInit2
	DEC        R17
	BRNE       L_applicationInit2
	DEC        R18
	BRNE       L_applicationInit2
	NOP
;Click_3D_Hall_3_AVR.c,53 :: 		c3dhall3_configuration( );
	CALL       _c3dhall3_configuration+0
;Click_3D_Hall_3_AVR.c,55 :: 		mikrobus_logWrite( "... application init done ...  ", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr2_Click_3D_Hall_3_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr2_Click_3D_Hall_3_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_3D_Hall_3_AVR.c,56 :: 		}
L_end_applicationInit:
	POP        R5
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _applicationInit

_applicationTask:

;Click_3D_Hall_3_AVR.c,58 :: 		void applicationTask( )
;Click_3D_Hall_3_AVR.c,60 :: 		c3dhall3_readXYZ( &axes_xyz[0] );
	PUSH       R2
	PUSH       R3
	PUSH       R4
	PUSH       R5
	LDI        R27, #lo_addr(_axes_xyz+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_axes_xyz+0)
	MOV        R3, R27
	CALL       _c3dhall3_readXYZ+0
;Click_3D_Hall_3_AVR.c,62 :: 		mikrobus_logWrite( " X:", _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr3_Click_3D_Hall_3_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr3_Click_3D_Hall_3_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_3D_Hall_3_AVR.c,63 :: 		IntToStr( axes_xyz[0], text );
	LDI        R27, #lo_addr(_text+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R5, R27
	LDS        R2, _axes_xyz+0
	LDS        R3, _axes_xyz+1
	CALL       _IntToStr+0
;Click_3D_Hall_3_AVR.c,64 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(_text+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_3D_Hall_3_AVR.c,65 :: 		mikrobus_logWrite( " Y:", _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr4_Click_3D_Hall_3_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr4_Click_3D_Hall_3_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_3D_Hall_3_AVR.c,66 :: 		IntToStr( axes_xyz[1], text );
	LDI        R27, #lo_addr(_text+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R5, R27
	LDS        R2, _axes_xyz+2
	LDS        R3, _axes_xyz+3
	CALL       _IntToStr+0
;Click_3D_Hall_3_AVR.c,67 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(_text+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_3D_Hall_3_AVR.c,68 :: 		mikrobus_logWrite( " Z:", _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr5_Click_3D_Hall_3_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr5_Click_3D_Hall_3_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_3D_Hall_3_AVR.c,69 :: 		IntToStr( axes_xyz[2], text );
	LDI        R27, #lo_addr(_text+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R5, R27
	LDS        R2, _axes_xyz+4
	LDS        R3, _axes_xyz+5
	CALL       _IntToStr+0
;Click_3D_Hall_3_AVR.c,70 :: 		mikrobus_logWrite( text, _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(_text+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_3D_Hall_3_AVR.c,72 :: 		Delay_ms(100);
	LDI        R18, 5
	LDI        R17, 15
	LDI        R16, 242
L_applicationTask4:
	DEC        R16
	BRNE       L_applicationTask4
	DEC        R17
	BRNE       L_applicationTask4
	DEC        R18
	BRNE       L_applicationTask4
;Click_3D_Hall_3_AVR.c,73 :: 		}
L_end_applicationTask:
	POP        R5
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _applicationTask

_main:
	LDI        R27, 255
	OUT        SPL+0, R27
	LDI        R27, 0
	OUT        SPL+1, R27

;Click_3D_Hall_3_AVR.c,75 :: 		void main( )
;Click_3D_Hall_3_AVR.c,77 :: 		systemInit( );
	CALL       _systemInit+0
;Click_3D_Hall_3_AVR.c,78 :: 		applicationInit( );
	CALL       _applicationInit+0
;Click_3D_Hall_3_AVR.c,80 :: 		while (1)
L_main6:
;Click_3D_Hall_3_AVR.c,82 :: 		applicationTask( );
	CALL       _applicationTask+0
;Click_3D_Hall_3_AVR.c,83 :: 		}
	JMP        L_main6
;Click_3D_Hall_3_AVR.c,84 :: 		}
L_end_main:
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
