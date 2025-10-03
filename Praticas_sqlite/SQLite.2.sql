--Convertendo os nomes dos clientes para letras maiúsculas 

SELECT 	UPPER(Nome)
FROM TabelaClientes;

--Convertendo os nomes dos colaboradores para letras minúsculas

SELECT 	LOWER(NomeColaborador)
FROM TabelaColaboradores;

--Extraindo os 3 primeiros caracteres do nome dos clientes 

select (SUBSTRING(Nome, 1,3) || SUBSTRING(CPF, 1,3)) AS Identificador
FROM TabelaClientes;

--Retornando o comprimento dos nomes dos clientes 

SELECT Nome, LENGTH(Nome) AS Comprimento
FROM TabelaClientes;

--Concatenando nome e cargo dos colaboradores 

SELECT (NomeColaborador || '-' || Cargo)
from TabelaColaboradores; 

--Substituindo palavra em nome de departamentos 

SELECT REPLACE(NomeDepartamento, 'Recursos Humanos', 'RH') as Nome_Atualizado
from TabelaDepartamento; 

--Formatação de descrições de empréstimos 

select (Tipo || ' - ' || Status || ' - $' || Valor) as DescricaoEmprestimo
FROM TabelaEmprestimo; 

--Geração de identificadores únicos para pagamentos 

SELECT id_pagamento, (SUBSTRING(Status,1,3) || id_pagamento) as IdentificadorPagamento
FROM TabelaPagamentos; 

--Simplificando a fonte do score 

SELECT id_score, Fonte, UPPER(SUBSTRING(Fonte, 1 , 3)) as FonteAbreviada
FROM TabelaScoreCredito; 

--Eliminando espaços extras

SELECT id_emprestimo, TRIM(Tipo) as Tipo
from TabelaEmprestimo;