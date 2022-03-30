with Ada.NUmerics.Discrete_Random;
package body Aleat is


   package pMiRandom is new Ada.Numerics.Discrete_Random(T_stInt); use pMiRandom;
   G: Generator;
   function fstInt return T_stInt is
      
      iValor: T_stInt;
   begin
      
      iValor:= Random(G);
      return iValor;
   end fstInt;

begin

   Reset(G);

end Aleat;
