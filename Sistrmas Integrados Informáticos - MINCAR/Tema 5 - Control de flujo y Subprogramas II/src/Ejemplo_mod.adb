with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

-- Imagenia un polino de vertices lo que pones en mod, en este caso 7.
-- Cada vertice esta numerado en sentido horario del 0 al numero que has puesto
-- menos 1, en este caso 6.
-- Si introduces el num 5, girara en sentido horario y dara valor del vertice 5
-- Si intrduce el num -5 girara en sentido antihoario y dara valor de vertice 2 (7-5)
-- Si pone el 7 dara cero
-- Si pones el 9 dara 2, porque has completado una vuelta y empieza otra vez por
-- el numero de vertices.
-- Para 17 dara 3 (2*7 = 14)

-- Por tanto peude servir para calcular el resto.

procedure Ejemplo_mod is

   type T_Buffercircular is mod 7;
   num : Integer;
   modulo: Integer;


begin
   put("Introduce numero: ");
   get(num);

   modulo := num mod 7;

   put(modulo);

end Ejemplo_mod;
