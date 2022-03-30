--------------------------------------------------------------------------------
-- FICHERO     : Ejemplo_Get_Integer.adb
-- COMETIDO    : Get y Put para Integer
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.Text_IO ;        use Ada.Text_IO ;        -- Put_Line
with Ada.Integer_Text_IO ; use Ada.Integer_Text_IO ;

procedure Ejemplo_Get_Integer is
   iNum : Integer;
begin
   Put ("Introducir un valor entero: ") ;
   Get (iNum) ;
   New_line ;
   Put ("               Valor leido: ") ;
   Put (iNum) ;
   New_line ;
end Ejemplo_Get_Integer;
