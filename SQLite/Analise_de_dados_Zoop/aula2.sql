SELECT * from categorias;

SELECT * from fornecedores;

SELECT * from marcas;

SELECT COUNT(*) as Qtd_Categorias FROM categorias;

SELECT COUNT(*) as Qtd_Clientes  FROM clientes;

SELECT COUNT(*) as Qtd_Fornecedores  FROM fornecedores;

SELECT COUNT(*) as Qtd_ItensVenda  FROM itens_venda;

SELECT COUNT(*) as Qtd_Marcas  FROM marcas;

SELECT COUNT(*) as Qtd_Produtos  from produtos;

SELECT COUNT(*) as Qtd_Vendas  from vendas;

SELECT * from vendas limit 5;

SELECT DISTINCT(strftime("%Y",data_venda)) AS Ano from vendas
order by Ano;

SELECT strftime("%Y", data_venda) AS Ano, COUNT(id_venda) as Total_Vendas
FROM vendas
GROUP BY Ano
ORDER BY Ano
;

SELECT strftime("%Y", data_venda) AS Ano, strftime("%m", data_venda) As Mes, COUNT(id_venda) as Total_Vendas
FROM vendas
GROUP BY Ano, Mes
ORDER BY Ano
;

SELECT strftime("%Y", data_venda) AS Ano, strftime("%m", data_venda) As Mes, COUNT(id_venda) as Total_Vendas
FROM vendas
WHERE Mes = "01" OR Mes = "11" OR Mes = "12"
GROUP BY Ano, Mes
ORDER BY Ano
;