--------------------------------------------------------------------------------
-- FICHERO     : T5P9.adb
-- COMETIDO    : Case. Subprog.
-- AUTOR       : Sergio Pons
-- VERSIONES   : V1.00
-- FECHA       : Inicio = -2019 - Final = -2019
--------------------------------------------------------------------------------
-- ENUNCIADO
-- 9. Escribir un programa que realice el cambio de coordenadas cartesianas a
-- polares y viceversa. El programa debe presentar un menú con tres opciones:

--    0.  Fin de programa
--    1.  Paso de cartesianas a polares
--    2.  Paso de polares a cartesianas
--------------------------------------------------------------------------------
-- librerias
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions; --sqrt
         -- sin, cos, atan

procedure T5P9 is
   -- delcaraciones globales
   opcion: Natural :=3;


   ----------------------------------- FUNCION: MENU
   function f_menu return Integer is
      op: Integer;

   begin
      Put_Line("-----------MENU------------------------");
      Put_Line("0. Fin de programa");
      Put_Line("1. Paso de cartesianas a polares");
      Put_Line("2. Paso de polares a cartesianas");
      Put_Line("---------------------------------------");

      New_Line(1);
      Put("Introduce la opcion: ");
      get(op);

      if op /= 1 and op /= 2 and op /= 0 then
         Put_Line("Opcion no valida. Vuelve a intentarlo");
         New_Line(20);
      end if;


      return op;
   end f_menu;
   -------------------------------------------------------

   ---------------------------------FUNCION 1: Paso de cartesianas a polares
   procedure cart_to_polar is
      -- variables locales

      x, y, m , ang: Float;

      begin
      New_Line(2);
      Put_Line("Paso de cartesianas a polares");

      -- Introducir coordenadas cartesianas
      Put("Introduce la coordenada x: ");
      get(x);
      Put("Introduce la coordenada y: ");
      get(y);

      -- Conversion a polares
      m := Sqrt((x**2)+(y**2));
      ang:= (Arctan(y/x));

      -- Mostrar por pantalla
      Put_Line("La conversion de cartesianas a polares (x,y) de ("
               &Float'Image(x)& "," &Float'Image(y)&
                 " ) es (r,angulo): (" &Float'Image(m)& ","
                 &Float'Image(ang) &" ).");
   end cart_to_polar;
   --------------------------------------------------------------------------

   ---------------------------------FUNCION 2: Paso de polares a cartesianas
   procedure polar_to_cart is
      -- variables locales
      r, ang, x, y : Float;

   begin
      New_Line(2);
      Put_Line("Paso de polares a cartesianas");
      -- Pedir datos
      Put("Introduce el modulo r: "); get(r);
      Put("Introduce el angulo: "); get(ang);
      --Conversio
      x:= r* cos(ang);
      y:= r* sin(ang);

      -- Mostrar por pantalla
      Put_Line("La conversion de polares a cartesianas (r,ang) de ("
               &Float'Image(r)& "," &Float'Image(ang)&
                 " ) es (x,y): (" &Float'Image(x)& ","
               &Float'Image(y) &" ).");
   end polar_to_cart;
   -------------------------------------------------------------------------


begin
   -- instrucciones

   -- Llamar a menu
   -- Comprobar que la opcion es valida
   while opcion /= 1 and opcion /= 2 and opcion /=0 loop
      opcion:=f_menu;
   end loop;




   -- Casos de opciones (CASE)
   case opcion is
      when 0 =>
         Put_Line("FIN DE PROGRAMA ");
      when 1 =>
         -- Llamada a funcion 1
         Put_line("LLamada a funcion 1");
         cart_to_polar;
      when 2 =>
         -- Llamada a funcion 2
         Put_Line("Llamada a funcion 2");
         polar_to_cart;
      when others =>
           Put_Line("Opciones no validas");
   end case;



end T5P9;
