--------------------------------------------------------------------------------
-- FICHERO     : Ejemplo_NO_Enumerado.adb
-- COMETIDO    : Ejemplo de si no se pudieran utilizar enuerados
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------

with ada.text_IO ; use ada.text_IO ;

procedure Ejemplo_NO_Enumerado is
         Rojo : constant  Natural := 0 ;
        Verde : constant  Natural := 1 ; 
     Amarillo : constant  Natural := 2 ;
         Azul : constant  Natural := 3 ;
		 
   Semaforo: Natural ;   -- Quiero valores: 0, 1, 2
 ColorPixel: Natural ; 	 -- Quiero valores: 0, 1, 3
begin

 Semaforo := Amarillo ;     -- Correcto
 Semaforo := 2 ;            -- Correcto
ColorPixel := Semaforo ;    -- Correcto ?????

end Ejemplo_NO_Enumerado;




