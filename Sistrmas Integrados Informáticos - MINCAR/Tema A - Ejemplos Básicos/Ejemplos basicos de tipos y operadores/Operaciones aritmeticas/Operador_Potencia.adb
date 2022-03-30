--------------------------------------------------------------------------------
-- FICHERO     : Operador_Potencia.adb
-- COMETIDO    : Comprobar uso del operador potencia
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
WITH Text_IO,  Ada.Integer_Text_IO;
USE  Text_IO,  Ada.Integer_Text_IO;

procedure Operador_Potencia is
   nNúmero : Natural ;
   fNúmero : Float ;
   iNúmero : Integer ;
begin
   nNúmero  := 3 ** 3 ;			-- Correcto
   fNúmero := 3.0  ** 3 ;		-- Correcto
   iNúmero := 2 ** ( -2 ) ;		-- Error compilación
   fNúmero := 3.0 ** -2  ;		-- Error compilación
   fNúmero := 3 ** ( -2) ;		-- Error compilación
   fNúmero := 3.0 ** ( -2) ;
   fNúmero := 3.0 ** ( -2.5) ;		-- Error de compilación Exponente debe ser tipo Natural
end Operador_Potencia ;
