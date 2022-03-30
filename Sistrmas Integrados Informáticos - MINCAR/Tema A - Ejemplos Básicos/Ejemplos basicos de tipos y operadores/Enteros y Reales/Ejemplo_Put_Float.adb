--------------------------------------------------------------------------------
-- FICHERO     : Ejemplo_Get_Float.adb
-- COMETIDO    : Formatos de Put para float
-- AUTOR       : Fabión López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.Numerics ;      use Ada.Numerics ;        --Pi
with Ada.Text_IO ;       use Ada.Text_IO ;         -- New_Line;
with Ada.Float_Text_IO ; use Ada. Float_Text_IO ;

procedure Ejemplo_Put_Float is
begin
   Put_line ("Mostrar el valor del numero PI con diversos formatos") ;
   New_line ;
   put (" Put(Pi)                                : ") ;
   Put(Pi) ; New_Line ;
   
   Put (" Put(Pi + 3.0)                          : ") ;
   Put(Pi + 3.0); New_Line ;
   
   Put (" Put(Pi, Fore => 5)                     : ") ;
   Put(Pi, Fore => 5); New_Line ;
   Put (" Put(Pi, Fore => 5, Aft => 2)           : ") ;
   Put(Pi, Fore => 5, Aft => 2) ; New_Line ;
   
   Put (" Put(Pi, Exp => 1)                      : ") ;
   Put(Pi, Exp => 1); New_Line;
   
   Put (" Put(Pi, Fore => 5, Exp => 0)           : ") ;
   Put(Pi, Fore => 5, Exp => 0) ; New_Line ;
   
   Put (" Put(Pi, Fore => 5,Aft => 2, Exp => 0)  : ") ;
   Put(Pi, Fore => 5, Aft => 2, Exp => 0) ; New_Line;
  
   Put (" Put(Pi, Fore => 5,Aft => 0, Exp => 0)  : ") ;
   Put(Pi, Fore => 5, Aft => 0, Exp => 0); New_Line ;
   
   Put (" Put(-Pi, Fore => 0,Aft => 0, Exp => 0) : ") ;
   Put(-Pi, Fore => 0,Aft => 0, Exp => 0) ; New_Line ;
   
   Put (" Put(-Pi, Fore => 0, Aft => 0)          : ") ;
   Put(-Pi, Fore => 0, Aft => 0) ; New_Line ;
   
   Put (" Put(-Pi, Fore => 0, Aft => 10)         : ") ;
   Put(-Pi, Fore => 0, Aft => 10) ; New_Line ;
end Ejemplo_Put_Float;
