-- ejemplo final transparencias tema access


with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

procedure Ejemplo_subprogramas is

   type T_afValores is array (1..5) of Float;

   function fnIncrementar (fValor: Float) return Float is
      fRdo: Float;
   begin

      fRdo := fValor+ 2.0;
      return fRdo;
   end fnIncrementar;


   procedure Iterate (Func: not null access function (F: float) return float; V: in out T_afValores) is

   begin
      for I in V'Range loop
         V(I):= Func(V(I));
      end loop;
   end Iterate;

   Vector: T_afValores:= (10.0, 2.0, 3.0, 9.0, 6.0);

begin

   Iterate (Sqrt'Access, Vector);
   Iterate (fnIncrementar'Access, Vector);

end Ejemplo_subprogramas;
