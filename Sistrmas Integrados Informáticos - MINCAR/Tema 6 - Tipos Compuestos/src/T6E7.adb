--------------------------------------------------------------------------------
-- FICHERO     : T6E7.adb
-- COMETIDO    : Subprogramas. Arrays.
-- AUTOR       : Sergio Pons
-- VERSIONES   : V1.00
-- FECHA       : Inicio = 07-11-2019 - Final = -2019
--------------------------------------------------------------------------------
-- ENUNCIADO
-- 7. Realice un programa que vaya leyendo desde el teclado números enteros
-- hasta que el usuario lo desee, y calcule mediante subprogramas los siguientes
-- valores:
--     a) La media
--     b) La moda
--     c) La desviación típica

-- * Utilizamos un array restringido
--------------------------------------------------------------------------------
--librerias
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with ada.Characters.Handling; use Ada.Characters.Handling;

procedure T6E7 is
   -- declaraciones

   -- Varaiables globales (antes de los subprogramas)

   -- Array no restringido
   --type T_aiNumeros is array (Integer range <>) of Integer

   -- Array restringido de 100 elementos
   type T_aNumeros is array (Integer range 0 .. 100) of Float;
   Numeros : T_aNumeros; -- array de rango 100


   -------------------------------------------------------- FUNCION CONTINUAR
   function F_continuar return Character is
      respuesta : Character;

   begin
      -- instucciones de continuar
      continuar_loop:
      loop
         --Put_Line("Entrando a suprograma 2 - Continuar ? ");

         Put("Desea contiunar introduciendo valores de temperatura?(S/N) :  ");
         get(respuesta);

         respuesta:=To_Upper(respuesta);
         if respuesta = 'S' or respuesta = 'N' then
            exit continuar_loop;
         else
            Put_Line("Respuesta no valida. Vuelve a intentarlo");
         end if;

      end loop continuar_loop;

      return respuesta;
   end F_continuar;
-------------------------------------------------------------------------------

   ---- FUNCION MENU ---------------------------------------------------------
   function F_menu return Integer is
      -- declaraciones
      op : Integer := 0;
   begin
      --intrucciones
      Put_line("--------MENU-------");
      Put_Line(" 1. Media ");
      Put_Line(" 2. Moda ");
      Put_Line(" 3. Desviacion");
      Put_Line("-------------------");

      -- Comprobacion de opcion valida
      menu_loop:
      loop
         Put("Introduce la opcion: "); get(op);

         if op = 1 or op = 2 or op = 3 then
            exit menu_loop;
         else
            Put_Line("Opcion no valida, vuelve a intentarlo.");
         end if;
         end loop menu_loop;

      return op;

   end F_menu;
   -----------------------------------------------------------------------

   ----------------------------------------------- FUNCION CREAR VECTOR NUM

   ----------------------------------------------------------------------


   --------------------------------------------------------- FUNCION MEDIA
   function F_media (vect :T_aNumeros; cnt : Integer) return Float is
      --declaracriones
      med : Float := 0.0;
   begin
      --instrucciones
      for i in 0..cnt loop
         med := med + vect(i);
      end loop;
      med := med / Float(cnt);
      --Put_Line("La media es: " & Float'Image(med));
      Put_Line("La media es: "); put(med,2,2,0);

      return med;

   end F_media;

    -----------------------------------------------------------------------

   -- FUNCION MODA --------------------------------------------------------
   procedure P_moda (vect :T_aNumeros; cnt : Integer) is
      -- declaraciones
      max: Float := 0.0;

   begin
      --instrucciones

      -- comprobar si el numero es mayor que el guardado como mayor
      for i in 0..cnt loop
         if vect(i) > max then
            max := vect(i);
         end if;
      end loop;

      Put_Line("La moda es: "); put(max,2,2,0);
   end P_moda;

      -- mostrar resultado


   ------------------------------------------------------------------------

   -- FUNCION DESVIACION  -------------------------------------------------

   ------------------------------------------------------------------------


   -- Variabes locales
   continuar: Character;
   opcion : Integer;
   icnt : Integer := 0;
   inum, med : Float;

begin
   -- instrucciones
   -- Puedes preguntar antes que es lo que quiers hacer o despues de obtener los
   -- numeros.

   -- Elgimos opcion
   opcion := F_menu;
   New_Line(1);
   -- Preguntar numero inicial
   Put("Introduce numero: ");
   get(inum);
   Numeros(icnt) := inum;
   icnt := icnt+1;

   main_loop:
   loop

      -- Preguntar si quiere introducir mas numeros

      continuar := F_continuar;

      -- Mientras diga si, continua preguntando numero

      if continuar = 'S' then
         Put("Introduce numero: ");
         get(inum);
         Numeros(icnt) := inum;
         icnt := icnt+1;
      else
         Put_Line("Has seleccionado no continuar introduciendo numeros");
         New_Line(1);
         exit main_loop;
      end if;

   end loop main_loop;

      -- Trabajar segun lo seleccionado en el menu

      case opcion is

      when 1 =>

         med:= F_media(Numeros, icnt);

      when 2 =>

         P_moda(Numeros, icnt);

         when 3 =>

            --F_Desviacion;

            null;
         when others =>
            null;
      end case;


end T6E7;
