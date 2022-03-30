--------------------------------------------------------------------------------
-- FICHERO     : T4P15.adb
-- COMETIDO    : Tabla de cuadadrados.
-- AUTOR       : Sergio Pons
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 26-10-2019 - Final =
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- DESCRIPCION :
-- 15. Escribe un programa que nos muestre en pantalla una tabla con los
--     cuadrados de los doce primeros números.

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

-- librerias
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


procedure T4P15 is
   -- declaraciones

   num : Integer;

begin
   -- instrucciones

   Put_Line("------- TABLA -------");
   Put_Line("NUMERO       CUADRADO");
   Put_Line("------       --------");

   for I in 1..12 loop
      num := I**2;
      Put_Line(Integer'Image(I) &"             "& Integer'Image(num));
   end loop;



end T4P15;
