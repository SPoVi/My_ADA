
package shared is

   protected type Shared_Integer (Initial_Value : Integer) is


      function Read return Integer;
      procedure Write (New_Value : Integer);
      procedure Increment (By : Integer);

   private
      The_Data: Integer := Initial_Value;
   end Shared_Integer;


end shared;

