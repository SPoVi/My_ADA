with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure pa57e17 is
   function fnfPot (fBase: Float; nPot: Natural) return Float is
      fRdo: Float:= 1.0;
   begin
      for I in 1..nPot loop
         fRdo:= fRdo*fBase;
      end loop;
      return fRdo;
   end fnfPot;

   fBase: Float;
   nPot: NaturaL;

begin
   Put_Line ("Introducir base");
   Get(fBase);

   Put_line("Introducir exponente");
   Get(nPot);

   Put_Line("El resultado es ");
   Put(fnfPot(fBase,nPot),0,2,0);

end pa57e17;


