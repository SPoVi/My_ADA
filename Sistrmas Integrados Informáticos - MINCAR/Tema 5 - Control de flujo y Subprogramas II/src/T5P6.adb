--------------------------------------------------------------------------------
-- FICHERO     : T5P6.adb
-- COMETIDO    : Subprogramas. Tipos y subtipos.
-- AUTOR       : Sergio Pons
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 02-11-2019 - Final = 02-11-2019
--------------------------------------------------------------------------------
-- ENUNCIADO
--  Escribir  un  programa  que  calcule  la  potencia  x^n siendo  x  un
-- número  real,  y  n  un  número entero mayor o igual que 0.
--------------------------------------------------------------------------------

-- librerias
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;


procedure T5P6 is
   -- declaraciones globales

   -- variables a utlizar
   fnum, res: Float;
   npot: Natural;

   --------------------------------------------FUNCION: Calcular potencia
   function F_potencia (num: Float; pot: Natural) return Float is
      r : Float;
   begin
      r := num ** pot;
      return r;
   end F_potencia;
   -----------------------------------------------------------------------

begin
   -- instrucciones

   -- pedir datos
   Put("Introduce el numero: ");
   get(fnum);
   Put("Introduce la potencia: ");
   get(npot);

   -- Llamada a funcion: Calcular potencia
   res:=F_potencia(fnum,npot);

   Put_Line(Float'Image(fnum) &" elevado a " & Natural'Image(npot)
               &" es : " &Float'Image(res));

end T5P6;
