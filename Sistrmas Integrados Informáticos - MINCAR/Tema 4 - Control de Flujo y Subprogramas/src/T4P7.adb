--------------------------------------------------------------------------------
-- FICHERO     : T4P14.adb
-- COMETIDO    : Control de flujo. CASE.
-- AUTOR       : Sergio Pons
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 26-10-2019 - Final = 26-10-2019
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- DESCRIPCION :
-- Escribir un programa que reciba desde teclado un cierto número de números
-- reales y escriba en pantalla:
--     a) El número menor.
--     b) El número mayor.
--     c) El valor medio de todos los números.
-- Suponga que este programa lo necesitan tres personas diferentes, y cada una
-- quiere leer los datos de una forma distinta:
--     1)La primera persona quiere que siempre se lean 10 números.
--     2)La  segunda  persona  quiere  que  no  se  fije  esta  cantidad.
--        Ella  quiere  decir  al programa (cada vez que lo ejecute) el número
--        de datos que va a introducir.
--     3)La tercera persona dice que ella no sabe cuantos datos va a
--        introducir. Quiere que el programa le pregunte si quiere
--        introducir más datos.
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--librerias
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure T4P7 is
   -- declaraciones
   opcion, cantidad: Integer := 0;
   num: Float;
   max, media : Float := 0.0;
   min: Float := Float'Last;  -- Float mas alto posible

   respuesta: Character;

   -- Funcion menu
   procedure menu is
   begin
      Put_Line("=======MENU======");
      Put_Line("1) Persona 1 - 10 numeros");
      Put_Line("2) Persona 2 - Cantidad a elegir");
      Put_Line("3) Persona 3 - Cantidad a elegir. Quieres mas? ");
   end menu;

   -- Funcion mostrar resultados
   procedure resultados is
   begin
      New_Line;
      Put_Line("======== RESULTADOS =======");
      Put_Line("Mayor: " & Float'Image(max));
      Put_Line("Menor: " & Float'Image(min));
      Put_Line("Media: " & Float'Image(media));
   end resultados;

   -- Funcion de la persona 2
   procedure persona_2 is
      begin
         New_Line;
         Put_Line("Introduce la cantidad de numeros con los que deseas trabajar"
                  & ": ");
         get(cantidad);
         New_Line;
         for I in 1..cantidad loop
            Put("Introduce numero: ");
            get(num);

            -- media
            media := (media + num);
            -- max y min
            if num > max then
               max := num;
            end if;

            if num < min then
               min := num;
            end if;
         end loop;

         media := media / Float(cantidad);
         -- Mostrar por pantalla
         resultados;
   end persona_2;



begin
   --intruscciones

   -- Repite menu hasa que la opcion se valida
   loop
      menu;
      -- Pregunta opcion
      New_Line;
      Put("Introduce la opcion: ");
      Get(opcion);
      exit when opcion = 1 or opcion = 2 or opcion = 3;
      Put_Line("Opcion incorrecta. Vuelve a intentarlo");
      New_Line(50);

   end loop;

   -- case
   case opcion is
      when 1 => -- Persona 1
         New_Line;
         Put_Line("Introduce 10 numeros: ");
         for I in 1..10 loop
            get(num);

            -- media
            media := (media + num);
            -- max y min
            if num > max then
               max := num;
            end if;

            if num < min then
               min := num;
            end if;
         end loop;

         media := media / 10.0;
         -- Mostrar por pantalla
         resultados;
      when 2 => -- persona 2
         persona_2; -- llamada a funcion sin retorno de variable (procedure)
                    -- Con retorno de variable es una funcion (function)

      when 3 => -- persona 3

         -- Bucle que pregunta si quiere introducir numeros. En caso negativo
         -- para de pedirlos.
         loop
            New_Line;
            Put("Quieres introducir numero? (S/N): ");
            get(respuesta);

            -- Comprobacion de si la respuesta dada es valida
            while respuesta /= 'N' and respuesta /= 'n' and respuesta /= 'S'
              and respuesta /= 's' loop
               Put_Line("Opcion no valida. Vuelve a intentarlo");
               exit;
            end loop;

            -- Sale del bucle cuando dices no (N/n)
            exit when respuesta = 'N' or respuesta = 'n';

            -- Pide numero en caso de haber dicho si (S/s)
            Put("Introduce numero: ");
            get(num);
            cantidad := cantidad + 1;

            -- media
            media := (media + num);
            -- Comprueba maximo
            if num > max then
               max := num;
            end if;
            -- Comprueba minimo
            if num < min then
               min := num;
            end if;

         end loop;

         New_Line;
         media := media / Float(cantidad);
         -- Mostrar por pantalla
         if cantidad > 0 then
            resultados;
         elsif cantidad = 0 then
            Put_Line("No se han introducido numeros. Saliendo del programa.");
         end if;

      when others =>
         null;
   end case;

end T4P7;
