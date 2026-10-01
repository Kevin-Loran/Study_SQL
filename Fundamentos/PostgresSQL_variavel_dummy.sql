/* utilizando o Case*/

SELECT NOME,
CASE
	WHEN SEXO = 'Masculino' THEN 'M'
	ELSE 'F'
END AS "SEXO"
FROM FUNCIONARIOS;

/*utilizando valores Booleanos*/

SELECT NOME, CARGO, (SEXO = 'Masculino') AS MASCULINO, (SEXO = 'Feminino') AS FEMININO
FROM FUNCIONARIOS;

/*Mesclando Técnicas*/

SELECT NOME, CARGO,
CASE
	WHEN (SEXO = 'Masculino') = true THEN 1
	ELSE 0
END AS "MASCULINO",
CASE
	WHEN (SEXO = 'Feminino') = true THEN 1
	ELSE 0
END AS "FEMININO"
FROM FUNCIONARIOS;
