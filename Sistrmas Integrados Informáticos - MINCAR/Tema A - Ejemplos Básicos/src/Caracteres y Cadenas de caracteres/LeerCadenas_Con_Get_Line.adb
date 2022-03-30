--------------------------------------------------------------------------------
-- FICHERO     : LeerCadenas_Con_Get_Line.adb
-- COMETIDO    : Lectura de cadenas de caracteres con Get_Line
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.Text_IO; use Ada.Text_IO;

procedure LeerCadenas_Con_Get_Line is
   sLinea : String (1..5);		--  String de tamanio fijo (5 caracteres)
   nLong  : Natural ;			-- parámetro de salida: numero de caracteres introducidos
begin
   New_line ;
   put ("La variable es de 5 caracteres") ;
   New_line ;

   Put ("Introduce una frase: ");	-- Introduce frase
   Get_Line (sLinea, nLong) ;
   Put ("Leido: ");
   Put_Line(sLinea(1..nLong));	-- Lengu
end LeerCadenas_Con_Get_Line ;
