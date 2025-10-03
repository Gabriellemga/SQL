--colaboradores com salários acima da média no departamento de TI
SELECT NomeColaborador, Salario, id_departamento
FROM TabelaColaboradores
WHERE Salario > 4500 AND id_departamento = 'D03';

--Clientes elegíveis para benefícios exclusivosTabelaClienteConta

SELECT Nome, DataNascimento, Estado
from TabelaClientes
WHERE datanascimento < '1990-12-31' or Estado = 'SP';

--Revisão de empréstimos concedidos em 2023

SELECT id_emprestimo, DataInicio, Tipo, valor
from TabelaEmprestimo
WHERE DataInicio BETWEEN '01/01/2023' AND '31/12/2023';

--Filtrando clientes com idade elegível para ofertas personalizadasTabelaClienteConta

SELECT Nome, DataNascimento, CPF
FROM TabelaClientes
where (STRFTIME('%Y', 'now') - STRFTIME('%Y', DataNascimento)) > 18;

--Consultando empréstimos de categorias específicas

SELECT id_emprestimo, Tipo, Valor
from TabelaEmprestimo
WHERE tipo IN ('Pessoal', 'Imobiliário');


-- Filtrando empréstimos dentro de um intervalo de valor e tipo específico

SELECT id_emprestimo, Tipo, Valor
from TabelaEmprestimo
WHERE (tipo LIKE '%Automóvel%' OR tipo LIKE '%Consignado%')
AND Valor BETWEEN 10000 and 50000;

--Identificando estados únicos com clientes ativos

SELECT DISTINCT(Estado)
FROM TabelaClientes;

--Filtrando clientes por localização e CPF

SELECT Nome, CPF, Cidade, Estado 
from TabelaClientes
where cidade In ('Rio de Janeiro' , 'Salvador') 
and CPF like '6%';

--Identificando pagamentos realizados em 2023 dentro de um intervalo de valor

SELECT id_Pagamento, DataPagamento, Valor, Status 
from TabelaPagamentos
where valor BETWEEN 500 AND 1000
and DataPagamento like '2023-%-%';

--Clientes com risco de crédito elevado

SELECT id_cliente, Pontuacao, Fonte 
FROM TabelaScoreCredito
WHERE pontuacao <= 700;

