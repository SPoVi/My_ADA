
procedure AsignReg is
   type T_Mes is (Enero, Febrero, MArzo, Abril, Mayo, Junio, Julio, Agosto,
                  Septiembre, Octubre, Noviembre, Diciembre);
   subtype T_spDia is Positive range 1..31;

   type T_rgFecha is
      record
         sp_Dia: T_spDia;
         Mes: T_Mes;
         iAño: Integer;
      end record;
   rgFecha: T_rgFecha:= (15, Diciembre, 1994);

begin

   rgFecha.sp_Dia:= 25;
   rgFecha.Mes:= Octubre;
   rgFecha.iAño:= 1995;

   rgFecha:=(15, Diciembre, 1994);

   rgFecha:= (sp_Dia=>12);  -- Error de compilación: faltan los otros
   rgFecha:= (sp_Dia=>12, Mes=>Enero, iAño=>1990);

   rgFecha:= (14, iAño=>1930, Mes=>Marzo);

end AsignReg;
