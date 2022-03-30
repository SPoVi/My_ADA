-- librerias
with ada.Text_IO; use ada.Text_IO;
with ada.Integer_Text_IO; use ada.Integer_Text_IO;

procedure prueba is

   function F_name(var1: out Integer) return Integer is
      var2: Integer;

   begin
      var1:= 1;
      var2:= 2;

      return var2;
   end F_name;

   procedure P_name(var1: out Integer; var2: out Integer) is
   begin
      var1:= 3;
      var2:= 4;
   end P_name;


   -- declararion var loc
   A,B,C,D: Integer;

begin
   -- Insert code here

   B:=F_name(A);
   P_name(C,D);

   put_line("A: " &Integer'Image(A)& " B: " &Integer'Image(B)& " C: "
            &Integer'Image(C)& " D: "&Integer'Image(D));

end prueba;
