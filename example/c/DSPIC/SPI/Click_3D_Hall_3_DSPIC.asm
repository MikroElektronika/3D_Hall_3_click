
_systemInit:

;Click_3D_Hall_3_DSPIC.c,33 :: 		void systemInit( )
;Click_3D_Hall_3_DSPIC.c,35 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
	PUSH	W10
	PUSH	W11
	PUSH	W12
	MOV.B	#1, W12
	MOV.B	#7, W11
	CLR	W10
	CALL	_mikrobus_gpioInit
;Click_3D_Hall_3_DSPIC.c,36 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_RST_PIN, _GPIO_OUTPUT );
	CLR	W12
	MOV.B	#1, W11
	CLR	W10
	CALL	_mikrobus_gpioInit
;Click_3D_Hall_3_DSPIC.c,37 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN, _GPIO_OUTPUT );
	CLR	W12
	MOV.B	#2, W11
	CLR	W10
	CALL	_mikrobus_gpioInit
;Click_3D_Hall_3_DSPIC.c,39 :: 		mikrobus_spiInit( _MIKROBUS1, &_C3DHALL3_SPI_CFG[0] );
	MOV	#lo_addr(__C3DHALL3_SPI_CFG), W0
	MOV	W0, W11
	CLR	W10
	CALL	_mikrobus_spiInit
;Click_3D_Hall_3_DSPIC.c,41 :: 		mikrobus_logInit( _LOG_USBUART_A, 9600 );
	MOV	#9600, W11
	MOV	#0, W12
	MOV.B	#32, W10
	CALL	_mikrobus_logInit
;Click_3D_Hall_3_DSPIC.c,43 :: 		Delay_ms(100);
	MOV	#3, W8
	MOV	#2261, W7
L_systemInit0:
	DEC	W7
	BRA NZ	L_systemInit0
	DEC	W8
	BRA NZ	L_systemInit0
;Click_3D_Hall_3_DSPIC.c,45 :: 		mikrobus_logWrite( "  ... system init done ...  ", _LOG_LINE );
	MOV.B	#2, W11
	MOV	#lo_addr(?lstr1_Click_3D_Hall_3_DSPIC), W10
	CALL	_mikrobus_logWrite
;Click_3D_Hall_3_DSPIC.c,46 :: 		}
L_end_systemInit:
	POP	W12
	POP	W11
	POP	W10
	RETURN
; end of _systemInit

_applicationInit:

;Click_3D_Hall_3_DSPIC.c,48 :: 		void applicationInit( )
;Click_3D_Hall_3_DSPIC.c,50 :: 		c3dhall3_spiDriverInit( (T_C3DHALL3_P)&_MIKROBUS1_GPIO, (T_C3DHALL3_P)&_MIKROBUS1_SPI );
	PUSH	W10
	PUSH	W11
	MOV	#lo_addr(__MIKROBUS1_SPI), W11
	MOV	#lo_addr(__MIKROBUS1_GPIO), W10
	CALL	_c3dhall3_spiDriverInit
;Click_3D_Hall_3_DSPIC.c,52 :: 		Delay_ms(500);
	MOV	#11, W8
	MOV	#11309, W7
L_applicationInit2:
	DEC	W7
	BRA NZ	L_applicationInit2
	DEC	W8
	BRA NZ	L_applicationInit2
;Click_3D_Hall_3_DSPIC.c,54 :: 		c3dhall3_initilaziation( );
	CALL	_c3dhall3_initilaziation
;Click_3D_Hall_3_DSPIC.c,56 :: 		mikrobus_logWrite( "... application init done ...  ", _LOG_LINE );
	MOV.B	#2, W11
	MOV	#lo_addr(?lstr2_Click_3D_Hall_3_DSPIC), W10
	CALL	_mikrobus_logWrite
;Click_3D_Hall_3_DSPIC.c,57 :: 		}
L_end_applicationInit:
	POP	W11
	POP	W10
	RETURN
; end of _applicationInit

_applicationTask:

