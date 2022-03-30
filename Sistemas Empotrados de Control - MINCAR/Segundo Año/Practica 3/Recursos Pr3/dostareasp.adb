with Ada.Real_Time; use Ada.Real_Time;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.fLOAT_Text_IO; use Ada.fLOAT_Text_IO;

procedure DosTareasP is
   pragma Time_Slice (0.0);

   task TareaP1 is
      pragma Priority (60);
   end TareaP1;

   task body TareaP1 is

      Period : constant Time_Span := Seconds(2); -- Hay que poner función que devuelve Time_Span!!
      Next_Time : Time;
      iCont : Integer := 0;
   begin
      Next_Time := Clock; -- Clock proporciona el tiempo absoluto transcurrido desde la época. Son las 12:00
      for I in 1..4 loop
         -- Son las 12:01

	 Next_Time := Next_Time + Period; -- Next_Time = 12:00 + :10= 12:10
         delay until Next_Time; -- libera procesador hasta las 12:10
         Put_Line("Hola, soy la tarea 1");
      end loop;
   end TareaP1;

   task TareaP2 is
      pragma Priority (50);
   end TareaP2;

   task body TareaP2 is

      Period : constant Time_Span := Seconds(4); -- Hay que poner función que devuelve Time_Span!!
      Next_Time : Time;
      iCont : Integer := 0;
   begin
      Next_Time := Clock; -- Clock proporciona el tiempo absoluto transcurrido desde la época. Son las 12:00
      for I in 1..4 loop
         -- Son las 12:01
	 Next_Time := Next_Time + Period; -- Next_Time = 12:00 + :10= 12:10
         delay until Next_Time; -- libera procesador hasta las 12:10
         Put_Line("Hola, soy la tarea 2");
      end loop;
   end TareaP2;
begin
   null;
end DosTareasP;
