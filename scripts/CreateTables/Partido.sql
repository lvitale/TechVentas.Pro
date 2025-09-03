-- Table: Sale.Partido

-- DROP TABLE IF EXISTS "Sale"."Partido";

CREATE TABLE IF NOT EXISTS "Sale"."Partido"
(
    "Codigo" text COLLATE pg_catalog."default" NOT NULL,
    "Descripcion" text COLLATE pg_catalog."default" NOT NULL,
    "Codigo_Provincia" text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Partido_pkey" PRIMARY KEY ("Codigo"),
    CONSTRAINT "Provincia_FK" FOREIGN KEY ("Codigo_Provincia")
        REFERENCES "Sale"."Provincia" ("Codigo") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Sale"."Partido"
    OWNER to postgres;