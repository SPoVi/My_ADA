--------------------------------------------------------------------------------
-- FICHERO     : T4P16.adb
-- COMETIDO    : Bucles FOR anidados. Matrices.
-- AUTOR       : Sergio Pons
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 26-10-2019 - Final = 26-10-2019
--------------------------------------------------------------------------------
-- ENUNCIADO
-- 16.  Escribe  un  programa  que,  mediante  dos  bucles  anidados,
--      genere  en  pantalla  la siguiente figura:

-- * * * * *
-- * * * *
-- * * *
-- * *
-- *
--------------------------------------------------------------------------------

-- librerias
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure T4P16 is
   -- declaraciones
   aux: Integer := 5; --numero de columnas

begin
   -- instrucciones

   for I in 1 ..5 loop              -- numero de filas
      for J in  reverse 1 .. aux loop -- numero de columnas
         Put("* ");
      end loop;
      aux := aux - 1;
      New_Line;
   end loop;

end T4P16;
