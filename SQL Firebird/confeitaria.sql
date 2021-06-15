/******************************************************************************/
/****         Generated by IBExpert 2008.08.08 14/06/2021 22:20:50         ****/
/******************************************************************************/

SET SQL DIALECT 3;

SET NAMES NONE;

SET CLIENTLIB 'C:\Engenharia de Software\Projeto\Prototipo\BaseDeDados\fbclient.dll';

CREATE DATABASE 'LOCALHOST:C:\Engenharia de Software\Projeto\Prototipo\BaseDeDados\banco.fdb'
USER 'SYSDBA' PASSWORD 'masterkey'
PAGE_SIZE 16384
DEFAULT CHARACTER SET NONE;



/******************************************************************************/
/****                              Generators                              ****/
/******************************************************************************/

CREATE GENERATOR GEN_CIDADES_ID;
SET GENERATOR GEN_CIDADES_ID TO 4;

CREATE GENERATOR GEN_CLIENTES_ID;
SET GENERATOR GEN_CLIENTES_ID TO 3;

CREATE GENERATOR GEN_ESTADOS_ID;
SET GENERATOR GEN_ESTADOS_ID TO 1;

CREATE GENERATOR GEN_PAGAMENTOS_ID;
SET GENERATOR GEN_PAGAMENTOS_ID TO 3;

CREATE GENERATOR GEN_PRODUTOS_ID;
SET GENERATOR GEN_PRODUTOS_ID TO 3;

CREATE GENERATOR GEN_USUARIOS_ID;
SET GENERATOR GEN_USUARIOS_ID TO 2;

CREATE GENERATOR GEN_VENDAS_ID;
SET GENERATOR GEN_VENDAS_ID TO 17;



SET TERM ^ ; 



/******************************************************************************/
/****                          Stored Procedures                           ****/
/******************************************************************************/

CREATE PROCEDURE SP_GEN_CIDADES_ID
RETURNS (
    ID INTEGER)
AS
BEGIN
  SUSPEND;
END^


CREATE PROCEDURE SP_GEN_CLIENTES_ID
RETURNS (
    ID INTEGER)
AS
BEGIN
  SUSPEND;
END^


CREATE PROCEDURE SP_GEN_ESTADOS_ID
RETURNS (
    ID INTEGER)
AS
BEGIN
  SUSPEND;
END^


CREATE PROCEDURE SP_GEN_PAGAMENTOS_ID
RETURNS (
    ID INTEGER)
AS
BEGIN
  SUSPEND;
END^


CREATE PROCEDURE SP_GEN_PRODUTOS_ID
RETURNS (
    ID INTEGER)
AS
BEGIN
  SUSPEND;
END^


CREATE PROCEDURE SP_GEN_USUARIOS_ID
RETURNS (
    ID INTEGER)
AS
BEGIN
  SUSPEND;
END^


CREATE PROCEDURE SP_GEN_VENDAS_ID
RETURNS (
    ID INTEGER)
AS
BEGIN
  SUSPEND;
END^



SET TERM ; ^



/******************************************************************************/
/****                                Tables                                ****/
/******************************************************************************/



CREATE TABLE CIDADES (
    ID_CIDADE   INTEGER NOT NULL,
    CIDADE      VARCHAR(35),
    COD_ESTADO  INTEGER
);

CREATE TABLE CLIENTES (
    ID_CLIENTE        INTEGER NOT NULL,
    DATA_ANIVERSARIO  DATE,
    NOME              VARCHAR(35),
    CPF               VARCHAR(35),
    ENDERECO          VARCHAR(35),
    COMPLEMENTO       VARCHAR(35),
    NUMERO            VARCHAR(11),
    BAIRRO            VARCHAR(35),
    TELEFONE          VARCHAR(11),
    EMAIL             VARCHAR(60),
    ID_CIDADE         INTEGER,
    ID_ESTADO         INTEGER
);

CREATE TABLE ESTADOS (
    ID_ESTADO  INTEGER NOT NULL,
    ESTADO     VARCHAR(35)
);

CREATE TABLE ITEM_VENDA (
    COD_VENDA  INTEGER NOT NULL,
    COD_PROD   INTEGER NOT NULL,
    QUANT      DECIMAL(18,2),
    PRECO      DECIMAL(18,2),
    TOTAL      DECIMAL(18,2)
);

CREATE TABLE PAGAMENTOS (
    ID_PAG     INTEGER NOT NULL,
    PAGAMENTO  VARCHAR(15)
);

CREATE TABLE PRODUTOS (
    ID_PRODUTOS  INTEGER NOT NULL,
    PRODUTO      VARCHAR(35),
    DESCRICAO    VARCHAR(35),
    PRECO        DECIMAL(18,2)
);

CREATE TABLE USUARIOS (
    ID_USUARIO  INTEGER NOT NULL,
    NOME        VARCHAR(25),
    USERNAME    VARCHAR(25),
    SENHA       VARCHAR(25)
);

CREATE TABLE VENDAS (
    ID_VENDA      INTEGER NOT NULL,
    DATA          DATE,
    HORA_ENTREGA  TIME,
    DATA_ENTREGA  DATE,
    COD_CLIENTE   INTEGER,
    COD_PAG       INTEGER,
    OBS           VARCHAR(50),
    ICOD_USUARIO  INTEGER,
    TOTAL         DECIMAL(18,2)
);



/******************************************************************************/
/****                             Primary Keys                             ****/
/******************************************************************************/

