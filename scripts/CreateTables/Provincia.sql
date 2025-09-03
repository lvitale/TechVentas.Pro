-- Table: Sale.Provincia

-- DROP TABLE IF EXISTS "Sale"."Provincia";

CREATE TABLE IF NOT EXISTS "Sale"."Provincia"
(
    "Codigo" text COLLATE pg_catalog."default" NOT NULL,
    "Descripcion" text COLLATE pg_catalog."default" NOT NULL,
    "Codigo_Pais" text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Provincia_pkey" PRIMARY KEY ("Codigo"),
    CONSTRAINT "Pais_FK" FOREIGN KEY ("Codigo_Pais")
        REFERENCES "Sale"."Pais" ("Codigo") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Sale"."Provincia"
    OWNER to postgres;