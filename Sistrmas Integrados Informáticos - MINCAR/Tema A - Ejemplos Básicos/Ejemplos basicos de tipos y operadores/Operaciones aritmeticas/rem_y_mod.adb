--------------------------------------------------------------------------------
-- FICHERO     : Rem_y_Mod
-- COMETIDO    : Comprobar las diferencias entre REM y MOD
-- AUTOR       : Fabián López
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 09-10-2018 - Final = 13-10-2018
--------------------------------------------------------------------------------with text_IO ; use text_IO ;

with Ada.Text_IO ;         use Ada.Text_IO ;

procedure rem_y_mod is
   iResto, iModulo : Integer ;
begin

   -- Rem: el resultado tiene el signo del dividendo

   put_line ("N = A rem B => Tiene el mismo signo que A") ;
   put_line ("N = A rem B => Dividendo = divisor * cociente + Resto") ;
   new_line ;
   iResto :=    7   rem   3    ;
   put_line ("  7   rem   3    = " & Integer'Image(iResto)) ;

   iResto :=  (-7)  rem   3    ;
   put_line ("(-7)  rem   3    = " & Integer'Image(iResto)) ;

   iResto :=    7   rem   (- 3)    ;
   put_line ("  7   rem   (-3) = " & Integer'Image(iResto)) ;

   iResto :=   (-7) rem   (- 3)    ;
   put_line ("(-7)  rem   (-3) = " & Integer'Image(iResto)) ;

   new_line ;
   iResto :=   -7   rem   3    ;
   put_line (" -7   rem   3    = " & Integer'Image(iResto)) ;

   iResto :=    -7  rem   (- 3)    ;
   put_line (" -7   rem   (-3) = " & Integer'Image(iResto)) ;



   new_line ;
   new_line ;
   -- Mod: el resultado tiene el signo del divisor
   put_line ("N = A rem B => Tiene el mismo signo que B y un valor absoluto menor") ;
   put_line ("N = A rem B => existe un número entero, N, tal que: A = B * N + (A mod B)") ;
   new_line ;
   iModulo :=   7   mod   3    ;
   put_line ("  7   mod   3    = " & Integer'Image(iModulo)) ;

   iModulo := (-7)  mod   3    ;
   put_line ("(-7)  mod   3    = " & Integer'Image(iModulo)) ;

   iModulo :=   7   mod   (- 3)    ;
   put_line ("  7   mod   (-3) = " & Integer'Image(iModulo)) ;

   iModulo := (-7)  mod   (-3)    ;
   put_line ("(-7)  mod   (-3) = " & Integer'Image(iModulo)) ;

   New_line ;
   iModulo := (-7)  mod   3    ;
   put_line ("(-7)  mod   3    = " & Integer'Image(iModulo)) ;

   iModulo := (-7)  mod   (- 3)    ;
   put_line ("(-7)  mod   (-3) = " & Integer'Image(iModulo)) ;

end rem_y_mod ;
