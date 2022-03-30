--------------------------------------------------------------------------------
-- FICHERO     : T4P14.adb
-- COMETIDO    : Control de flujo. CASE.
-- AUTOR       : Sergio Pons
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 26-10-2019 - Final =
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- DESCRIPCION : 14. Utilizando la sentencia case, escribe un programa que lea
-- un número entre 1 y 12 que representa uno de los meses del año y genere en
-- pantalla un mensaje que nos diga la estación del año asociada. NOTA: Para el
-- programa, la primavera abarca los meses de Marzo, Abril y Mayo; el verano,
-- los meses de Junio, Julio y Agosto; el otoño, los meses deSeptiembre, Octubre
-- y Noviembre;  y el invierno, los meses de Diciembre, Enero y Febrero.

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Librerias

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


procedure T4P14 is
   -- declaraciones

   -- Variables
   num: Integer;


begin
   -- instrucciones

   -- Loop de verificacion de entrada
   loop
      Put("Introduce el numero del mes (1 .. 12): ");
      get(num);
      exit when num in 1 .. 12;
      Put_Line("Valor no valido. Vuelve a intentarlo");
   end loop;

   case num is
      when 1 | 2 | 12 =>
         Put_Line("La estacion el mes escogido es INVIERNO");
      when 5 | 3  | 4 =>
         Put_Line("La estacion de mes escogido es PRIMAVERA");
      when 8 | 6 | 7 =>
         Put_Line("La estacion del mes escogido es VERANO");
      when 11 | 9 | 10 =>
         Put_Line("La estacion del mes escogido es OTOÑO");
      when others =>
         null;
   end case;

end T4P14;
