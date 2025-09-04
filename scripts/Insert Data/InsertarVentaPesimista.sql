
BEGIN;
select * from "Sale"."Cliente" where "Numero" = 1 for update;

INSERT INTO "Sale"."Pago"("Id","TipoPago","Comprobante","Recargo","Bonificacion","Total")
Values(6,'Efectivo','',0,0,23000);	

INSERT INTO "Sale"."FacturaElectronica"("Numero","Cae","Tipo")
Values('00992-01951112','75343531608189','B');	

INSERT INTO "Sale"."Venta"("Numero","Cliente_Id","Pago_Id","FechaRegistro","FacturaElectronica_Id")
Values(6,1,6,'2025-09-01','00992-01951112');	

INSERT INTO "Sale"."DetalleVenta"("Codigo_Producto","Cantidad","Numero_Venta")
Values('AU1',1,6);	

update "Sale"."Cliente"  
set "Saldo" = (select sum("pa"."Total") from "Sale"."Venta" as  ve,"Sale"."Pago" as pa where  "ve"."Cliente_Id"= 1 and "ve"."Pago_Id" = "pa"."Id")
where "Numero" = 1 ;

update "Sale"."Producto" pr 
set "Stock" = "Stock" - (select "dv"."Cantidad" from "Sale"."DetalleVenta" as  dv where "dv"."Numero_Venta" = 6 and "dv"."Codigo_Producto" = "pr"."Codigo")
where "pr"."Codigo" in ( select "dv"."Codigo_Producto" from "Sale"."DetalleVenta" as  dv 
		     where "dv"."Numero_Venta" = 6);
			 
		     commit;
			 

