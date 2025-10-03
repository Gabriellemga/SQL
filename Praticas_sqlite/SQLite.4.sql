select Mes, Ano , (precounitario * quantidade) as Receitas,
(quantidade * custounitario) as Despesas
FROM TabelaVendasMensais;

---

select Mes, Ano , 
((precounitario * quantidade) - (quantidade * custounitario)) as Lucro_Bruto
FROM TabelaVendasMensais;

---

SELECT Mes, Ano,
      ROUND(100 * ((Quantidade * PrecoUnitario) - (Quantidade * CustoUnitario)) / 
             (Quantidade * PrecoUnitario),1)  AS MargemLucroBruto
FROM TabelaVendasMensais;

---
select Mes, Ano , 
ROUND(((precounitario * quantidade) - (quantidade * custounitario)) -
(custounitario * quantidade) *0.3, 2) as Lucro_Liquido
FROM TabelaVendasMensais;

---
SELECT id_pedido, quantidadevendida, CEIL(quantidadevendida/8.0) AS Qtd_Caixas
FROM TabelaPedidos;

---

SELECT id_pedido, quantidadevendida, precounitario, desconto,
FLOOR ((quantidadevendida * precounitario) * (1 - desconto)) as Preco_Total
FROM TabelaPedidos;

---
SELECT Mes, Ano,
ABS(vendasmensais - mediavendas5anos) AS Diferenca_Absoluta_Vendas
FROM TabelaMetasVendasMensais;

---

SELECT Ano, Vendasbase,
ROUND((vendasbase * POWER(1 + taxacrescimento, 5)), 2) as Vendas_Projecao_5anos
FROM TabelaEstimativaCrescimento;


---
SELECT id_pedido, cidadecliente, 
SQRT(POWER(latitude - (-23.588161), 2) + POWER(longitude - (-46.632344), 2)) * 111.19 AS Distancia,
CASE WHEN SQRT(POWER(latitude - (-23.588161), 2) + POWER(longitude - (-46.632344), 2)) * 111.19
< 60 THEN 'Entrega gratuita'
     ELSE 'Cobrar entrega'
     END as Status_Entrega
from TabelaPedidos;  

---
   
SELECT id_pedido, cidadecliente, 
SQRT(POWER(latitude - (-23.588161), 2) + POWER(longitude - (-46.632344), 2)) * 111.19 AS Distancia,
CASE WHEN SQRT(POWER(latitude - (-23.588161), 2) + POWER(longitude - (-46.632344), 2)) * 111.19
< 60 THEN 0
     ELSE CEIL(quantidadevendida/8.0) * 50.00
     END as Frete
from TabelaPedidos; 
     





