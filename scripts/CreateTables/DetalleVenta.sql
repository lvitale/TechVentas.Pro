-- Table: Sale.DetalleVenta

-- DROP TABLE IF EXISTS "Sale"."DetalleVenta";

CREATE TABLE IF NOT EXISTS "Sale"."DetalleVenta"
(
    "Cantidad" integer NOT NULL,
    "Numero_Venta" integer NOT NULL,
    "Codigo_Producto" text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Venta_FK" FOREIGN KEY ("Numero_Venta")
        REFERENCES "Sale"."Venta" ("Numero") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Sale"."DetalleVenta"
    OWNER to postgres;