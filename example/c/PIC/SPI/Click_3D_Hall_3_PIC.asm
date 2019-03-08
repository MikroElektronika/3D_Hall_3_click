
_systemInit:

;Click_3D_Hall_3_PIC.c,32 :: 		void systemInit( )
;Click_3D_Hall_3_PIC.c,34 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
	CLRF        FARG_mikrobus_gpioInit_bus+0 
	MOVLW       7
	MOVWF       FARG_mikrobus_gpioInit_pin+0 
	MOVLW       1
	MOVWF       FARG_mikrobus_gpioInit_direction+0 
	CALL        _mikrobus_gpioInit+0, 0
;Click_3D_Hall_3_PIC.c,35 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_RST_PIN, _GPIO_OUTPUT );
	CLRF        FARG_mikrobus_gpioInit_bus+0 
	MOVLW       1
	MOVWF       FARG_mikrobus_gpioInit_pin+0 
	CLRF        FARG_mikrobus_gpioInit_direction+0 
	CALL        _mikrobus_gpioInit+0, 0
;Click_3D_Hall_3_PIC.c,36 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN, _GPIO_OUTPUT );
	CLRF        FARG_mikrobus_gpioInit_bus+0 
	MOVLW       2
	MOVWF       FARG_mikrobus_gpioInit_pin+0 
	CLRF        FARG_mikrobus_gpioInit_direction+0 
	CALL        _mikrobus_gpioInit+0, 0
;Click_3D_Hall_3_PIC.c,38 :: 		mikrobus_spiInit( _MIKROBUS1, &_C3DHALL3_SPI_CFG[0] );
	CLRF        FARG_mikrobus_spiInit_bus+0 
	MOVLW       __C3DHALL3_SPI_CFG+0
	MOVWF       FARG_mikrobus_spiInit_cfg+0 
	MOVLW       hi_addr(__C3DHALL3_SPI_CFG+0)
	MOVWF       FARG_mikrobus_spiInit_cfg+1 
	MOVLW       higher_addr(__C3DHALL3_SPI_CFG+0)
	MOVWF       FARG_mikrobus_spiInit_cfg+2 
	CALL        _mikrobus_spiInit+0, 0
;Click_3D_Hall_3_PIC.c,40 :: 		mikrobus_logInit( _LOG_USBUART, 9600 );
	MOVLW       16
	MOVWF       FARG_mikrobus_logInit_port+0 
	MOVLW       128
	MOVWF       FARG_mikrobus_logInit_baud+0 
	MOVLW       37
	MOVWF       FARG_mikrobus_logInit_baud+1 
	MOVLW       0
	MOVWF       FARG_mikrobus_logInit_baud+2 
	MOVWF       FARG_mikrobus_logInit_baud+3 
	CALL        _mikrobus_logInit+0, 0
;Click_3D_Hall_3_PIC.c,42 :: 		Delay_ms(100);
	MOVLW       9
	MOVWF       R11, 0
	MOVLW       30
	MOVWF       R12, 0
	MOVLW       228
	MOVWF       R13, 0
L_systemInit0:
	DECFSZ      R13, 1, 1
	BRA         L_systemInit0
	DECFSZ      R12, 1, 1
	BRA         L_systemInit0
	DECFSZ      R11, 1, 1
	BRA         L_systemInit0
	NOP
;Click_3D_Hall_3_PIC.c,44 :: 		mikrobus_logWrite( "  ... system init done ...  ", _LOG_LINE );
	MOVLW       ?lstr1_Click_3D_Hall_3_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr1_Click_3D_Hall_3_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_3D_Hall_3_PIC.c,45 :: 		}
L_end_systemInit:
	RETURN      0
; end of _systemInit

_applicationInit:

;Click_3D_Hall_3_PIC.c,47 :: 		void applicationInit( )
;Click_3D_Hall_3_PIC.c,49 :: 		c3dhall3_spiDriverInit( (T_C3DHALL3_P)&_MIKROBUS1_GPIO, (T_C3DHALL3_P)&_MIKROBUS1_SPI );
	MOVLW       __MIKROBUS1_GPIO+0
	MOVWF       FARG_c3dhall3_spiDriverInit_gpioObj+0 
	MOVLW       hi_addr(__MIKROBUS1_GPIO+0)
	MOVWF       FARG_c3dhall3_spiDriverInit_gpioObj+1 
	MOVLW       higher_addr(__MIKROBUS1_GPIO+0)
	MOVWF       FARG_c3dhall3_spiDriverInit_gpioObj+2 
	MOVLW       __MIKROBUS1_SPI+0
	MOVWF       FARG_c3dhall3_spiDriverInit_spiObj+0 
	MOVLW       hi_addr(__MIKROBUS1_SPI+0)
	MOVWF       FARG_c3dhall3_spiDriverInit_spiObj+1 
	MOVLW       higher_addr(__MIKROBUS1_SPI+0)
	MOVWF       FARG_c3dhall3_spiDriverInit_spiObj+2 
	CALL        _c3dhall3_spiDriverInit+0, 0
