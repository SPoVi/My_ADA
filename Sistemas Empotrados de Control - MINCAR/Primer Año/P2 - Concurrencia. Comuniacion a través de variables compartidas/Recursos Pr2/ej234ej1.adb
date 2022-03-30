with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


procedure Ej344ej1 is
   protected type SincrCond is
      entry Wait;
      procedure Go;
   private
      Opened: Boolean := False; -- valor inicial: FALSE. No se pasa como parámetro del protected type porque un semáforo de sincr siempre sebe estar inicializado a false
   end SincrCond;


   protected body SincrCond is

      entry Wait when Opened is -- tarea suspendida hasta que Opened=TRUE
      begin
         Opened := False;
         --Go;-- Pone de nuevo semáforo en rojo
      end Wait;

      procedure Go is		-- Opened = TRUE -> pone semáforo en verde
      begin
         Opened :=True;

      end Go;

   end SincrCond;

   protected type shared_int is
      procedure Write (iValor: Integer);
      function Read return Integer;
   private
      The_data: Integer;
   end shared_int;

   protected body shared_int is
      procedure Write (iValor: Integer) is
      begin
         The_data:=iValor;
      end Write;

      function Read return Integer is
      begin
         return The_data;
      end Read;
   end shared_int;
   Sem: SincrCond;
   opValor: shared_int;

   task Tarea1 is
   end Tarea1;

   task body Tarea1 is
      iValor:Integer;
   begin
      for I in 1..5 loop
         Put_Line("Introduce valor");
         Get (iValor);
         opValor.Write (iValor);
         Sem.Go; -- Espera mientras semáforo en rojo
      end loop;

   end Tarea1;

   task Tarea2 is
   end Tarea2;

   task body Tarea2 is
   begin
      for I in 1..5 loop
         Sem.WAit; -- Espera mientras semáforo en rojo
         Put("El valor es ");
         Put(opValor.Read);


      end loop;

   end Tarea2;

begin
  null;
end Ej344ej1;



