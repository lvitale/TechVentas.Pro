--------- OBTIENE LA CANTIDAD Y EL CODIGO DE PRODUCTO DE LOS ARTICULOS VENDIDOS POR CLIENTE
select "dv"."Cantidad" , "dv"."Codigo_Producto"
from "Sale"."Venta" as  ve,"Sale"."DetalleVenta" as dv 
where  "ve"."Cliente_Id"= 1
and "dv"."Numero_Venta" = "ve"."Numero"

--------- OBTIENE LA SUMA DEL TOTAL POR EL CLIENTETE
select sum("pa"."Total")
from "Sale"."Venta" as  ve,"Sale"."Pago" as pa 
where  "ve"."Cliente_Id"= 1
and "ve"."Pago_Id" = "pa"."Id"
