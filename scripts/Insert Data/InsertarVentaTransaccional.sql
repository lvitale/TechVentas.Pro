
BEGIN;

INSERT INTO "Sale"."Pago"("Id","TipoPago","Comprobante","Recargo","Bonificacion","Total")
Values(4,'Efectivo','',0,0,23000);	

INSERT INTO "Sale"."FacturaElectronica"("Numero","Cae","Tipo")
Values('00992-01951110','75343531608189','B');	

INSERT INTO "Sale"."Venta"("Numero","Cliente_Id","Pago_Id","FechaRegistro","FacturaElectronica_Id")
Values(4,1,4,'2025-09-01','00992-01951110');	

INSERT INTO "Sale"."DetalleVenta"("Codigo_Producto","Cantidad","Numero_Venta")
Values('AU1',1,4);	

update "Sale"."Cliente"  
set "Saldo" = (select sum("pa"."Total") from "Sale"."Venta" as  ve,"Sale"."Pago" as pa where  "ve"."Cliente_Id"= 1 and "ve"."Pago_Id" = "pa"."Id")
where "Numero" = 1;

update "Sale"."Producto" pr 
set "Stock" = "Stock" - (select "dv"."Cantidad" from "Sale"."DetalleVenta" as  dv where "dv"."Numero_Venta" = 4 and "dv"."Codigo_Producto" = "pr"."Codigo")
where "pr"."Codigo" in ( select "dv"."Codigo_Producto" from "Sale"."DetalleVenta" as  dv 
		     where "dv"."Numero_Venta" = 4);
		     commit;
			 

 

