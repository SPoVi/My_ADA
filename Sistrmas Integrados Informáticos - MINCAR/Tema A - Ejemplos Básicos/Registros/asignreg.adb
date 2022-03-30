
procedure AsignReg is
   type T_Mes is (Enero, Febrero, MArzo, Abril, Mayo, Junio, Julio, Agosto,
                  Septiembre, Octubre, Noviembre, Diciembre);
   subtype T_spDia is Positive range 1..31;

   type T_rgFecha is
      record
         sp_Dia: T_spDia;
         Mes: T_Mes;
         iA�o: Integer;
      end record;
   rgFecha: T_rgFecha:= (15, Diciembre, 1994);

begin

   rgFecha.sp_Dia:= 25;
   rgFecha.Mes:= Octubre;
   rgFecha.iA�o:= 1995;

   rgFecha:=(15, Diciembre, 1994);

   rgFecha:= (sp_Dia=>12);  -- Error de compilaci�n: faltan los otros
   rgFecha:= (sp_Dia=>12, Mes=>Enero, iA�o=>1990);

   rgFecha:= (14, iA�o=>1930, Mes=>Marzo);

end AsignReg;
