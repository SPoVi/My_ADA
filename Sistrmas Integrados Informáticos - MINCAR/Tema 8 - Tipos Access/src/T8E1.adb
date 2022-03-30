--------------------------------------------------------------------------------
-- FICHERO     : T8E1.adb
-- COMETIDO    : Accces. Punteros.
-- AUTOR       : Sergio Pons
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 05-12-2019 - Final =
--------------------------------------------------------------------------------
-- ENUNCIADO
-- Realice un paquete llamado  operaciones que  contenga funciones que devuelven
-- el resultado de una operación realizada sobre un dato de tipo Float.
-- En concreto, serán 3 funciones:  fnSumar,  fnMultiplicar  y  fnDividir.

-- Estas  funciones  devolverán, respectivamente,  el resultado de sumar,
-- multiplicar o dividir dicho dato por 2.

-- Una vez realizado ese paquete, realice un programa que muestre el siguiente
-- menú de opciones:

--     1- Multiplicar todos los elementos de un array por 2*
--     2- Dividir todos los elementos de un array por 2*
--     3- Sumar 2 a todos los elementos de un array *
--     4- Calcular la raíz cuadrada de todos los elementos de un array^
--     5- Calcular el seno de todos los elementos de un array^
--     0- Salir

-- *: las funciones a utilizar se encuentran en el paquete realizado previamente
-- llamado operaciones
-- ^:  las  funciones  a  utilizar  se  encuentran  en  el  paquete  predefinido
-- en  Ada Ada.Numerics.Elementary_Functions


-- Para ello, realice los siguientes subprogramas:

--    -  Subprograma que gestione las opciones del menú
--    -  Subprograma que permita al usuario escribir el array por teclado
--    -  Subprograma  que  realice  la  operación  deseada  por  el  usuario
--       sobre  un  array.
--    Para ello, realice un procedimiento que tenga dos parámetros:
--       o  Parámetro de entrada: Función deseada (según la opción elegida por
--          el usuario)
--       o  Parámetro de entrada/salida: array que contenga los valores sobre
--          los que operar

--------------------------------------------------------------------------------
--librerias

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with operaciones; use operaciones;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;


procedure T8E1 is
   -- declaraciones

   -- F MENU ..............................................................
   function menu return Integer is
      --dec
      op : Integer;
   begin

      loop

         Put_Line("-----------MENU-----------");
         Put_Line("1-Multiplicar todos lo elementos de un array por 2");
         Put_Line("2-Dividir todoso los elementos de un array por 2");
         Put_Line("3-Sumar 2 a todos los elementos de un array");
         Put_Line("4-Calcular la raiz cuadarda de todos los elementos de un array");
         Put_Line("5-Calcular el seno de todos los elementos de un array");
         Put_Line("0-Salir");


         New_Line;
         put("Introduce la opcion: "); get(op);


         if op in 0..5 then

            exit;
         else
            Put_Line("Opcion no valida, vuelve a intentarlo");
            New_Line(5);
            end if;
      end loop;

      return op;
   end menu;

   -- F ESCRIBIR ARRAY ....................................................
   function escribirArray (n: out Integer) return afNumeros is                   -- deberia ser un procedure, en 2005 no acepta funciones con out

      val: Float;
      af: afNumeros;
   begin
      Put("Introduce la longitud del array: ");
      get(n);

      -- Crear array de longitud n
      for i in 1..n loop
         Put("Introduce el valor: ");
         get(val);
         af(i) := val;
      end loop;

      return af;

   end escribirArray;

   -- P OPERACION A REALIZAR ...............................................
   -- llamada a fucion con parametros
   procedure operacion(fnAccess: not null access function(inum:Float) return Float; af: in out afNumeros; tam: Integer) is

   begin
      for i in 1..tam loop
         af(i) := fnAccess(af(i));
      end loop;
   end operacion;

   -- P MOSTRAR ARRAY
   procedure mostrarArray(af: afNumeros; n:Integer) is
      begin
      for i in 1..n loop
         put(af(i), EXP => 0, AFT => 2);
         put(' ');
      end loop;

   end mostrarArray;



   -- Variables locales
   opcion: Integer;
   aCreado: afNumeros;
   tamaño: Integer;
begin
   -- instrucciones

   main:
   loop

      -- Mostrar menu
      opcion := menu;

      -- Crear array
      if opcion /= 0 then

         aCreado := escribirArray(tamaño);
      end if;

      Put("Array creado: ");
      mostrarArray(aCreado,tamaño);
      New_Line;



      case opcion is

         when 0 =>
            Put_Line("Saliendo del programa.");
            exit main;
         when 1 =>
            Put_Line("Multiplicar todos lo elementos de un array por 2");
            operacion(fnMultiplicar'Access,aCreado,tamaño);
            mostrarArray(aCreado,tamaño);
            New_Line(2);
         when 2 =>
            Put_Line("Dividir todos los elementos de un array por 2");
            operacion(fnDividir'Access,aCreado,tamaño);
            mostrarArray(aCreado,tamaño);
            New_Line(2);
         when 3 =>
            Put_Line("Sumar a toso los elmentos de un array 2");
            operacion(fnSumar'Access,aCreado,tamaño);
            mostrarArray(aCreado,tamaño);
            New_Line(2);
         when 4 =>
            Put_Line("Calcular la raiz de todos los elementos de un array");
            operacion(Sqrt'Access,aCreado,tamaño);
            mostrarArray(aCreado,tamaño);
            New_Line(2);
         when 5 =>
            Put_Line("Calcular el seno de todos los elementos de un array");
            operacion(Sin'Access, aCreado,tamaño);
            mostrarArray(aCreado, tamaño);
            New_Line(2);
         when others =>
            null;

      end case;

   end loop main;



end T8E1;
