_systemInit:
;Click_3D_Hall_3_FT90x.c,32 :: 		void systemInit( )
;Click_3D_Hall_3_FT90x.c,34 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
LDK.L	R2, #1
LDK.L	R1, #7
LDK.L	R0, #0
CALL	_mikrobus_gpioInit+0
;Click_3D_Hall_3_FT90x.c,35 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_RST_PIN, _GPIO_OUTPUT );
LDK.L	R2, #0
LDK.L	R1, #1
LDK.L	R0, #0
CALL	_mikrobus_gpioInit+0
;Click_3D_Hall_3_FT90x.c,36 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN, _GPIO_OUTPUT );
LDK.L	R2, #0
LDK.L	R1, #2
LDK.L	R0, #0
CALL	_mikrobus_gpioInit+0
;Click_3D_Hall_3_FT90x.c,38 :: 		mikrobus_i2cInit( _MIKROBUS1, &_C3DHALL3_I2C_CFG[0] );
LDK.L	R1, #__C3DHALL3_I2C_CFG+0
LDK.L	R0, #0
CALL	_mikrobus_i2cInit+0
;Click_3D_Hall_3_FT90x.c,40 :: 		mikrobus_logInit( _LOG_USBUART, 9600 );
LDK.L	R1, #9600
LDK.L	R0, #16
CALL	_mikrobus_logInit+0
;Click_3D_Hall_3_FT90x.c,42 :: 		Delay_ms(100);
LPM.L	R28, #3333331
NOP	
L_systemInit0:
SUB.L	R28, R28, #1
CMP.L	R28, #0
JMPC	R30, Z, #0, L_systemInit0
JMP	$+8
	#3333331
NOP	
NOP	
;Click_3D_Hall_3_FT90x.c,44 :: 		mikrobus_logWrite( "  ... system init done ...  ", _LOG_LINE );
LDK.L	R0, #?lstr1_Click_3D_Hall_3_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_3D_Hall_3_FT90x.c,45 :: 		}
L_end_systemInit:
RETURN	
; end of _systemInit
_applicationInit:
;Click_3D_Hall_3_FT90x.c,47 :: 		void applicationInit( )
;Click_3D_Hall_3_FT90x.c,49 :: 		c3dhall3_i2cDriverInit( (T_C3DHALL3_P)&_MIKROBUS1_GPIO, (T_C3DHALL3_P)&_MIKROBUS1_I2C, 0x1E );
LDK.L	R2, #30
LDK.L	R1, #__MIKROBUS1_I2C+0
LDK.L	R0, #__MIKROBUS1_GPIO+0
CALL	_c3dhall3_i2cDriverInit+0
;Click_3D_Hall_3_FT90x.c,51 :: 		Delay_ms(500);
LPM.L	R28, #16666665
NOP	
L_applicationInit2:
SUB.L	R28, R28, #1
CMP.L	R28, #0
JMPC	R30, Z, #0, L_applicationInit2
JMP	$+8
	#16666665
;Click_3D_Hall_3_FT90x.c,53 :: 		c3dhall3_configuration( );
CALL	_c3dhall3_configuration+0
;Click_3D_Hall_3_FT90x.c,55 :: 		mikrobus_logWrite( "... application init done ...  ", _LOG_LINE );
LDK.L	R0, #?lstr2_Click_3D_Hall_3_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_3D_Hall_3_FT90x.c,56 :: 		}
L_end_applicationInit:
RETURN	
; end of _applicationInit
_applicationTask:
;Click_3D_Hall_3_FT90x.c,58 :: 		void applicationTask( )
;Click_3D_Hall_3_FT90x.c,60 :: 		c3dhall3_readXYZ( &axes_xyz[0] );
LDK.L	R0, #_axes_xyz+0
CALL	_c3dhall3_readXYZ+0
;Click_3D_Hall_3_FT90x.c,62 :: 		mikrobus_logWrite( " X:", _LOG_TEXT );
LDK.L	R0, #?lstr3_Click_3D_Hall_3_FT90x+0
LDK.L	R1, #1
CALL	_mikrobus_logWrite+0
;Click_3D_Hall_3_FT90x.c,63 :: 		IntToStr( axes_xyz[0], text );
LDA.S	R0, _axes_xyz+0
BEXTS.L	R0, R0, #0
LDK.L	R1, #_text+0
CALL	_IntToStr+0
;Click_3D_Hall_3_FT90x.c,64 :: 		mikrobus_logWrite( text, _LOG_TEXT );
LDK.L	R1, #1
LDK.L	R0, #_text+0
CALL	_mikrobus_logWrite+0
;Click_3D_Hall_3_FT90x.c,65 :: 		mikrobus_logWrite( " Y:", _LOG_TEXT );
LDK.L	R0, #?lstr4_Click_3D_Hall_3_FT90x+0
LDK.L	R1, #1
CALL	_mikrobus_logWrite+0
;Click_3D_Hall_3_FT90x.c,66 :: 		IntToStr( axes_xyz[1], text );
LDA.S	R0, _axes_xyz+2
BEXTS.L	R0, R0, #0
LDK.L	R1, #_text+0
CALL	_IntToStr+0
;Click_3D_Hall_3_FT90x.c,67 :: 		mikrobus_logWrite( text, _LOG_TEXT );
LDK.L	R1, #1
LDK.L	R0, #_text+0
CALL	_mikrobus_logWrite+0
;Click_3D_Hall_3_FT90x.c,68 :: 		mikrobus_logWrite( " Z:", _LOG_TEXT );
LDK.L	R0, #?lstr5_Click_3D_Hall_3_FT90x+0
LDK.L	R1, #1
CALL	_mikrobus_logWrite+0
;Click_3D_Hall_3_FT90x.c,69 :: 		IntToStr( axes_xyz[2], text );
LDA.S	R0, _axes_xyz+4
BEXTS.L	R0, R0, #0
LDK.L	R1, #_text+0
CALL	_IntToStr+0
;Click_3D_Hall_3_FT90x.c,70 :: 		mikrobus_logWrite( text, _LOG_LINE );
LDK.L	R1, #2
LDK.L	R0, #_text+0
CALL	_mikrobus_logWrite+0
;Click_3D_Hall_3_FT90x.c,72 :: 		Delay_ms(100);
LPM.L	R28, #3333331
NOP	
L_applicationTask4:
SUB.L	R28, R28, #1
CMP.L	R28, #0
JMPC	R30, Z, #0, L_applicationTask4
JMP	$+8
	#3333331
NOP	
NOP	
;Click_3D_Hall_3_FT90x.c,73 :: 		}
L_end_applicationTask:
RETURN	
; end of _applicationTask
_main:
;Click_3D_Hall_3_FT90x.c,75 :: 		void main( )
LDK.L	SP, #43605
;Click_3D_Hall_3_FT90x.c,77 :: 		systemInit( );
CALL	_systemInit+0
;Click_3D_Hall_3_FT90x.c,78 :: 		applicationInit( );
CALL	_applicationInit+0
;Click_3D_Hall_3_FT90x.c,80 :: 		while (1)
L_main6:
;Click_3D_Hall_3_FT90x.c,82 :: 		applicationTask( );
CALL	_applicationTask+0
;Click_3D_Hall_3_FT90x.c,83 :: 		}
JMP	L_main6
;Click_3D_Hall_3_FT90x.c,84 :: 		}
L_end_main:
L__main_end_loop:
JMP	L__main_end_loop
; end of _main
