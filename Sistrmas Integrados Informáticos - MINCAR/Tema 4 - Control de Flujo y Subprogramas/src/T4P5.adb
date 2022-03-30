-- Escribir  un  programa  de  tres  opciones  mediante  la  sentencia  case.
-- El  menú  será  el siguiente:
--      a) Fuerza deatracción entre dos partículas:
--      b) Número de dígitos de un entero.
--      c) Derivada de un polinomio.

-- librerias
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;


procedure T4P5 is
   -- declaraciones
   opcion : Character := 'z';
   M1, M2, F, G, R: Float;
   Num, n1,n2,n3,d1, cnt: Integer;


begin
   -- instrucciones
   Put_Line("------MENU DE OPCIONES-----");
   Put_Line("a) Fuerza de atraccion entre dos particulas");
   Put_Line("b) Numero de digitos de un entero dado");
   Put_Line("c) Derivada de un polinomio");
   Put_Line("---------------------------------------------");

   -- Pedir opcion
   loop
      if opcion not in 'a'..'c' then
        Put("Introduce la opcion: ");
        get(opcion);
      end if;
      exit when opcion in 'a'..'c';
      Put_Line("Opcion no valida. Vuelve a intentarlo.");
   end loop;




   New_Line;

   -- Fabricacion de menu
   case opcion is
      when 'a' =>
         Put_Line("F = G * (M1 * M2) / R^2 [N]");
         Put_Line("Donde G = 6.67 * 10^-11 [Nm^2 / Kg^2]");
         G := 6.67E-11;  -- constante

         New_Line;
         Put("Introduce el valor de M1: ");
         Get(M1);
         Put("Introduce el valor de M2: ");
         Get(M2);
         Put("Introduce el valor de R: ");
         Get(R);

         -- calculo
         F := (G * (M1 * M2)) / (R**2);
         Put_Line("F es : " &Float'Image(F));

      when 'b' =>
         Put("Introduce el entero: ");
         Get(Num);
         cnt := 1;

         -- Mientras sea mayor que 10 se podra dividir entre 10
         while Num > 10 loop
            cnt := cnt + 1;
            Num := Num / 10;
         end loop;

         Put_Line("El entero tiene un tamanyo de : " &Integer'Image(cnt)
                  &" digitos");



      when 'c' =>
         Put_Line("Derivada de un polinomio de segundo orden ax^2+bx+c=0");
         Put("Introduce a: "); Get(n1);
         Put("Introduce b: "); Get(n2);
         Put("Introduce c: "); Get(n3);

         d1 := n1*2;

         Put_Line("La derivada del polinomio introducido es: "
                  & Integer'Image(d1) &"x+"& Integer'Image(n2) &"=0");


      when others =>
         null;
   end case;







end T4P5;
