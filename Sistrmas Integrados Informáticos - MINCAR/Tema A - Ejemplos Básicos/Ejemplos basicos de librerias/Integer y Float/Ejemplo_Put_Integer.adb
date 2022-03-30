--------------------------------------------------------------------------------
-- FICHERO     : Ejemplo_Put_Integer.adb
-- COMETIDO    : Formatos de Put para Integer
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------

with Ada.Text_IO ;         use Ada.Text_IO ;        -- New_Line;
with Ada.Integer_Text_IO ; use Ada.Integer_Text_IO ;

procedure Ejemplo_Put_Integer is
   I, J : Integer := 2 ;
Begin
   Put (" Put (I)             : ") ;
   Put (I) ; New_Line ;
   Put (" Put (J)             : ") ;
   Put (J) ; New_Line ;
   New_line ;
   Put (" Put (I + J)         : ") ;
   Put (I + J) ; New_Line ;

   Put (" Put (Natural'First) : ") ;
   Put (Natural'First) ; New_Line ;

   Put (" Put (Natural'Last)  : ") ;
   Put (Natural'Last) ; New_Line ;

   Put (" Put (Integer'First) : ") ;
   Put (Integer'First) ; New_Line ;

   Put (" Put (Integer'Last)  : ") ;
   Put (Integer'Last) ; New_Line ;

   Put (" Put (I, 0)          : ") ;
   Put (I, 0) ;      New_Line ;

   Put (" Put (I, 0, 2)       : ") ;
   Put (I, 0, 2) ;  New_Line ;

   Put (" Put (I, Base => 2)  : ") ;
   Put (I, Base => 2) ; New_Line ;
end Ejemplo_Put_Integer ;
