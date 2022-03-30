--------------------------------------------------------------------------------
-- FICHERO     : prueba_Si_Enumerados.adb
-- COMETIDO    : Diferencia entre declarar Tipos enumerados y no declararlos
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with text_IO ; use text_IO ;
procedure prueba_No_Enumerados is

       Rojo : constant  Natural := 0 ;
   Verde    : constant  Natural := 1 ;
   Amarillo : constant  Natural := 2 ;
   Azul     : constant  Natural := 3 ;

   Semaforo : Natural ;   -- Quiero valores: 0, 1, 2
 ColorPixel : Natural ; 	 -- Quiero valores: 0, 1, 3
begin
 Semaforo  := Amarillo ;     -- Correcto
 Semaforo  := 2 ;                 -- Correcto
ColorPixel := Semaforo ;    -- Correcto ?????
end prueba_No_enumerados ;
