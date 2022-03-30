-- librerias
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use ada.Float_Text_IO;
with Ada.Numerics; use Ada.Numerics; -- pi

procedure T2P3 is
   -- declaraciones
   fVolumen, fArea,fRadio: Float;

begin
   -- instrucciones

   -- entrada de datos

   New_line;
   Put ("Introduce el radio de la esfera en metros: ");
   Get(fRadio);
   New_Line;

   -- calculos
   -- los valores de las ecuaciones deben ser todos del mismo tipo (float)
   -- area
   fArea := 4.0*Pi*fRadio**2;

   -- volumen
   fVolumen := 4.0/3.0*Pi*fRadio**3;

   -- Mostrar por pantalla

   Put_Line("Para un radio de " & Float'Image(fRadio) & " se obtiene un area de"
            & Float'Image(fArea) & " m2 y un volmen de " & Float'Image(fVolumen)
            & " m3");


end T2P3;
