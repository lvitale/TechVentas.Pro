-- Table: Sale.Telefono

-- DROP TABLE IF EXISTS "Sale"."Telefono";

CREATE TABLE IF NOT EXISTS "Sale"."Telefono"
(
    "Id" integer NOT NULL,
    "Numero" text COLLATE pg_catalog."default" NOT NULL,
    "Tipo" text COLLATE pg_catalog."default" NOT NULL,
    "Numero_Cliente" integer NOT NULL,
    CONSTRAINT "Contacto_pkey" PRIMARY KEY ("Id"),
    CONSTRAINT "Cliente_FK" FOREIGN KEY ("Numero_Cliente")
        REFERENCES "Sale"."Cliente" ("Numero") MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Sale"."Telefono"
    OWNER to postgres;