-- EX01
SELECT MAX(preco) FROM produto;

-- EX02
SELECT MIN(qtd) FROM compras;

-- EX03
SELECT ROUND(AVG(qtd),2) FROM compras;

-- EX04
SELECT COUNT(*) FROM cliente
  WHERE estado = 'Rio de Janeiro';
  
-- EX05
SELECT ROUND(AVG(preco),2) AS precomedio 
  FROM produto;

-- EX06
SELECT COUNT(*) FROM compras
	JOIN produto
      ON produto.idproduto = compras.idproduto
	JOIN marca
      ON marca.idmarca = produto.idmarca
	WHERE marca.nomemarca = 'Bom prato';
    
-- EX07
SELECT SUM(compras.qtd) FROM compras
	JOIN loja 
      ON loja.idloja = compras.idloja
  WHERE loja.nomeloja = 'Vale Verde';

-- EX08
SELECT SUM(compras.qtd) FROM compras
	JOIN loja
      ON loja.idloja = compras.idloja
  WHERE loja.uf = 'MG';

-- EX09
SELECT SUM(compras.qtd) FROM compras
	JOIN produto
      ON compras.idproduto = produto.idproduto
  WHERE produto.nomeproduto = 'Macarrão';
  
-- EX10
SELECT SUM(qtd) FROM compras;
	


