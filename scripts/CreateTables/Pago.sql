-- Table: Sale.Pago

-- DROP TABLE IF EXISTS "Sale"."Pago";

CREATE TABLE IF NOT EXISTS "Sale"."Pago"
(
    "Id" integer NOT NULL,
    "TipoPago" text COLLATE pg_catalog."default" NOT NULL,
    "Comprobante" text COLLATE pg_catalog."default",
    "Recargo" money,
    "Bonificacion" money,
    "Total" money,
    CONSTRAINT "Pago_pkey" PRIMARY KEY ("Id")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Sale"."Pago"
    OWNER to postgres;