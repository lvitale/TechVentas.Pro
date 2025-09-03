-- Table: Sale.Documento

-- DROP TABLE IF EXISTS "Sale"."Documento";

CREATE TABLE IF NOT EXISTS "Sale"."Documento"
(
    "Id" integer NOT NULL,
    "Tipo" text COLLATE pg_catalog."default" NOT NULL,
    "Numero" text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Documento_pkey" PRIMARY KEY ("Id")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Sale"."Documento"
    OWNER to postgres;