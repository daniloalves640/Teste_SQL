USE [TesteDB]
-- Cria uma tabela com cada nome do estilo 'dbo'
-- Delete se já existir

IF OBJECT_ID('dbo.bairro', 'U') IS NOT NULL
DROP TABLE dbo.Bairro
GO

CREATE TABLE "bairro" (
  "id_bairro" varchar(11) NOT NULL DEFAULT '0',
  "nome" varchar(255) NOT NULL,
  PRIMARY KEY ("id_bairro")
)
GO

INSERT INTO "bairro" ("id_bairro", "nome")
VALUES
	(1, 'Mooca'),
	(2,'Ipiranga'),
	(3,'Vila Hamburguesa'),
	(4,'Lapa'),
	(5,'Campo Belo');

IF OBJECT_ID('dbo.carro', 'U') IS NOT NULL
DROP TABLE dbo.carro
GO

DROP TABLE IF EXISTS "carro";

CREATE TABLE "carro" (
  "id_carro" varchar(11) NOT NULL DEFAULT '0',
  "modelo" varchar(255) NOT NULL,
  "fk_cliente" varchar (11) NOT NULL,
  PRIMARY KEY ("id_carro")
)

INSERT INTO "carro" ("id_carro", "modelo", "fk_cliente")
VALUES
	(1,'Fiat',1),
	(2,'Mercedes',2),
	(3,'Honda',3),
	(4,'Toyota',4),
	(5,'Lada',1);

IF OBJECT_ID('dbo.casa', 'U') IS NOT NULL
DROP TABLE dbo.casa
GO

DROP TABLE IF EXISTS "casa";

CREATE TABLE "casa" (
  "id_casa" varchar(11) NOT NULL DEFAULT '0',
  "cor" varchar(255) NOT NULL,
  "fk_cliente" varchar(11) NOT NULL,
  "fk_bairro" varchar(11) NOT NULL,
  PRIMARY KEY ("id_casa")
) 

INSERT INTO "casa" ("id_casa", "cor", "fk_cliente", "fk_bairro")
VALUES
	(1,'Vermelho',1,1),
	(2,'Roxo',2,2),
	(3,'Azul',3,3),
	(4,'Rosa',4,4),
	(5,'Laranja',5,5);

IF OBJECT_ID('dbo.cliente', 'U') IS NOT NULL
DROP TABLE dbo.cliente
GO

DROP TABLE IF EXISTS "cliente";

CREATE TABLE "cliente" (
  "id_cliente" varchar(11) NOT NULL DEFAULT '0',
  "nome" varchar(255) NOT NULL,
  "sobrenome" varchar(255) NOT NULL,
  "data_nascimento" date NOT NULL,
  PRIMARY KEY ("id_cliente")
)

INSERT INTO "cliente" ("id_cliente", "nome", "sobrenome", "data_nascimento")
VALUES
	(1,'Fernando','Soares','1985-04-19'),
	(2,'Bruno','Campos','1988-06-02'),
	(3,'Fernanda','Figo','1989-07-20'),
	(4,'Arthur','Siqueira','1990-03-14'),
	(5,'Joao','Garcia','1943-02-19');

SELECT * FROM dbo.bairro;
SELECT * FROM dbo.carro;
SELECT * FROM dbo.casa;
SELECT * FROM dbo.cliente;
