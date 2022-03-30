-- librerias
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Numerics.Discrete_Random;

procedure T2P5 is
   -- declaraciones

   -- Nuevos tipos con rango de valores. Es un derivado.
   type N09_Integer is new Integer range 0..9;
   -- El package se crea para utilizar el contenido del generico aplicado a tu tipo derivado
   package Int_rand is new Ada.Numerics.Discrete_Random(N09_Integer);
   use Int_rand;

   --  Subtipo con rango de valores
   subtype AZ_Char is Character range 'a'..'z';
   package Char_rand is new Ada.Numerics.Discrete_Random(AZ_Char);
   use Char_rand;

   -- Para el uso de puts y gets del tipo nuevo creado
   package Entero_IO is new Ada.Text_IO.Integer_IO(N09_Integer);
   use Entero_IO;


   -- variables
   n1, n2, aleatN1, aleatN2 : N09_Integer;
   c1, c2, aleatC1, aleatC2 : AZ_Char;

   -- generador de valores aleatorios
   GN : Int_rand.Generator;
   GC : Char_rand.Generator;

begin
   -- instrucciones

   -- Reseteo de generadores aleatorios
   Int_rand.Reset(GN);
   Char_rand.Reset(GC);

   -- Generar valores aleatorios
   aleatN1 := Random(GN);
   Put_Line("Aleatorio 1: " & N09_Integer'Image(aleatN1));  -- numero
   aleatC1 := Random(GC);
   Put_Line("Aleatorio 2: " & AZ_Char'Image(aleatC1));      -- letra
   aleatN2 := Random(GN);
   Put_Line("Aleatorio 3: " & N09_Integer'Image(aleatN2));  -- numero
   aleatC2 := Random(GC);
   Put_Line("Aleatorio 4: " & AZ_Char'Image(aleatC2));      -- letra

   -- Entrada de datos
   Put_Line("Introduce el primer valor (numero 0-9): ");
   Get(n1);
   Put_Line("Introduce el segundo valor (letra): ");
   Get(c1);
   Put_Line("Introudce el tercer valor (numero 0-9): ");
   Get(n2);
   Put_Line("Introduce el cuarto valor (letra): ");
   Get(c2);

   --Bucle if else
   if n1 = aleatN1 and n2 = aleatN2 and c1 = aleatC1 and c2 = aleatC2 then
      Put_Line(" CONTRASENYA CORRECTA ");
   else
      Put_Line(" CONTRASENYA INCORRECTA ");
      Put_Line(" La contraseña correcta es: " & N09_Integer'Image(aleatN1) &" -"
        & AZ_Char'Image(aleatC1) &"-"& N09_Integer'Image(aleatN2)&" -"
        & AZ_Char'Image(aleatC2));
   end if;

end T2P5;
