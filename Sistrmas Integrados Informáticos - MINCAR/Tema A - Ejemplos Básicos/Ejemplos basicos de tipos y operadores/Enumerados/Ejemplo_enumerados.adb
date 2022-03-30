--------------------------------------------------------------------------------
-- FICHERO     : Ejemplo_Enumerado.adb
-- COMETIDO    : Ejemplo para probar tipos enumerados
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------

with ada.text_IO ; use ada.text_IO ;

procedure Ejemplo_enumerados is
   type  T_ColorSem       is (Rojo, Verde, Ambar) ;
   type  T_ColorPrimario  is (Rojo, Verde, Azul) ;

     Semaforo : T_ColorSem ;
   ColorPixel : T_ColorPrimario ;

--        Color : Natural ;
--         Rojo : Natural := 0 ;
--        Verde : Natural := 1 ;
--     Amarillo : Natural := 2 ;
--         Azul : Natural := 3;

begin

   Semaforo   := Rojo ;                           -- Correcto
   ColorPixel := Rojo ;                           -- Correcto

   Semaforo   := T_ColorSem'(Rojo) ; 	          -- Correcto: qualification
   ColorPixel := T_ColorPrimario'(Rojo) ; 	  -- Correcto: qualification

   -- ColorPixel := T_ColorPrimario (Semaforo) ;     -- Invalida conversión,
                                                     -- no tipos compatibles
                                                     -- ("Conversion")

end Ejemplo_enumerados ;
