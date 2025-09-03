-- Table: Sale.FacturaElectronica

-- DROP TABLE IF EXISTS "Sale"."FacturaElectronica";

CREATE TABLE IF NOT EXISTS "Sale"."FacturaElectronica"
(
    "Numero" text COLLATE pg_catalog."default" NOT NULL,
    "Cae" text COLLATE pg_catalog."default" NOT NULL,
    "Tipo" text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "FacturaElectronica_pkey" PRIMARY KEY ("Numero")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Sale"."FacturaElectronica"
    OWNER to postgres;