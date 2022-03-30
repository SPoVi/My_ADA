--------------------------------------------------------------------------------
-- FICHERO     : Ejemplo_Subtipo.adb
-- COMETIDO    : Ejemplo de subtipo utilizando rangos
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
WITH Text_IO,  Ada.Integer_Text_IO;
USE  Text_IO,  Ada.Integer_Text_IO;


procedure Ejemplo_Subtipo is
   subtype T_spDiaMes is Positive range 1..31; 	--  Nuevo subtipo Positive T_spDiaMes
   spDiaMes : T_spDiaMes;			--  Declaración de variable de tipo T_spDiaMes;
   subtype T_spDiaAño is Positive range 1..365; 	--  Nuevo subtipo Positive T_spDiaAño
   spDiaAño : T_spDiaAño;			--  Declaración de variable de tipo T_spDiaAño;

   cEspera : Character ;
begin
   spDiaAño := 100;
   spDiaMes := spDiaAño;	--  Warning no permite ejecutar

   spDiaAño := 20;
   spDiaAño := spDiaMes;	--  Correcto

   put (spDiaMes) ;
   put (spDiaAño) ;

   New_line ;
   Put ("Final del programa ") ;
   get_immediate (cEspera) ;

end Ejemplo_Subtipo;
