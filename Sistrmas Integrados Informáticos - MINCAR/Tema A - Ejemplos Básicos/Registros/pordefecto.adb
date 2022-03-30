with Ada.Text_IO;use Ada.Text_IO;
procedure pordefecto is
   type T_Mes is (Enero, Febrero, MArzo, Abril, Mayo, Junio, Julio, Agosto,
                  Septiembre, Octubre, Noviembre, Diciembre);
   subtype T_spDia is Positive range 1..31;

   type T_rgFecha is
      record
         sp_Dia: T_spDia:=15;
         Mes: T_Mes:=Abril;
         iAño: Integer:=1980;
      end record;
   rgFecha1: T_rgFecha;
   rgFecha2: T_rgFecha:=(25,Mes=><>,iAño=><>);
   rgFecha3: T_rgFecha:=(25, Mayo);

begin
  null;
end pordefecto;