;Click_3D_Hall_3_PIC.c,51 :: 		Delay_ms(500);
	MOVLW       41
	MOVWF       R11, 0
	MOVLW       150
	MOVWF       R12, 0
	MOVLW       127
	MOVWF       R13, 0
L_applicationInit1:
	DECFSZ      R13, 1, 1
	BRA         L_applicationInit1
	DECFSZ      R12, 1, 1
	BRA         L_applicationInit1
	DECFSZ      R11, 1, 1
	BRA         L_applicationInit1
;Click_3D_Hall_3_PIC.c,53 :: 		c3dhall3_configuration( );
	CALL        _c3dhall3_configuration+0, 0
;Click_3D_Hall_3_PIC.c,55 :: 		mikrobus_logWrite( "... application init done ...  ", _LOG_LINE );
	MOVLW       ?lstr2_Click_3D_Hall_3_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr2_Click_3D_Hall_3_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_3D_Hall_3_PIC.c,56 :: 		}
L_end_applicationInit:
	RETURN      0
; end of _applicationInit

_applicationTask:

;Click_3D_Hall_3_PIC.c,58 :: 		void applicationTask( )
;Click_3D_Hall_3_PIC.c,60 :: 		c3dhall3_readXYZ( &axes_xyz[0] );
	MOVLW       _axes_xyz+0
	MOVWF       FARG_c3dhall3_readXYZ_OUT_XYZ+0 
	MOVLW       hi_addr(_axes_xyz+0)
	MOVWF       FARG_c3dhall3_readXYZ_OUT_XYZ+1 
	CALL        _c3dhall3_readXYZ+0, 0
;Click_3D_Hall_3_PIC.c,62 :: 		mikrobus_logWrite( " X:", _LOG_TEXT );
	MOVLW       ?lstr3_Click_3D_Hall_3_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr3_Click_3D_Hall_3_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_3D_Hall_3_PIC.c,63 :: 		IntToStr( axes_xyz[0], text );
	MOVF        _axes_xyz+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _axes_xyz+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _text+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Click_3D_Hall_3_PIC.c,64 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	MOVLW       _text+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_3D_Hall_3_PIC.c,65 :: 		mikrobus_logWrite( " Y:", _LOG_TEXT );
	MOVLW       ?lstr4_Click_3D_Hall_3_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr4_Click_3D_Hall_3_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_3D_Hall_3_PIC.c,66 :: 		IntToStr( axes_xyz[1], text );
	MOVF        _axes_xyz+2, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _axes_xyz+3, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _text+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Click_3D_Hall_3_PIC.c,67 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	MOVLW       _text+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_3D_Hall_3_PIC.c,68 :: 		mikrobus_logWrite( " Z:", _LOG_TEXT );
	MOVLW       ?lstr5_Click_3D_Hall_3_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr5_Click_3D_Hall_3_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_3D_Hall_3_PIC.c,69 :: 		IntToStr( axes_xyz[2], text );
	MOVF        _axes_xyz+4, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _axes_xyz+5, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _text+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Click_3D_Hall_3_PIC.c,70 :: 		mikrobus_logWrite( text, _LOG_LINE );
	MOVLW       _text+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_3D_Hall_3_PIC.c,72 :: 		Delay_ms(100);
	MOVLW       9
	MOVWF       R11, 0
	MOVLW       30
	MOVWF       R12, 0
	MOVLW       228
	MOVWF       R13, 0
L_applicationTask2:
	DECFSZ      R13, 1, 1
	BRA         L_applicationTask2
	DECFSZ      R12, 1, 1
	BRA         L_applicationTask2
	DECFSZ      R11, 1, 1
	BRA         L_applicationTask2
	NOP
;Click_3D_Hall_3_PIC.c,73 :: 		}
L_end_applicationTask:
	RETURN      0
; end of _applicationTask

_main:

;Click_3D_Hall_3_PIC.c,75 :: 		void main( )
;Click_3D_Hall_3_PIC.c,77 :: 		systemInit( );
	CALL        _systemInit+0, 0
;Click_3D_Hall_3_PIC.c,78 :: 		applicationInit( );
	CALL        _applicationInit+0, 0
;Click_3D_Hall_3_PIC.c,80 :: 		while (1)
L_main3:
;Click_3D_Hall_3_PIC.c,82 :: 		applicationTask( );
	CALL        _applicationTask+0, 0
;Click_3D_Hall_3_PIC.c,83 :: 		}
	GOTO        L_main3
;Click_3D_Hall_3_PIC.c,84 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
