--librerias
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

package body operaciones is
   --declaraciones
   -- VAR GLOBALES

   -- SUBPROGRAMAS (FUNCIONES Y PROCEDURES)

   -- F SUMAR .......................................................
   function fnSumar (n1: Float) return Float is
      -- dec
      res: Float;

   begin

      res:= n1 + 2.0;
      return res;
   end fnSumar;

   -- F MULTIPLICAR ..................................................
   function fnMultiplicar (n1: Float) return Float is
      -- dec
      res: Float;
   begin
      res:= n1 * 2.0;
      return res;
   end fnMultiplicar;

   -- F DIVIDIR ......................................................
   function fnDividir (num: Float) return Float is
      -- dec
      res: Float;

   begin
      res:= num/2.0;
      return res;
   end fnDividir;



begin
   -- instrucciones
   null;
end operaciones;
