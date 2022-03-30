--------------------------------------------------------------------------------
-- FICHERO     : Ejemplo_Get_Float.adb
-- COMETIDO    : Formatos de Put para float
-- AUTOR       : Fabi�n L�pez
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.Text_io ;        use Ada.Text_io ;
with Ada.Numerics ;       use Ada.Numerics ;
with Ada.Float_Text_io ;  use Ada.Float_Text_io ;

Procedure ConstantesMatematicas is
   fN�mero : Float;
begin
   put ("Valor del numero  e: ") ;
   put (e, Fore => 3, Aft =>15, Exp => 0) ;
   New_line ;
   
   put ("Valor del numero pi: ") ;
   put (pi, Fore => 3, Aft =>15, Exp => 0) ;

   New_line ;
   
   fN�mero := Pi * e + 2.0 ;				-- fN�mero := 10.54
end  ConstantesMatematicas ; 
