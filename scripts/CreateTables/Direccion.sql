-- Table: Sale.Direccion

-- DROP TABLE IF EXISTS "Sale"."Direccion";

CREATE TABLE IF NOT EXISTS "Sale"."Direccion"
(
    "Id" integer NOT NULL,
    "Calle" text COLLATE pg_catalog."default" NOT NULL,
    "Numero" text COLLATE pg_catalog."default" NOT NULL,
    "Departamento" text COLLATE pg_catalog."default",
    "Piso" text COLLATE pg_catalog."default",
    "Localidad" text COLLATE pg_catalog."default" NOT NULL,
    "Codigo_Partido" text COLLATE pg_catalog."default" NOT NULL,
    "CodigoPostal" text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Direccion_pkey" PRIMARY KEY ("Id"),
    CONSTRAINT "Partido_FK" FOREIGN KEY ("Codigo_Partido")
        REFERENCES "Sale"."Partido" ("Codigo") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Sale"."Direccion"
    OWNER to postgres;