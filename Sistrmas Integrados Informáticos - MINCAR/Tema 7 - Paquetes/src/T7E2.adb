--------------------------------------------------------------------------------
-- FICHERO     : T7E2.adb
-- COMETIDO    : Paquetes
-- AUTOR       : Sergio Pons
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 28-11-2019 - Final = 28-11-2019
--------------------------------------------------------------------------------
-- ENUNCIADO
-- 2. Modificar el programa "tipos compuestos - T6E4"  creando un pauete que
-- que contenga todos los subprogramas
--------------------------------------------------------------------------------
-- librerias
with Ada.Text_IO; use Ada.Text_IO;
with ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with matrices; use matrices;

-- El paquete matrices contiene:
--  pedir dimension
--  crear
--  leer
--  sumar


procedure T7E2 is

     -- VAR GLOBALES
     -- TIPOS
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
      Put_Line("Matriz C = A+B: ");
      P_leerMatriz(C,Bn,Bm);


   else
       Put_Line("Las matrices no tienen la mmisma dimension. No se pueden sumar");
   end if;





end T7E2;
