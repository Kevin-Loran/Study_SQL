USE CLIENTE;

DESC CLIENTE;

/*Está forma é omitindo as colunas. FORMA ERRADA!!*/

INSERT INTO clientes VALUES ('joao', 'M', 'Joao@gmail.com', '55555555522', 
'(11)98765-6767', 'Rua um do lado da rua dois');

INSERT INTO clientes VALUES ('Célia', 'F', 'celia@gmail.com', '54323554522', 
'(11)92365-6666', 'Rua tres do lado da rua quatro');

INSERT INTO clientes VALUES ('Jorge', 'M', NULL, '54323554522', 
'(11)92365-6666', 'Rua tres do lado da rua quatro');

/*Está forma é especificando as colunas. FORMA CERTA!*/

INSERT INTO clientes (nome, sexo, endereco, telefone, cpf) VALUES('Célia', 'F','Rua tres do lado da rua quatro',
 '(11)92365-6666', '54323554522' );
 
 /*Está é uma forma que só funciona no MYSQL. Se chama INSERT COMPACTO*/
 
 INSERT INTO clientes VALUES ('Ana', 'F', 'aninha@gmail.com', '54323554522', 
'(11)92777-6666', 'Rua cinco do lado da rua seis'),
										('Carla', 'F', 'carlinha@gmail.com', '54323554522', 
'(11)92666-6666', 'Rua tres do lado da rua quatro');