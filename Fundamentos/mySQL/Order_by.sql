/*Aprendendo a query ORDER BY*/

CREATE VIEW V_RELATORIO AS
	SELECT 	C.IDCLIENTE, 
			C.NOME, 
			C.SEXO,
			IFNULL(EMAIL, '******') AS EMAIL, 
			C.CPF, 
			E.RUA,
			E.BAIRRO,
			E.CIDADE,
			E.ESTADO,
			T.TIPO,
			T.NUMERO
	FROM CLIENTES C
	INNER JOIN ENDERECO E
		ON C.IDCLIENTE = E.IDCLIENTE
	INNER JOIN TELEFONE T
		ON C.IDCLIENTE = T.IDCLIENTE;
		
SELECT IDCLIENTE, NOME, CPF 
FROM V_RELATORIO
ORDER BY 2; 

+-----------+---------+-----------+
| IDCLIENTE | NOME    | CPF       |
+-----------+---------+-----------+
|        20 | ANDRE   | 7687567   |
|        20 | ANDRE   | 7687567   |
|        26 | ANTONIO | 12436767  |
|        26 | ANTONIO | 12436767  |
|        26 | ANTONIO | 12436767  |
|        27 | ANTONIO | 3423565   |
|        23 | DANIELE | 43536789  |
|        23 | DANIELE | 43536789  |
|        25 | EDUARDO | 54376457  |
|        28 | ELAINE  | 32567763  |
|        19 | FLAVIO  | 4657765   |
|        19 | FLAVIO  | 4657765   |
|        21 | GIOVANA | 0876655   |
|        21 | GIOVANA | 0876655   |
|        24 | LORENA  | 774557887 |
+-----------+---------+-----------+