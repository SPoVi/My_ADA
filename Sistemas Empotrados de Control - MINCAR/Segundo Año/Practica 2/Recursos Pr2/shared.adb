package body shared is

   protected body Shared_Integer is

      function Read return Integer is

      begin
         Put_Line("Leo");
         return The_Data;
      end Read;

      procedure Write (New_Value : Integer) is
      begin
         Put_Line("Escribo");
         The_Data:= New_Value;
      end Write;

      procedure Increment (By : Integer) is
      begin
         Put_Line("Incremento");
         The_Data:= The_Data + By;
      end Increment;
   end Shared_Integer;

end shared;
