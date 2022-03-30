--------------------------------------------------------------------------------
-- FICHERO     : LeerCadenas_Con_Get.adb
-- COMETIDO    : Tipos Float y precisión. Comparacion de igualdad
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.Text_IO; use Ada.Text_IO;

procedure LeerCadenas_Con_Get is
   sLinea : String (1..5);		--  String de tamanio fijo (5 caracteres)
   nLong  : Natural ;			-- parámetro de salida: numero de caracteres introducidos
   cLetra : Character ;
begin
   New_line ;
   put ("La variable es de 5 caracteres") ;
   New_line ;
   New_line ;
   put ("-- no se va a utilizar skip_Line --") ;
   New_line ;

   Put ("   Introduce una frase: ");	-- Introduce frase
   Get (sLinea) ;
   -- Skip_line  ;

   New_line ;
   Put ("                 Leida: ");
   Put_Line('#' & sLinea & '#' );	-- Lengu
   New_Line ;

   Put (" Introduce un caracter: ");	-- Introduce un caracter
   Get (cletra) ;
   -- Skip_line  ;
   Put ("                 Leido: ");
   Put_Line('#' & cLetra & '#' );	-- A
   New_line ;

   Put ("  Introduce otra frase: ");	-- Introduce frase
   Get_Line (sLinea, nLong) ;
   -- Skip_line ;
   Put ("            Leida otra: ");
   Put_Line('#' & sLinea(1..nLong) & '#');	-- Lengu
   New_line ;

   Put ("   Introduce una frase: ");	-- Introduce frase
   Get (sLinea) ;
   -- Skip_line ;
   Put ("                 Leida: ");
   Put_Line('#' & sLinea & '#' );	-- Lengu
end LeerCadenas_Con_Get ;
