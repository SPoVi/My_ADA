--------------------------------------------------------------------------------
-- FICHERO     : T5P8.adb
-- COMETIDO    : Subprogramas IN OUT. Tipos y subtipos.
-- AUTOR       : Sergio Pons
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 02-11-2019 - Final = 02-11-2019
--------------------------------------------------------------------------------
-- ENUNCIADO
--  Escribir un programa que lea dos enteros positivos y calcule el cociente y
-- el resto de la  división  del  primero  por  el  segundo  utilizando  el
-- método  de  las  sustracciones sucesivas.
--------------------------------------------------------------------------------

-- librerias
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


procedure T5P8 is
   -- declaraciones globales

   -- Variables a preguntar
   inumerador, idenominador: Integer;
   -- Variables a calcular
   icociente, iresto : Integer:=0;

--------------------------------------------- FUNCION: Sustracciones sucesivas
   function fun_cociente(n: in out Natural; d : Positive) return Integer is
      --num :Natural;

   begin
      n := n -d;

      return n;
   end fun_cociente;

   ------------------------------------------------------------------------------

   ------------------------------------------------------------------------


   ------------------- begin del main
begin
   -- instrucciones

   -- Continuara preguntando hasta que pongas numeros enteros positivos
   main_loop:
   loop

      Put("Introduce el numerador: ");
      get(inumerador);

      put("Introduce el denominador: ");
      get(idenominador);

      if inumerador in Positive and idenominador in Positive then
         exit main_loop;
      else
         Put_Line("Error. Has introducio algo mal. Vuelve a intentarlo");
      end if;
   end loop main_loop;

   -- Llamada a funcion
   while idenominador <= inumerador loop
      inumerador:= fun_cociente(inumerador,idenominador);
      icociente:= icociente + 1;
   end loop ;

   -- Lo que quede sera el resto
   iresto:=inumerador;

   -- Comprueba que la division se ha realizado al menos una vez
   if icociente <= 0 then
      New_Line(1);
      Put_Line("La division no tiene solocion entera");
   else
      New_Line(1);
      Put_Line("La division tiene como resultado: ");
      Put_Line("Cociente: " &Integer'Image(icociente));
      Put_Line("Resto: " &Integer'Image(iresto));
   end if;


end T5P8;
