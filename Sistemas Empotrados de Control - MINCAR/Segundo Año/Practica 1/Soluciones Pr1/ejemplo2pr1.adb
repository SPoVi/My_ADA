with t_hola; use t_hola;

procedure usothola is
   pragma Time_Slice (0.0);

   rTarea1: aliased Duration := 1.0;
   tarea1: tareahola (1, rTarea1'access);

   rTarea2: aliased Duration := 4.0;
   tarea2: tareahola (2, rTarea1'access);

begin
   null;
end usothola;
