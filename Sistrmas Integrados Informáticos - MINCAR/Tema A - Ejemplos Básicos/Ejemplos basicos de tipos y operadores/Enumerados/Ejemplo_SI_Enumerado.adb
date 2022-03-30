--------------------------------------------------------------------------------
-- FICHERO     : Ejemplo_SI_Enumerado.adb
-- COMETIDO    : Ejemplo de si se pueden utilizar enuerados
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------

with ada.text_IO ; use ada.text_IO ;

procedure Ejemplo_SI_Enumerado is
    type  T_ColorSem  is  (Rojo, Verde, Amarillo) ; 
    type  T_ColorPrimario  is (Rojo, Verde, Azul) ;
	
      Semaforo : T_ColorSem ; 
    ColorPixel : T_ColorPrimario ; 
begin
    Semaforo   := Rojo ;                         -- Correcto
    ColorPixel := Rojo ;                         -- Correcto
    ColorPixel := Semaforo ; 	       -- Incorrecto 
end Ejemplo_SI_Enumerado;


