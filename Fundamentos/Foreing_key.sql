CREATE DATABASE COMERCIO;

SHOW DATABASES;

USE COMERCIO;

CREATE TABLE CLIENTES(
	IDCLIENTE int PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(150) NOT NULL,
	EMAIL VARCHAR(150) UNIQUE,
	SEXO ENUM('M', 'F') NOT NULL,
	CPF VARCHAR(11) UNIQUE
);

CREATE TABLE ENDERECO(
	IDENDERECO int PRIMARY KEY AUTO_INCREMENT,
	RUA VARCHAR(30) NOT NULL,
	BAIRRO VARCHAR(30) NOT NULL,
	CIDADE VARCHAR(30) NOT NULL,
	ESTADO CHAR(2) NOT NULL,
	IDCLIENTE INT UNIQUE,
	FOREIGN KEY(IDCLIENTE) 
	REFERENCES CLIENTES(IDCLIENTE)
);

CREATE TABLE TELEFONE(
	IDTELEFONE int PRIMARY KEY AUTO_INCREMENT,
	TIPO ENUM('COM', 'RES', 'CEL') NOT NULL,
	NUMERO VARCHAR(20) NOT NULL,
	IDCLIENTE INT,
	FOREIGN KEY(IDCLIENTE) 
	REFERENCES CLIENTES(IDCLIENTE)
);

ALTER TABLE CLIENTES 
MODIFY COLUMN CPF VARCHAR(14) UNIQUE;

+-----------+---------------+------+-----+---------+----------------+
| Field     | Type          | Null | Key | Default | Extra          |
+-----------+---------------+------+-----+---------+----------------+
| IDCLIENTE | int           | NO   | PRI | NULL    | auto_increment |
| NOME      | varchar(150)  | NO   |     | NULL    |                |
| EMAIL     | varchar(150)  | YES  | UNI | NULL    |                |
| SEXO      | enum('M','F') | NO   |     | NULL    |                |
| CPF       | varchar(11)   | YES  | UNI | NULL    |                |
+-----------+---------------+------+-----+---------+----------------+

INSERT INTO CLIENTES(NOME, EMAIL, SEXO, CPF) VALUES('JOAO', 'JOAO@GMAIL.COM', 'M', '555.555.555-55');
INSERT INTO CLIENTES(NOME, EMAIL, SEXO, CPF) VALUES('CLARA', 'CLARA@GMAIL.COM', 'F', '536.789.321-22');
INSERT INTO CLIENTES(NOME, EMAIL, SEXO, CPF) VALUES('JOAQUIM', 'JOAQUIM@GMAIL.COM', 'M', '567.824.456-51');
INSERT INTO CLIENTES(NOME, EMAIL, SEXO, CPF) VALUES('ANA', 'ANINHA22@GMAIL.COM', 'F', '598.243.543-43');
INSERT INTO CLIENTES(NOME, EMAIL, SEXO, CPF) VALUES('CAIQUE', 'CAIQUE.PROF@GMAIL.COM', 'M', '523.567.987-76');

+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDENDERECO | int         | NO   | PRI | NULL    | auto_increment |
| RUA        | varchar(30) | NO   |     | NULL    |                |
| BAIRRO     | varchar(30) | NO   |     | NULL    |                |
| CIDADE     | varchar(30) | NO   |     | NULL    |                |
| ESTADO     | char(2)     | NO   |     | NULL    |                |
| IDCLIENTE  | int         | YES  | UNI | NULL    |                |
+------------+-------------+------+-----+---------+----------------+

INSERT INTO ENDERECO(RUA, BAIRRO, CIDADE, ESTADO, IDCLIENTE) VALUES('RUA ANTONIO SA.', 'CENTRO', 'BELO HORIZONTE', 'MG', 1);
INSERT INTO ENDERECO(RUA, BAIRRO, CIDADE, ESTADO, IDCLIENTE) VALUES('RUA SAPOPEMBA', 'MATEO-BEI', 'SÃO_PAULO', 'SP', 2);
INSERT INTO ENDERECO(RUA, BAIRRO, CIDADE, ESTADO, IDCLIENTE) VALUES('RUA QUALQUER', 'FAZENDA_DA_JUTA', 'SÃO_PAULO', 'SP', 3);
INSERT INTO ENDERECO(RUA, BAIRRO, CIDADE, ESTADO, IDCLIENTE) VALUES('RUA SALGUERO', 'RIBEIRÃO', 'MAUA', 'SP', 4);
INSERT INTO ENDERECO(RUA, BAIRRO, CIDADE, ESTADO, IDCLIENTE) VALUES('RUA DO_ASSALTO', 'COPACABANA', 'LEBON', 'RJ', 5);

+------------+-------------------------+------+-----+---------+----------------+
| Field      | Type                    | Null | Key | Default | Extra          |
+------------+-------------------------+------+-----+---------+----------------+
| IDTELEFONE | int                     | NO   | PRI | NULL    | auto_increment |
| TIPO       | enum('COM','RES','CEL') | NO   |     | NULL    |                |
| NUMERO     | varchar(20)             | NO   |     | NULL    |                |
| IDCLIENTE  | int                     | YES  | MUL | NULL    |                |
+------------+-------------------------+------+-----+---------+----------------+

INSERT INTO TELEFONE(TIPO, NUMERO, IDCLIENTE) VALUES('COM', '(11)23345-4324', 1);
INSERT INTO TELEFONE(TIPO, NUMERO, IDCLIENTE) VALUES('RES', '(11)85644-6546', 3);
INSERT INTO TELEFONE(TIPO, NUMERO, IDCLIENTE) VALUES('COM', '(11)86454-4325', 2);
INSERT INTO TELEFONE(TIPO, NUMERO, IDCLIENTE) VALUES('CEL', '(11)25634-4876', 1);
INSERT INTO TELEFONE(TIPO, NUMERO, IDCLIENTE) VALUES('RES', '(11)60523-7657', 3);
INSERT INTO TELEFONE(TIPO, NUMERO, IDCLIENTE) VALUES('CEL', '(11)75984-7554', 1);
INSERT INTO TELEFONE(TIPO, NUMERO, IDCLIENTE) VALUES('COM', '(11)78325-4344', 4);
INSERT INTO TELEFONE(TIPO, NUMERO, IDCLIENTE) VALUES('CEL', '(11)91733-4333', 4);