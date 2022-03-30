--------------------------------------------------------------------------------
-- FICHERO     : Ejemplo_Get_Float.adb
-- COMETIDO    : Get y Put para float
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------
with Ada.Text_IO ;       use Ada.Text_IO;        --Put_Line
with Ada.Float_Text_IO ; use Ada.Float_Text_IO ;

procedure Ejemplo_Get_Float is
   fNum : Float ;
begin
   New_line ;
   Put ("Introducir con decimales: ") ;
   Get (fNum) ;
   New_Line ;
   
   Put ("Valor leido->   Put (fNum)                                  : ") ;
   Put (fNum) ;
   New_line ;
   Put ("Valor leido->   Put (fNum, Fore => 4)                       : ") ;
   Put (fNum, Fore => 4) ;
   New_line ;
   Put ("Valor leido->   Put (fNum, Fore => 4, Aft => 3 , Exp => 0 ) : ") ;
   Put (fNum, Fore => 4, Aft => 3 , Exp => 0) ;
   New_line ;
   Put ("Valor leido->   Put (fNum, Fore => 4, Aft => 3 , Exp => 2 ) : ") ;
   Put (fNum, Fore => 4, Aft => 3 , Exp => 2) ;
   New_line ;
   
end Ejemplo_Get_Float;