ALTER TABLE CIDADES ADD CONSTRAINT PK_CIDADES PRIMARY KEY (ID_CIDADE);
ALTER TABLE CLIENTES ADD CONSTRAINT PK_CLIENTES PRIMARY KEY (ID_CLIENTE);
ALTER TABLE ESTADOS ADD CONSTRAINT PK_ESTADOS PRIMARY KEY (ID_ESTADO);
ALTER TABLE ITEM_VENDA ADD CONSTRAINT PK_ITEM_VENDA PRIMARY KEY (COD_VENDA, COD_PROD);
ALTER TABLE PAGAMENTOS ADD CONSTRAINT PK_PAGAMENTOS PRIMARY KEY (ID_PAG);
ALTER TABLE PRODUTOS ADD CONSTRAINT PK_PRODUTOS PRIMARY KEY (ID_PRODUTOS);
ALTER TABLE USUARIOS ADD CONSTRAINT PK_USUARIOS PRIMARY KEY (ID_USUARIO);
ALTER TABLE VENDAS ADD CONSTRAINT PK_VENDAS PRIMARY KEY (ID_VENDA);


/******************************************************************************/
/****                             Foreign Keys                             ****/
/******************************************************************************/

ALTER TABLE CIDADES ADD CONSTRAINT FK_CIDADES_ESTADO FOREIGN KEY (COD_ESTADO) REFERENCES ESTADOS (ID_ESTADO)
  USING INDEX FK_CIDADES_1;
ALTER TABLE CLIENTES ADD CONSTRAINT FK_CLIENTES_CIDADES FOREIGN KEY (ID_CIDADE) REFERENCES CIDADES (ID_CIDADE);
ALTER TABLE CLIENTES ADD CONSTRAINT FK_CLIENTES_ESTADOS FOREIGN KEY (ID_ESTADO) REFERENCES ESTADOS (ID_ESTADO);
ALTER TABLE ITEM_VENDA ADD CONSTRAINT FK_ITEM_PRODUTO FOREIGN KEY (COD_PROD) REFERENCES PRODUTOS (ID_PRODUTOS);
ALTER TABLE ITEM_VENDA ADD CONSTRAINT FK_ITEM_VENDA FOREIGN KEY (COD_VENDA) REFERENCES VENDAS (ID_VENDA) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE VENDAS ADD CONSTRAINT FK_VENDAS_CLIENTE FOREIGN KEY (COD_CLIENTE) REFERENCES CLIENTES (ID_CLIENTE);
ALTER TABLE VENDAS ADD CONSTRAINT FK_VENDAS_PAGAMENTO FOREIGN KEY (COD_PAG) REFERENCES PAGAMENTOS (ID_PAG);


/******************************************************************************/
/****                               Triggers                               ****/
/******************************************************************************/


SET TERM ^ ;



/******************************************************************************/
/****                         Triggers for tables                          ****/
/******************************************************************************/



/* Trigger: CIDADES_BI */
CREATE TRIGGER CIDADES_BI FOR CIDADES
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id_cidade is null) then
    new.id_cidade = gen_id(gen_cidades_id,1);
end
^

/* Trigger: CLIENTES_BI */
CREATE TRIGGER CLIENTES_BI FOR CLIENTES
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id_cliente is null) then
    new.id_cliente = gen_id(gen_clientes_id,1);
end
^

/* Trigger: ESTADOS_BI */
CREATE TRIGGER ESTADOS_BI FOR ESTADOS
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id_estado is null) then
    new.id_estado = gen_id(gen_estados_id,1);
end
^

/* Trigger: PAGAMENTOS_BI */
CREATE TRIGGER PAGAMENTOS_BI FOR PAGAMENTOS
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id_pag is null) then
    new.id_pag = gen_id(gen_pagamentos_id,1);
end
^

/* Trigger: PRODUTOS_BI */
CREATE TRIGGER PRODUTOS_BI FOR PRODUTOS
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id_produtos is null) then
    new.id_produtos = gen_id(gen_produtos_id,1);
end
^

/* Trigger: USUARIOS_BI */
CREATE TRIGGER USUARIOS_BI FOR USUARIOS
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id_usuario is null) then
    new.id_usuario = gen_id(gen_usuarios_id,1);
end
^

/* Trigger: VENDAS_BI */
CREATE TRIGGER VENDAS_BI FOR VENDAS
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id_venda is null) then
    new.id_venda = gen_id(gen_vendas_id,1);
end
^

SET TERM ; ^



/******************************************************************************/
/****                          Stored Procedures                           ****/
/******************************************************************************/


SET TERM ^ ;

ALTER PROCEDURE SP_GEN_CIDADES_ID
RETURNS (
    ID INTEGER)
AS
begin
  id = gen_id(gen_cidades_id, 1);
  suspend;
end^


ALTER PROCEDURE SP_GEN_CLIENTES_ID
RETURNS (
    ID INTEGER)
AS
begin
  id = gen_id(gen_clientes_id, 1);
  suspend;
end^


ALTER PROCEDURE SP_GEN_ESTADOS_ID
RETURNS (
    ID INTEGER)
AS
begin
  id = gen_id(gen_estados_id, 1);
  suspend;
end^


ALTER PROCEDURE SP_GEN_PAGAMENTOS_ID
RETURNS (
    ID INTEGER)
AS
begin
  id = gen_id(gen_pagamentos_id, 1);
  suspend;
end^


ALTER PROCEDURE SP_GEN_PRODUTOS_ID
RETURNS (
    ID INTEGER)
AS
begin
  id = gen_id(gen_produtos_id, 1);
  suspend;
end^


ALTER PROCEDURE SP_GEN_USUARIOS_ID
RETURNS (
    ID INTEGER)
AS
begin
  id = gen_id(gen_usuarios_id, 1);
  suspend;
end^


ALTER PROCEDURE SP_GEN_VENDAS_ID
RETURNS (
    ID INTEGER)
AS
begin
  id = gen_id(gen_vendas_id, 1);
  suspend;
end^



SET TERM ; ^
