--------------------------------------------------------------------------------
-- FICHERO     : Operador_Potencia.adb
-- COMETIDO    : Comprobar uso del operador potencia
-- AUTOR       : Fabi�n L�pez
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
WITH Text_IO,  Ada.Integer_Text_IO;
USE  Text_IO,  Ada.Integer_Text_IO;

procedure Operador_Potencia is
   nN�mero : Natural ;
   fN�mero : Float ;
   iN�mero : Integer ;
begin
   nN�mero  := 3 ** 3 ;			-- Correcto
   fN�mero := 3.0  ** 3 ;		-- Correcto
   iN�mero := 2 ** ( -2 ) ;		-- Error compilaci�n
   fN�mero := 3.0 ** -2  ;		-- Error compilaci�n
   fN�mero := 3 ** ( -2) ;		-- Error compilaci�n
   fN�mero := 3.0 ** ( -2) ;
   fN�mero := 3.0 ** ( -2.5) ;		-- Error de compilaci�n Exponente debe ser tipo Natural
end Operador_Potencia ;
