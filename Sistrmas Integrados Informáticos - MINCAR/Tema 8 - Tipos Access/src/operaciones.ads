-- Realice un paquete llamado  operaciones que  contenga funciones que devuelven
-- el resultado de una operación realizada sobre un dato de tipo Float.
-- En concreto, serán 3 funciones:  fnSumar,  fnMultiplicar  y  fnDividir.


package operaciones is

   -- Array restringido de 100 elemento tipo float
   type afNumeros is array (Integer range 0 .. 100) of Float;
   
   -- Sumar 2 al array
   function fnSumar (n1: Float) return Float;
   -- Multiplicar 2 al array
   function fnMultiplicar (n1: Float) return Float;
   -- Dividir por 2 al array
   function fnDividir (num: Float) return Float;
   
end operaciones;
