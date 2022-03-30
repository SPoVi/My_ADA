-- librerias
with ada.Text_IO;         use Ada.Text_IO;
with ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with ada.Float_Text_IO;   use Ada.Float_Text_IO;


procedure examen_2018_2019 is
   -- var globales

   -- FUNCIONES ------------------------------------------------------------------

   -- Funcion Menu
   function F_menu return Integer is
      op : Integer;
   begin

      loop

      Put_Line("--------------MENU-------------");
      Put_Line("1. Introducir parametros sistema primer orden");
      Put_Line("2. Introducir valor de entrada de referencia");
      Put_Line("3. Ejecutar siulacion lazo de control.");
      Put_Line("0. Salir");
      Put_Line("--------------------------------");
      new_line(2);
      Put("Introduce la opcion de menu: ");
         get(op);
         exit when op in 0..3;
      end loop;

      return op;
   end F_menu;

   -- Funcion ESTABILIDAD
   procedure P_estabilidad(p:Float) is
      -- declaraciones
   begin
      --instrucciones
      if abs(p) <= 1.0 then
         Put_Line("El sistema es estable");
      else
         Put_Line("El sistema es inestable");
      end if;
   end P_estabilidad;

   -- Funcion CONTROLADOR
   function F_controlador(e: Float) return Integer is
      u : Integer;
   begin
      if e > 0.0 then
         u := 1;
      elsif e < 0.0 then
         u:= -1;
      else
         u:= 0;
      end if;

      return u;

   end F_controlador;


   -- Funcion PLANTA
   function F_planta(a,y0,k : Float; u:Integer) return Float is
      y: Float;
   begin
      y := (a*y0)+(k*Float(u));
      return y;
   end F_planta;


   -- Funcion SIMULACION LAZO (va despues de las funciones que necesita)
   procedure F_lazo (a,k,ref: Float)  is
      u: Integer;
      y_aux, e: Float;
      y0 : Float := 0.0;

   begin
      e := ref - y0;
      --mostrar por pantalla
      for i in 1..60 loop
         u:= F_controlador(e);
         --y_aux := F_planta(a,y0,k,u);
         --y0 := y_aux;
         y0:= F_planta(a,y0,k,u);
         e := ref -y0;

         Put_Line("u: " & Integer'Image(u) & "  y: " & Float'Image(y0));
      end loop;
   end F_lazo;




   --var locales
   opcion: Integer;
   a, ref, k : Float;
   op1, op2: Natural range 0..1;

begin
   -- instrucciones



   -- Valores por defecto, mediante var o contador

   -- Loop del main
   main:
   loop
      -- MENU POR PANTALLA
      opcion:= F_menu;

   -- SWITCH CASE del menu
   case opcion is
      when 1 =>
         -- Introducir parametros sitema primer orden
         Put("Introduce el valor del polo: ");
         get(a);
         Put("Introduce el valor de la ganacia: ");
         get(k);
         -- Funcion estabilidad
         P_estabilidad(a);
         op1 := 1;
      when 2 =>
         -- Introducir valor de entrada de referencia
         Put("Introduce el valor de referencia: ");
         get(ref);
         Put_Line("Valor de referencia introducido.");
         op2 := 1;

      when 3 =>

         -- Si no has ejectuado las opciones 1 y 2 cargar estos valores
         if op1 = 0 or op2 = 0 then
            a := 0.9;
            k := 0.1;
            ref := 1.0;
         end if;

         -- Ejecutar simulacion lazo de control
         F_lazo(a,k,ref);
         op1 := 0;
         op2 := 0;



      when 0 =>
         -- Salir
         Put_Line("Saliendo del programa.");
         exit main;
      when others =>
         Put_Line("Opcion no valida. Volviendo a menu");
      end case;
      Put_Line("Volviendo a menu");

      Skip_Line(1);
      New_Line(5);

   end loop main;
   --
end examen_2018_2019;
