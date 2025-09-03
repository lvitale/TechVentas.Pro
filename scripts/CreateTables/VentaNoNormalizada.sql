-- Table: Sale.VentaNoNormalizada

-- DROP TABLE IF EXISTS "Sale"."VentaNoNormalizada";

CREATE TABLE IF NOT EXISTS "Sale"."VentaNoNormalizada"
(
    "NumeroVenta" integer NOT NULL DEFAULT nextval('"Sale"."Ventas_NoNormalizada_NumeroVenta_seq"'::regclass),
    "NumeroFacturaElectroncia" text[] COLLATE pg_catalog."default" NOT NULL,
    "Cae" text COLLATE pg_catalog."default" NOT NULL,
    "TipoFacturaElectronica" text COLLATE pg_catalog."default" NOT NULL,
    "NumeroCliente" integer NOT NULL,
    "NombreCliente" text COLLATE pg_catalog."default" NOT NULL,
    "ApellidoCliente" text COLLATE pg_catalog."default" NOT NULL,
    "FechaNacimientoCliente" date NOT NULL,
    "correoElectronicoCliente" text COLLATE pg_catalog."default" NOT NULL,
    "TipoDocumentoCliente" text COLLATE pg_catalog."default" NOT NULL,
    "NumeroDocumentoCliente" text COLLATE pg_catalog."default" NOT NULL,
    "CalleCliente" text COLLATE pg_catalog."default" NOT NULL,
    "NumeroCalleCliente" text COLLATE pg_catalog."default" NOT NULL,
    "DepartamentoCliente" text COLLATE pg_catalog."default",
    "PisoCliente" text COLLATE pg_catalog."default",
    "CodigoPostalCliente" text COLLATE pg_catalog."default" NOT NULL,
    "LocalidadCliente" text COLLATE pg_catalog."default" NOT NULL,
    "PartidoCliente" text COLLATE pg_catalog."default" NOT NULL,
    "ProvinciaCLiente" text COLLATE pg_catalog."default" NOT NULL,
    "PaisCliente" text COLLATE pg_catalog."default" NOT NULL,
    "TelefonoFijoCliente" text COLLATE pg_catalog."default",
    "TelefonoMovilCliente" text COLLATE pg_catalog."default",
    "DetalleProductos" text COLLATE pg_catalog."default" NOT NULL,
    "TipoPagoCliente" text COLLATE pg_catalog."default" NOT NULL,
    "RecargoTipoPagoCliente" money,
    "BonificacionCliente" money,
    "NumerocomprobantePago" text COLLATE pg_catalog."default",
    "Subtotal" money NOT NULL,
    "Total" money NOT NULL,
    "FechaRegistro" date,
    CONSTRAINT "Ventas_NoNormalizada_pkey" PRIMARY KEY ("NumeroVenta")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Sale"."VentaNoNormalizada"
    OWNER to postgres;