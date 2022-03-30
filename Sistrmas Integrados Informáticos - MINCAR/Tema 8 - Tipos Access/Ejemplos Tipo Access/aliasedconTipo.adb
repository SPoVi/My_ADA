with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure aliasedconTipo is
   type Ptr_Int is access all Integer;	-- Declaración del tipo Access
   IP: Ptr_Int;		-- Declaración de la variable tipo access
   I: aliased Integer;		-- Objeto que va a ser accedido mediante access
begin
   IP:=I'Access;
   IP.all:= 25;		-- Cambio del contenido del objeto apuntado
   Put (IP.all,0);
end;
