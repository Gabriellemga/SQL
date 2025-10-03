--selecionar tabela

select * from TabelaClientes

--colunas especificas

select nomecolaborador, cargo  
FROM TabelaColaboradores
WHERE cargo = 'Gerente';

--filtrar usando where

SELECT * from TabelaEmprestimo
WHERE status = 1;

-- filtrar cliente especifico

SELECT nome, estado
FROM TabelaClientes
where estado = 'SP';

--filtrar salarios

SELECT nomecolaborador, salario
from TabelaColaboradores
where salario > 5000;

--filtrar com maior ou igualTabelaClienteConta

SELECT * FROM TabelaEmprestimo
where valor >= 10000;

-- utilizando order byTabelaClienteConta

SELECT nomecolaborador, cargo
FROM TabelaColaboradores
ORDER by nomecolaborador;


--limitando o numero de resultadosTabelaClienteConta

SELECT * FROM TabelaColaboradores
LIMIT 5;

-- ordener usando orderby

SELECT * FROM TabelaEmprestimo
ORDER by valor DESC;

--listar os dois maiores salarios

SELECT * FROM TabelaColaboradores
where salario > 5000 
ORDER by salario DESC
LIMIT 2;