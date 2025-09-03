-- Table: Sale.Producto

-- DROP TABLE IF EXISTS "Sale"."Producto";

CREATE TABLE IF NOT EXISTS "Sale"."Producto"
(
    "Codigo" text COLLATE pg_catalog."default" NOT NULL,
    "Descripcion" text COLLATE pg_catalog."default" NOT NULL,
    "PrecioUnitario" money NOT NULL,
    "Stock" integer NOT NULL,
    "Version" integer,
    CONSTRAINT "Producto_pkey" PRIMARY KEY ("Codigo")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Sale"."Producto"
    OWNER to postgres;