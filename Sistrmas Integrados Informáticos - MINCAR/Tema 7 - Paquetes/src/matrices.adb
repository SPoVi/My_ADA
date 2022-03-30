--librerias
  with Ada.Text_IO; use Ada.Text_IO;
   with ada.Integer_Text_IO; use Ada.Integer_Text_IO;
   with Ada.Float_Text_IO; use Ada.Float_Text_IO;


package body matrices is



    -- SUBPROGRAMAS -------------------------------------------------------------
-------------------------------------------------------------------------------
   -- Procedure pedir dimension
   procedure P_dimension(n: out Natural; m: out Natural) is

   begin
      Put("Introduce el numero de filas: "); get(n);
      Put("Introduce el numero de columnas: "); get(m);
   end P_dimension;
--------------------------------------------------------------------------------

   -- PROCEDURE sumar matrices matrices
   function F_sumarMatriz(A: T_afNumeros; B: T_afNumeros; n: Natural; m: Natural) return T_afNumeros is
      C: T_afNumeros;
   begin

      -- Sumar matrices. Crear C
      for i in 1..n loop
         for j in 1..m loop
           C(i,j):=A(i,j)+B(i,j);
         end loop;
      end loop;

      return C;

   end F_sumarMatriz;


   -- FUNCION Crea matriz
   function F_creaMatriz (n:Natural; m: Natural) return T_afNumeros is
      Matriz: T_afNumeros;
      num: Float;
   begin
      -- Escribir matriz

      for i in 1..n loop
         for j in 1..m loop
            Put("Introduce numero: ");
            get(num);

            -- Asigna numero introducido
            Matriz(i,j):=num;
         end loop;
      end loop;

      return Matriz;
   end F_creaMatriz;

   -- PROCEDURE Leer Matriz
   procedure P_leerMatriz (D: T_afNumeros; a: Natural; b: Natural) is
   begin
      -- Leer matriz
      Put_Line("Los valores de la matriz son: ");
      for i in 1..a loop
         for j in 1..b loop
            put(D(i,j));
         end loop;
         New_Line(1); -- salto de fila
      end loop;
   end P_leerMatriz;


end matrices;
