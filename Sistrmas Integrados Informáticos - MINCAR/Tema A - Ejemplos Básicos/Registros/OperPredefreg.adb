with Ada.Text_IO;use Ada.Text_IO;
procedure OperPredereg is
   type T_Mes is (Enero, Febrero, MArzo, Abril, Mayo, Junio, Julio, Agosto,
                  Septiembre, Octubre, Noviembre, Diciembre);
   subtype T_spDia is Positive range 1..31;

   type T_rgFecha is
      record
         sp_Dia: T_spDia;
         Mes: T_Mes;
         iAño: Integer;
      end record;
   rgFecha1: T_rgFecha:= (15, Diciembre, 1994);
   rgFecha2: T_rgFecha:= (sp_Dia=>12, Mes=>Enero, iAño=>1999);

   boRdo: Boolean;

begin

   boRdo:= rgFecha1=rgFecha2;
   Put_Line (Boolean'Image(boRdo));
   boRdo:= rgFecha1/=rgFecha2;
   Put_Line (Boolean'Image(boRdo));
   rgFecha1:=rgFecha2;
   boRdo:= rgFecha1=rgFecha2;
   Put_Line (Boolean'Image(boRdo));

end OperPredereg;
