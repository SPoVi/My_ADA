--------------------------------------------------------------------------------
-- FICHERO     : Ejemplo_Get_Float.adb
-- COMETIDO    : Formatos de Put para float
-- AUTOR       : Fabión López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.Text_io ;        use Ada.Text_io ;
with Ada.Numerics ;       use Ada.Numerics ;
with Ada.Float_Text_io ;  use Ada.Float_Text_io ;

Procedure ConstantesMatematicas is
   fNúmero : Float;
begin
   put ("Valor del numero  e: ") ;
   put (e, Fore => 3, Aft =>15, Exp => 0) ;
   New_line ;
   
   put ("Valor del numero pi: ") ;
   put (pi, Fore => 3, Aft =>15, Exp => 0) ;

   New_line ;
   
   fNúmero := Pi * e + 2.0 ;				-- fNúmero := 10.54
end  ConstantesMatematicas ; 
