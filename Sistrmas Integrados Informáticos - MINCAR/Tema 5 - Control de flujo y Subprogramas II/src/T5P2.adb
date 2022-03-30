--------------------------------------------------------------------------------
-- FICHERO     : T5P2.adb
-- COMETIDO    : Subprogramas. Booleanos. Control de flujo.
-- AUTOR       : Sergio Pons
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 01-11-2019 - Final = 02-11-2019
--------------------------------------------------------------------------------
-- ENUNCIADO
--
-- Realice  un  programa  que  cuente  el  número  de máximos  localesde  una
-- serie  de valores  introducidos  por  el  usuario.  Se  define  como  máximo
-- local  aquel  valor  que  es mayor que el inmediatamente anterior, y mayor
-- que el inmediatamente posterior.

-- Por  ejemplo,  si  el  usuario  introduce  la  serie  de  valores:
-- 0  1  2 32  1  0  2 53 86,  los máximos locales son los valores que aparecen
-- marcados en negrita.

-- Para  ello,  el  programa  deberá  solicitar  al  usuario  sucesivos
-- valores.  La  petición  de  los valores  finalizará  cuando el usuario
-- introduzca n o N como respuesta a la pregunta
-- ¿Desea continuar introduciendo valores?

-- Una vez que el usuario no desee introducir más valores, el programa deberá
-- imprimir en pantalla  el  número  total  de  máximos  locales. Así,  en  el
-- ejemplo  anterior,  el  programa debería mostrar en pantalla el mensaje:
-- El número de máximos locales es 3.

-- Subprograma 1: este subprograma devolverá una variable booleana que indique
-- si un valor es máximo local o no.

-- Subprograma  2:  este  subprograma  devolverá  la  respuesta  del  usuario
-- ante  la pregunta ¿Desea  continuar  introduciendo  valores  de  temperatura?
-- El  usuario deberá introducir s o S si desea continuar introduciendo valores,
-- y n  o N en  caso  contrario.  El  programa no deberá  aceptar  como  válida
-- ninguna  otra respuesta
--------------------------------------------------------------------------------

--librerias

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Characters.Handling; use Ada.Characters.Handling;


procedure T5P2 is
   -- declaraciones globales

   type Boolean is (F, T);

   continuar: Character;
   inum1, inum2, inum3: Integer:= Integer'Last;
   icnt, icnt_max_locales: Integer:=0;
   gmaximo_local: Boolean:=F;


------------------------------------------------------------ Suprograma 2: Menu
   function menu return Character is
      respuesta : Character;

   begin
      -- instucciones de menu
      menu_loop:
      loop
         Put_Line("Entrando a suprograma 2 - Continuar ? ");

         Put("Desea contiunar introduciendo valores de temperatura?(S/N) :  ");
         get(respuesta);

         respuesta:=To_Upper(respuesta);
         if respuesta = 'S' or respuesta = 'N' then
            exit menu_loop;
         else
            Put_Line("Respuesta no valida. Vuelve a intentarlo");
         end if;

      end loop menu_loop;

      return respuesta;
   end menu;
-------------------------------------------------------------------------------



---------------------------------------------- Subprograma 3: Introducir numero
   function intro_num return Integer is
      -- declaracionres del subprog 3
      inum : Integer;

   begin
      -- instrucciones para introducir numero
      Put_Line("Entrando a subprograma 3 - Intro num");
      Put("Introduce valor: ");
      get(inum);

      return inum;

   end intro_num;
-------------------------------------------------------------------------------



----------------------------------- Subprograma 1: Comprobar si es maximo local
   function max_local(cnt, num1, num2, num3: Integer) return Boolean is
      -- declaraciones subprog 1
      bmax: Boolean := F;

   begin
      -- instrucciones del subprog1
      New_Line(1);
      -- Put_Line("Entrando a suprograma 1 - Comprobar maximo local ");

      -- Put_Line("Contador en: " & Integer'Image(cnt));
      if cnt < 3 then
         Put_Line("Cantidad de valores insuficientes. Introduce al menos tres numeros");
      elsif cnt>= 3 then
         -- Put_Line("Comprobamos el numero de en medio " &Integer'Image(num2));
         if num2 > num1 and num2 > num3 then
            bmax := T;
         end if;
      end if;

      return bmax;
   end max_local;
---------------------------------------------------------------------------------



---------------------------------------------------------------- begin del main
begin
   --instrucciones

   -- Preguntar numero inicial
   Put("Introduce valor de temperatura: ");
   get(inum1);
   icnt := icnt+1;

   -- loop del main
   main_loop:
   loop
      -- Llama a menu para preguntar si quiere introducir mas numeros
      New_Line(1);

      continuar:=menu;

      -- Mientras diga si, continua preguntando numero
      if continuar = 'S' then


         -- Asignar a inum2 e inum3
         if icnt = 1 then
            inum2:= intro_num;
            icnt := icnt + 1;

         elsif icnt = 2 then
            inum3:= intro_num;    -- Ya hay 3 numeros
            icnt := icnt + 1;

            --Put_Line("Comprobacion entre estos tres numeros");
            --Put_Line(Integer'Image(inum1) & Integer'Image(inum2) &
                       --Integer'Image(inum3));

            -- Comprobacion de maximo local
            gmaximo_local:=max_local(icnt,inum1, inum2, inum3);
            -- Put_line(Boolean'Image(gmaximo_local));  -- respuesta

             -- Comprobar si haymaximo local cuando hay 3 numeros
            if gmaximo_local = T then
               Put_Line("Aumento contador de maximos locales");
               icnt_max_locales:= icnt_max_locales + 1;
            end if;


         elsif icnt = 3 then
            -- Desplazamos los numeros a la izquierda
            inum1 := inum2;
            inum2 := inum3;
            inum3:= intro_num;

            -- Comprobacion de maximo local
            gmaximo_local:=max_local(icnt,inum1, inum2, inum3);
            -- Put_line(Boolean'Image(gmaximo_local));  -- respuesta

             -- Comprobar si haymaximo local cuando hay 3 numeros
            if gmaximo_local = T then
               Put_Line("Aumento contador de maximos locales");
               icnt_max_locales:= icnt_max_locales + 1;
            end if;

         end if;

      else
         Put_Line("Ya no se introduciran mas numeros");
         gmaximo_local:=max_local(icnt,inum1, inum2, inum3);
         exit main_loop;
      end if;

      end loop main_loop;


   New_Line(2);
   Put_Line("Se han introducido un total de" & Integer'Image(icnt_max_locales)
           & " maximos locales");


end T5P2;


























