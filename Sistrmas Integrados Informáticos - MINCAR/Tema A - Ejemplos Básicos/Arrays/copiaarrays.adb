with Ada.TExt_IO; use Ada.Text_IO;

procedure CopiaArrays is
   type T_ai1D_1 is array (1..10) of Integer;
   ai1D_1_a: T_ai1D_1:= (1|3|5 =>1, others => 0);
   ai1D_1_b: T_ai1D_1;

   type T_ai1D_2 is array (3..12) of Integer;
   ai1D_2: T_ai1D_2:= (others => 2);

begin
   -- ASIGNACIONES DIRECTAS COMPLETAS
   ai1D_1_b:= ai1D_1_a;			-- dos arrays se pueden asignar si son del mismo tipo
   ai1D_2:= T_ai1D_2(ai1D_1_b);	-- sí deja si convierto: TipoArray(vblearray)
   -- ASIGNACIONES VALOR A VALOR
   for I in T_ai1D_2'Range loop --Asignación valor a valor
      ai1D_2 (I):= ai1D_1_b(I-2);
   end loop;

   for I in ai1D_2'Range loop -- Escribir valores array
      Put (Integer'Image(ai1D_2(I)));
   end loop;

end CopiaArrays;
