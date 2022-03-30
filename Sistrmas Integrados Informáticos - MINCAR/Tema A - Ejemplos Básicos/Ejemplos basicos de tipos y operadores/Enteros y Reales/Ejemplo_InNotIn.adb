--------------------------------------------------------------------------------
-- FICHERO     : Ejemplo_InNotIn.adb
-- COMETIDO    : Operadores IN y NOT INT
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
WITH Text_IO,  Ada.Integer_Text_IO;
USE  Text_IO,  Ada.Integer_Text_IO;

procedure Ejemplo_InNotIn is

   boResultado : Boolean;
   I : Positive := 23 ;
   K : Integer := - 10 ;
begin
   boResultado := I not in 1..10 ;		-- boResultado := TRUE
   boResultado := I in Positive ;		-- Warning compilación
   boResultado := I'Valid ;
   boResultado := I in Natural ;		-- boResultado := TRUE
   boResultado := K in Natural ;		-- boResultado := FALSE
end Ejemplo_InNotIn ;
