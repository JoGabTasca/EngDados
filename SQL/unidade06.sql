-- AULA 21/10

-- EX01
SELECT nomecliente,genero FROM cliente;
-- EX02
SELECT nomeproduto,preco FROM produto;
-- EX03
SELECT idcompra,dtcompra FROM compras;
-- EX04
SELECT nomecliente,cidade,estadocivil FROM cliente;
-- EX05
SELECT * FROM cliente;

-- EX06
SELECT nomecliente,estadocivil FROM cliente
  ORDER BY nomecliente ASC;
-- EX07
SELECT nomeproduto,preco FROM produto
 ORDER BY preco DESC;
-- EX08
SELECT nomecliente FROM cliente
 ORDER BY estado,cidade ASC;
 
-- EX09
SELECT DISTINCT estado FROM cliente;
-- EX10
SELECT DISTINCT dtcompra FROM compras;

-- EX11
SELECT nomeproduto FROM produto
 WHERE preco > 5;
-- EX12
SELECT nomecliente,estadocivil FROM cliente
 WHERE genero = 'F'
 ORDER BY nomecliente ASC;
 -- EX13
 SELECT nomecliente,cidade FROM cliente
  WHERE estado = 'Rio de Janeiro';
-- EX14
SELECT nomecliente FROM cliente
 WHERE dtnascimento < '2004-10-21';
 -- outro metodo de fazer!!
SELECT nomecliente, TIMESTAMPDIFF(YEAR, dtnascimento, CURDATE()) AS idade
 FROM cliente
 WHERE idade > 20
 ORDER BY idade;
-- EX15
SELECT DISTINCT idcliente FROM compras
 WHERE dtcompra BETWEEN '2021-01-01' AND '2021-12-31';
-- EX16
SELECT DISTINCT idcliente FROM compras
 WHERE EXTRACT(YEAR FROM dtcompra) = 2020;

-- EX17
SELECT nomecliente FROM cliente
WHERE nomecliente LIKE 'A%';
-- EX18
SELECT nomecliente FROM cliente
 WHERE nomecliente LIKE '%ana%';
-- EX19
SELECT nomecliente,estadocivil FROM cliente
 WHERE estado IN ('Rio de Janeiro','São Paulo','Minas Gerais','Espirito Santo');
 
-- EX20
SELECT nomecliente,estadocivil,
	CASE 
		WHEN estadocivil = 'D' THEN 'Divorciado'
		WHEN estadocivil = 'V' THEN 'Viuvo'
		WHEN estadocivil = 'C' THEN 'Casado'
		WHEN estadocivil = 'S' THEN 'Solteiro'
	END AS estadocivilE
FROM cliente;
