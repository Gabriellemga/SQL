-- obtenha a data e hora atual 

SELECT CURRENT_TIMESTAMP AS DataHoraAtual; 

--formate uma data no formato YYYY-MM-DD 

SELECT Nome, STRFTIME('%Y-%m-%d', datanascimento ) as DataFormatada
from TabelaClientes;  

--calcule a diferença entre duas datas 

SELECT id_emprestimo, 
       JULIANDAY(DATE(DataInicio, '+' || Prazo || ' days')) - JULIANDAY(DataInicio) AS DiasTotais
FROM TabelaEmprestimo;

-- extraia o ano de uma coluna de datas 

SELECT Nome, STRFTIME('%Y', DataNascimento) AS AnoNascimento
FROM TabelaClientes;

--filtre registros de um intervalo de datas específico 

SELECT id_emprestimo, Status, Prazo, DataInicio, Tipo, Valor, id_cliente
FROM TabelaEmprestimo
WHERE datainicio 	BETWEEN '2023-01-01' AND '2023-03-31';  

--adicione ou subtraia dias de uma data 

SELECT id_emprestimo, DataInicio,  DATE(DataInicio, '+' || Prazo || ' days') AS DataVencimento 
FROM TabelaEmprestimo;  

--ordene registros por datas em ordem crescente  

SELECT id_pagamento, DataPagamento,	Valor, Status, id_emprestimo
FROM TabelaPagamentos
ORDER by DataPagamento ASC;  

--calcule a idade com base na data de nascimento  

SELECT Nome, 
       (strftime('%Y', 'now') - strftime('%Y', DataNascimento)) - 
       (strftime('%m', 'now') < strftime('%m', DataNascimento)) AS Idade
FROM TabelaClientes;  

--combine funções de data com outras funções  

SELECT id_emprestimo, CASE
        WHEN DATE(DataInicio, '+' || Prazo || ' days') > 'now' THEN 'No Prazo'
        ELSE 'Vencido'
        end AS StatusEmprestimo
from TabelaEmprestimo;  

--calcule o próximo pagamento baseado no intervalo de dias  

SELECT id_emprestimo, DataInicio, DATE(datainicio, '+30 DAYS') ProximoPagamento
FROM TabelaEmprestimo;

