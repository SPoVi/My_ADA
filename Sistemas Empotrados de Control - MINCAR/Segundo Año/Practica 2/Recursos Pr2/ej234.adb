with Ada.Text_IO; use Ada.Text_IO;


procedure Ej344 is
   pragma Time_Slice (0.0);
   protected type SincrCond is
      entry Wait;
      procedure Go;
   private
      Opened: Boolean := False;
   end SincrCond;


   protected body SincrCond is

      entry Wait when Opened is
      begin
         Opened := False;
      end Wait;

      procedure Go is
      begin
         Opened :=True;
      end Go;

   end SincrCond;

   Sem: SincrCond;

   task Tarea1 is
   end Tarea1;

   task body Tarea1 is
   begin

      Put_Line("Tarea_1 antes de la sincronizacion...");
      Sem.Wait; -- Espera mientras semáforo en rojo
      Put_Line("Tarea_1 después de la sincronizacion...");
   end Tarea1;

   task Tarea2 is
   end Tarea2;

   task body Tarea2 is
   begin

      Put_Line("Tarea_2 antes de la sincronizacion...");
      Sem.Go; -- Espera mientras semáforo en rojo
      Put_Line("Tarea_2 después de la sincronizacion...");
   end Tarea2;

begin
  null;
end Ej344;



