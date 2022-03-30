--------------------------------------------------------------------------------
-- FICHERO     : T6E4.adb
-- COMETIDO    : Subprogramas. Arrays.
-- AUTOR       : Sergio Pons
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 07-11-2019 - Final = -2019
--------------------------------------------------------------------------------
-- ENUNCIADO
-- 4. Realizar un programa que calcule la suma de dos matrices.   El  programa
-- preguntará  las  dimensiones  de  las  matrices  y,  a  continuación,  si  se
-- puede  efectuar  la suma, introducirá los elementos de ambas matrices y
-- realizará la operación.
--------------------------------------------------------------------------------
-- librerias
with Ada.Text_IO; use Ada.Text_IO;
with ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;



procedure T6E4 is

     -- VAR GLOBALES
     -- TIPOS
     -- Array restringido de 100 elemento
   type T_afNumeros is array (Integer range 0 .. 100, Integer range 0 .. 100) of Float;

    --package array_IO is new Ada.Text_IO.Float_IO(T_afNumeros);
    --use array_IO;

   -- SUBPROGRAMAS

   -- Funcion pedir dimension
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

 -------------------------------------------------------------------------------
   -- VARIABLES LOCALES
   An,Am,Bn,Bm: Natural; -- Tiene que ser minimo 1
   A,B,C: T_afNumeros;

begin
   --instrucciones

   -- Pedir tamaño de matrices
   Put_Line("Introduce el tamaño de la matriz A: ");
   P_dimension(An,Am);
   New_Line(1);
   Put_Line("Introduce el tamaño de la matriz B: ");
   P_dimension(Bn,Bm);
   New_Line(1);

   -- Comprobar que se peuden sumar. Mismo tamaño
   if An = Bn and Am = Bm then
      Put_Line("Las matrices tiene la misa dimension. Se pueden sumar.");
      New_Line(1);

      Put_Line("Matriz A: ");
      A:=F_creaMatriz(An,Am);
      P_leerMatriz(A,An,Am);
      New_Line(1);

      Put_Line("Matriz B: ");
      B:= F_creaMatriz(Bn,Bm);
      P_leerMatriz(B,Bn,Bm);
      New_Line(1);

      -- Sumar matrices
      C:=F_sumarMatriz(A,B,An,Am);
      Put_Line("Matriz C = AB: ");
      P_leerMatriz(C,Bn,Bm);


   else
       Put_Line("Las matrices no tienen la mmisma dimension. No se pueden sumar");
   end if;





end T6E4;
