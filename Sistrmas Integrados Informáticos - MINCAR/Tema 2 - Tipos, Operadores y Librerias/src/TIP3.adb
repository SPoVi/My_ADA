--Escribir un programa que lea desde teclado un número entero de tres cifras
--y escriba en pantalla, en orden inverso, los tres dígitos que lo componen,
--así como el número que forman sus dígitos colocados en orden inverso.

--librerias
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


procedure TIP3 is
   -- declarariones

   num, a, b, c: Integer;


begin
   -- instrucciones


   -- Pedir numero por pantalla
   put("Introduce el numero de tres cifras: ");
   get(num);

   -- Si divides el numero entre 100 obtendras las centenas
   a:= num / 100;
   -- Si al numero le restas el 'a' multiplicado por 100 y lo divides por 10
   -- obtendras las decenas
   num:= num - (a*100);
   b:= num/10;
   -- Mismo proceso para las unidades
   c:=num - (b*10);

   -- Mostrar por pantalla los resultados obtenidos
   put_line("Centenas: " & Integer'Image(a));
   put_line("Decenas:  " & Integer'Image(b));
   put_line("Unidades: " & Integer'Image(c));

   -- Cambiar orden
   num:= (c*100)+(b*10)+a;

   -- Mostrar numero invertido
   put_line("El numero invertido es: " & Integer'Image(num));



end TIP3;
