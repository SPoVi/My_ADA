--------------------------------------------------------------------------------
-- FICHERO     : Ejemplo_Subtipo.adb
-- COMETIDO    : Ejemplo de subtipo utilizando rangos
-- AUTOR       : Fabi�n L�pez
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
WITH Text_IO,  Ada.Integer_Text_IO;
USE  Text_IO,  Ada.Integer_Text_IO;


procedure Ejemplo_Subtipo is
   subtype T_spDiaMes is Positive range 1..31; 	--  Nuevo subtipo Positive T_spDiaMes
   spDiaMes : T_spDiaMes;			--  Declaraci�n de variable de tipo T_spDiaMes;
   subtype T_spDiaA�o is Positive range 1..365; 	--  Nuevo subtipo Positive T_spDiaA�o
   spDiaA�o : T_spDiaA�o;			--  Declaraci�n de variable de tipo T_spDiaA�o;

   cEspera : Character ;
begin
   spDiaA�o := 100;
   spDiaMes := spDiaA�o;	--  Warning no permite ejecutar

   spDiaA�o := 20;
   spDiaA�o := spDiaMes;	--  Correcto

   put (spDiaMes) ;
   put (spDiaA�o) ;

   New_line ;
   Put ("Final del programa ") ;
   get_immediate (cEspera) ;

end Ejemplo_Subtipo;
