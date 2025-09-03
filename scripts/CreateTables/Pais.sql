-- Table: Sale.Pais

-- DROP TABLE IF EXISTS "Sale"."Pais";

CREATE TABLE IF NOT EXISTS "Sale"."Pais"
(
    "Codigo" text COLLATE pg_catalog."default" NOT NULL,
    "Descripcion" text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Pais_pkey" PRIMARY KEY ("Codigo")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Sale"."Pais"
    OWNER to postgres;