;Click_3D_Hall_3_DSPIC.c,59 :: 		void applicationTask( )
;Click_3D_Hall_3_DSPIC.c,61 :: 		c3dhall3_OUT_XYZ( &axes_xyz[0] );
	PUSH	W10
	PUSH	W11
	MOV	#lo_addr(_axes_xyz), W10
	CALL	_c3dhall3_OUT_XYZ
;Click_3D_Hall_3_DSPIC.c,63 :: 		mikrobus_logWrite( " X:", _LOG_TEXT );
	MOV.B	#1, W11
	MOV	#lo_addr(?lstr3_Click_3D_Hall_3_DSPIC), W10
	CALL	_mikrobus_logWrite
;Click_3D_Hall_3_DSPIC.c,64 :: 		IntToStr( axes_xyz[0], text );
	MOV	#lo_addr(_text), W11
	MOV	_axes_xyz, W10
	CALL	_IntToStr
;Click_3D_Hall_3_DSPIC.c,65 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	MOV.B	#1, W11
	MOV	#lo_addr(_text), W10
	CALL	_mikrobus_logWrite
;Click_3D_Hall_3_DSPIC.c,66 :: 		mikrobus_logWrite( " Y:", _LOG_TEXT );
	MOV.B	#1, W11
	MOV	#lo_addr(?lstr4_Click_3D_Hall_3_DSPIC), W10
	CALL	_mikrobus_logWrite
;Click_3D_Hall_3_DSPIC.c,67 :: 		IntToStr( axes_xyz[1], text );
	MOV	#lo_addr(_text), W11
	MOV	_axes_xyz+2, W10
	CALL	_IntToStr
;Click_3D_Hall_3_DSPIC.c,68 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	MOV.B	#1, W11
	MOV	#lo_addr(_text), W10
	CALL	_mikrobus_logWrite
;Click_3D_Hall_3_DSPIC.c,69 :: 		mikrobus_logWrite( " Z:", _LOG_TEXT );
	MOV.B	#1, W11
	MOV	#lo_addr(?lstr5_Click_3D_Hall_3_DSPIC), W10
	CALL	_mikrobus_logWrite
;Click_3D_Hall_3_DSPIC.c,70 :: 		IntToStr( axes_xyz[2], text );
	MOV	#lo_addr(_text), W11
	MOV	_axes_xyz+4, W10
	CALL	_IntToStr
;Click_3D_Hall_3_DSPIC.c,71 :: 		mikrobus_logWrite( text, _LOG_LINE );
	MOV.B	#2, W11
	MOV	#lo_addr(_text), W10
	CALL	_mikrobus_logWrite
;Click_3D_Hall_3_DSPIC.c,73 :: 		Delay_ms(100);
	MOV	#3, W8
	MOV	#2261, W7
L_applicationTask4:
	DEC	W7
	BRA NZ	L_applicationTask4
	DEC	W8
	BRA NZ	L_applicationTask4
;Click_3D_Hall_3_DSPIC.c,74 :: 		}
L_end_applicationTask:
	POP	W11
	POP	W10
	RETURN
; end of _applicationTask

_main:
	MOV	#2048, W15
	MOV	#6142, W0
	MOV	WREG, 32
	MOV	#1, W0
	MOV	WREG, 52
	MOV	#4, W0
	IOR	68

;Click_3D_Hall_3_DSPIC.c,76 :: 		void main( )
;Click_3D_Hall_3_DSPIC.c,78 :: 		systemInit( );
	CALL	_systemInit
;Click_3D_Hall_3_DSPIC.c,79 :: 		applicationInit( );
	CALL	_applicationInit
;Click_3D_Hall_3_DSPIC.c,81 :: 		while (1)
L_main6:
;Click_3D_Hall_3_DSPIC.c,83 :: 		applicationTask( );
	CALL	_applicationTask
;Click_3D_Hall_3_DSPIC.c,84 :: 		}
	GOTO	L_main6
;Click_3D_Hall_3_DSPIC.c,85 :: 		}
L_end_main:
L__main_end_loop:
	BRA	L__main_end_loop
; end of _main
