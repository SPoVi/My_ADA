package matrices is

   -- Array restringido de 100 elemento
   type T_afNumeros is array (Integer range 0 .. 100, Integer range 0 .. 100) of Float;
   
   -- Com utilizas el nuevo tipo aqui como entrada de parametro, si que lo tienes
   -- que declarar.
   
   -- Pedir dimension matriz
   procedure P_dimension(n: out Natural; m: out Natural);
   -- Sumar matrices
   function F_sumarMatriz(A: T_afNumeros; B: T_afNumeros; n: Natural; m: Natural) return T_afNumeros;
   --  Crear matriz
   function F_creaMatriz (n:Natural; m: Natural) return T_afNumeros;
   -- Leer matriz
   procedure P_leerMatriz (D: T_afNumeros; a: Natural; b: Natural);
   
   

end matrices;
