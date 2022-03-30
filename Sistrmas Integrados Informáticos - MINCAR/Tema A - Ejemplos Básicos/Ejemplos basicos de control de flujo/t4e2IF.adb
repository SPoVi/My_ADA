with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

procedure t4e2 is
   fX, fY: Float;

begin
   Put_Line ("Introduce valor de X");
   Get (fX);

   Put_Line ("Introduce valor de Y");
   Get (fY);

   if fX < fY and sqrt(fX) < sqrt (fY) then
      Put_Line("Demostrado que raizX < raiz Y");
   end if;

   if (fX <= 0.0 or fX >= 1.0) and fX <= fX**fX then
      Put_Line("Demostrado que X < X²");
   end if;

end t4e2;

