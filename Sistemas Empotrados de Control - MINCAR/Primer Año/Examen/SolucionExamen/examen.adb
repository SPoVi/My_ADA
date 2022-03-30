with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

with Ada.Real_Time; use Ada.Real_Time;
with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;

with pertask_gen; use pertask_gen;
with esptask_gen; use esptask_gen;

with ComienzoFin; use ComienzoFin;

with valores; use valores;
with tampon;

procedure examen is
   pragma Time_Slice (0.0);

   package pMiBuffer is new tampon (10, T_AleatorioDNI); use pMiBuffer;
   MiBuffer: Tampon_Circular; -- declaracion de objeto protegido


   procedure EscribirValor;
   procedure Media;
   procedure Alerta;

   Tarea_escribir : Periodic_Task (1, 60, 1, 1000, EscribirValor'access);
   Tarea_media : Periodic_Task (2, 55, 10, 10000, Media'access);
   -- task type periodic_task (Identificador, Prioridad, Periodo, Plazo (miliseg): Integer;
   --                          Procedimiento: not null access Procedure )

   Evento: aliased Suspension_Object; -- del paquete Ada.Synchronous_Task_Control
   Tarea_alerta : Esporadic_Task (3, 50, 20, 20000, Alerta'access, Evento'access);
   -- task type sporadic_task (Identificador, Prioridad, SeparacionMinima, Plazo (miliseg): Integer;
   --                          Procedimiento: not null access Procedure;
   --                          Evento: not null access Suspension_Object)


   procedure EscribirValor is
      iValor: T_AleatorioDNI;
   begin
      iValor := fstT;
      MiBuffer.Put (iValor);
      Put ("Valor:  ");
      Put (iValor, 3); New_Line;
   end EscribirValor;


   procedure Media is
      iValor: T_AleatorioDNI;
      fValorMedia: Float := 0.0;
   begin
      for i in 1..10 loop
         MiBuffer.Get(iValor);
         fValorMedia := fValorMedia + Float (iValor);
      end loop;

      fValorMedia := fValorMedia / 10.0;
      Put ("Media:  ");
      Put (fValorMedia, 0,2,0); New_Line;

      if fValorMedia > 500.0 then
         Fin.Set_Finish;
         Set_True(Evento);
      elsif fValorMedia > 333.0 then
         Set_True(Evento);
      end if;
   end Media;


   procedure Alerta is
   begin
      Put_Line ("Media superior a 333");
   end Alerta;


begin
   Put_Line ("Todas las tareas activadas");
   Comienzo.Set_Initial_Time (Clock + Seconds(5));
   delay until clock + seconds (1);
   Stop.Go;
end examen;
