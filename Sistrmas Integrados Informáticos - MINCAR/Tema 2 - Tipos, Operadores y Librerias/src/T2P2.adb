-- librerias
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use ada.Float_Text_IO;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions; -- sqrt

procedure T2P2 is
   -- declaraciones
   fx1, fx2, fy1, fy2, fx3, fy3, fd : Float;

begin
   -- instrucciones

   -- Introduccion de coordenadas de los puntos
   -- Pimer punto
   New_Line;
   Put("Introduce la coordenada x del primer punto (float): ");
   Get(fx1);
   Put("Introduce la coordenada y del primer punto (float): ");
   Get(fy1);
   -- Segundo punto
   New_Line;
   Put("Introduce la coordenada x del segundo punto (float): ");
   Get(fx2);
   Put("Introduce la coordenada y del segundo punto (float): ");
   Get(fy2);

   -- Calculo de distancia entre ellos. Raiz sqrt()

   fx3 := fx1 - fx2;
   fy3 := fy1 - fy2;

   fd := sqrt(fx3**2 + fy3**2);

   -- Mostrar por pantalla
   New_Line;
   Put("La distancia entre ambos puntos es: ");
   Put(fd);

end T2P2;
