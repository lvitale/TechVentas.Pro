-- Table: Sale.Venta

-- DROP TABLE IF EXISTS "Sale"."Venta";

CREATE TABLE IF NOT EXISTS "Sale"."Venta"
(
    "Numero" integer NOT NULL,
    "Cliente_Id" integer NOT NULL,
    "Pago_Id" integer NOT NULL,
    "FechaRegistro" date NOT NULL,
    "FacturaElectronica_Id" text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Venta_pkey" PRIMARY KEY ("Numero"),
    CONSTRAINT "Cliente_FK" FOREIGN KEY ("Cliente_Id")
        REFERENCES "Sale"."Cliente" ("Numero") MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID,
    CONSTRAINT "FacturaElectronica_FK" FOREIGN KEY ("FacturaElectronica_Id")
        REFERENCES "Sale"."FacturaElectronica" ("Numero") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT "Pago_FK" FOREIGN KEY ("Pago_Id")
        REFERENCES "Sale"."Pago" ("Id") MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Sale"."Venta"
    OWNER to postgres;