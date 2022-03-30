--------------------------------------------------------------------------------
-- FICHERO     : prueba_Si_Enumerados.adb
-- COMETIDO    : Diferencia entre declarar Tipos enumerados y no declararlos
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with text_IO ; use text_IO ;
procedure prueba_Si_Enumerados is

      type  T_ColorSem  is  (Rojo, Verde, Amarillo) ;
      type  T_ColorPrimario  is (Rojo, Verde, Azul) ;
      Semaforo : T_ColorSem ;
      ColorPixel : T_ColorPrimario ;


begin


   Semaforo   := T_ColorSem'(Rojo) ; 	-- Correcto
   ColorPixel := T_ColorPrimario'(Rojo) ; 	-- Correcto
   ColorPixel := T_ColorPrimario'(Semaforo) ; 	-- Incorrecto??

end prueba_Si_Enumerados  ;
