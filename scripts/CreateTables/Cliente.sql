-- Table: Sale.Cliente

-- DROP TABLE IF EXISTS "Sale"."Cliente";

CREATE TABLE IF NOT EXISTS "Sale"."Cliente"
(
    "Numero" integer NOT NULL,
    "Nombre" text COLLATE pg_catalog."default" NOT NULL,
    "Apellido" text COLLATE pg_catalog."default" NOT NULL,
    "FechaNacimiento" date NOT NULL,
    "CorreoElectronico" text COLLATE pg_catalog."default" NOT NULL,
    "Direccion_Id" integer NOT NULL,
    "Documento_Id" integer NOT NULL,
    "Saldo" money NOT NULL,
    "Version" integer,
    CONSTRAINT "Cliente_pkey" PRIMARY KEY ("Numero"),
    CONSTRAINT "Direccion_FK" FOREIGN KEY ("Direccion_Id")
        REFERENCES "Sale"."Direccion" ("Id") MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID,
    CONSTRAINT "Documento_FK" FOREIGN KEY ("Documento_Id")
        REFERENCES "Sale"."Documento" ("Id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Sale"."Cliente"
    OWNER to postgres;