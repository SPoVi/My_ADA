with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


procedure Ej344ej1_2 is
   protected type SincrCond is
      entry Wait (iValor: out Integer);
      procedure Go (iValor: Integer);
   private
      Opened: Boolean := False; -- valor inicial: FALSE. No se pasa como par�metro del protected type porque un sem�foro de sincr siempre sebe estar inicializado a false
      iValorCompartido: Integer;
   end SincrCond;


   protected body SincrCond is

      entry Wait (iValor: out Integer) when Opened is -- tarea suspendida hasta que Opened=TRUE
      begin

	iValor:= iValorCompartido;
	Opened := False;

      end Wait;

      procedure Go (iValor: Integer) is		-- Opened = TRUE -> pone sem�foro en verde
      begin

	iValorCompartido := iValor;
	Opened :=True;

      end Go;

   end SincrCond;

   Sem: SincrCond;


   task Tarea1 is
   end Tarea1;

   task body Tarea1 is
      iValor: Integer;
   begin
      for I in 1..5 loop
         Put_Line("Introduce valor");
         Get (iValor);
         Sem.Go (iValor); -- Espera mientras sem�foro en rojo
      end loop;

   end Tarea1;

   task Tarea2 is
   end Tarea2;

   task body Tarea2 is
      iValor: Integer;
   begin
      for I in 1..5 loop
         Sem.WAit(iValor); -- Espera mientras sem�foro en rojo
         Put("El valor es ");
         Put(iValor);


      end loop;

   end Tarea2;

begin
  null;
end Ej344ej1_2;



