with Ada.Numerics.Discrete_Random;
package body valores is

   package Random_AleatorioDNI is new Ada.Numerics.Discrete_Random (T_AleatorioDNI); use Random_AleatorioDNI;
   G: Generator;

   function fstT return T_AleatorioDNI is
      T: T_AleatorioDNI;
   begin
      T:= Random(G);
      return T;
   end fstT;
begin
   Reset(G);
end valores;
