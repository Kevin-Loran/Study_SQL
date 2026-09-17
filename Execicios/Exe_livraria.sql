CREATE DATABASE livraria;

USE livraria;

CREATE TABLE livros(
	nome_livro VARCHAR(50),
	nome_editora VARCHAR(100),
	numero_paginas INT,
	valor_livro INT,
	uf CHAR(2),
	sexo_autor CHAR(1)
);

SHOW TABLES;

INSERT INTO livros(nome_livro, nome_editora, numero_paginas,
 valor_livro, uf, sexo_autor) VALUES ('Senhor dos aneis',
 'Warner .bros', 1000, 250, 'SP', 'M');
 
 INSERT INTO livros (nome_livro, nome_editora, numero_paginas,
 valor_livro, uf, sexo_autor) VALUES ('Clean Code', 
 'Alta Books', 464, 120.00, 'MG', 'M');

INSERT INTO livros (nome_livro, nome_editora, numero_paginas,
 valor_livro, uf, sexo_autor) VALUES ('Harry Potter', 
 'Rocco', 350, 80.00, 'RJ', 'F');

INSERT INTO livros (nome_livro, nome_editora, numero_paginas,
 valor_livro, uf, sexo_autor) VALUES ('A Hora da Estrela',
 'Rocco', 150, 35.00, 'RJ', 'F');

SELECT nome_livro, sexo_autor FROM livros 
WHERE uf = 'SP';

SELECT * FROM livros WHERE uf = 'SP' OR uf = 'MG';