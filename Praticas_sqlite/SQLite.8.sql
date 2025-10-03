with Emprestimos as (SELECT SUM(valor) AS Total_Emprestimos_Pendentes
                     FROM TabelaEmprestimo
                     where status = 0)
select * from Emprestimos;

---

with Clientes as 
	( SELECT id_cliente, Nome FROM TabelaClientes),
Score as (SELECT id_cliente, Pontuacao from TabelaScoreCredito
             where pontuacao > 700)  
select c.id_cliente, c.Nome, s.Pontuacao
FROM Clientes c
join Score s on s.id_cliente = c.id_cliente;


---

WITH SalariosPorDepartamento AS (
    SELECT id_departamento, SUM(Salario) AS TotalSalarios
    FROM TabelaColaboradores
    GROUP BY id_departamento
)
SELECT id_departamento, TotalSalarios
FROM SalariosPorDepartamento;

---

WITH ClientesPorEstado as 
	(select Estado, COUNT(estado) as QuantidadeClientes
     from TabelaClientes
     GROUP by estado)
select Estado, QuantidadeClientes FROM ClientesPorEstado;

---

WITH IdadeClientes AS (
    SELECT nome,
        strftime('%Y', 'now') - strftime('%Y', DataNascimento) - 
        (strftime('%m-%d', 'now') < strftime('%m-%d', DataNascimento)) AS Idade
    FROM TabelaClientes),
MediaIdadeCliente AS (
    SELECT AVG(Idade) AS MediaIdade FROM IdadeClientes)
SELECT ic.nome,  ic.Idade
FROM IdadeClientes ic, MediaIdadeCliente mic
WHERE ic.Idade < mic.MediaIdade;

---
WITH PagamentosPorEmprestimo AS (
    SELECT id_emprestimo, SUM(Valor) AS TotalPagamentos
    FROM TabelaPagamentos
    GROUP BY id_emprestimo
),
EmprestimosComPagamentosAltos AS (
    SELECT id_emprestimo, TotalPagamentos
    FROM PagamentosPorEmprestimo
    WHERE TotalPagamentos >= 1000
)
SELECT ep.id_emprestimo, ep.TotalPagamentos
FROM EmprestimosComPagamentosAltos ep;

---

WITH MediaSalariosPorDepartamento AS (
    SELECT id_departamento, AVG(Salario) AS MediaSalarial
    FROM TabelaColaboradores
    GROUP BY id_departamento
),
DepartamentosComSalarioAlto AS (
    SELECT id_departamento, MediaSalarial
    FROM MediaSalariosPorDepartamento
    WHERE MediaSalarial > 4500
)
SELECT id_departamento, MediaSalarial
FROM DepartamentosComSalarioAlto;

---

WITH ClientesComEmprestimosPendentes AS (
    SELECT id_cliente
    FROM TabelaEmprestimo
    WHERE Status = 0
),
ClientesComCreditoBaixo AS (
    SELECT id_cliente
    FROM TabelaScoreCredito
    WHERE Pontuacao < 500
)

---

WITH ContasAbertasRecentes AS (
    SELECT id_conta, Saldo
    FROM TabelaConta
    WHERE DataAbertura > '2023-01-01'
),
SaldoMedio AS (
    SELECT AVG(Saldo) AS MediaSaldo
    FROM ContasAbertasRecentes
)
SELECT COUNT(*) AS TotalContas, (SELECT MediaSaldo FROM SaldoMedio) AS MediaSaldo
FROM ContasAbertasRecentes;
SELECT cl.Nome
FROM ClientesComEmprestimosPendentes ce
JOIN ClientesComCreditoBaixo cb ON ce.id_cliente = cb.id_cliente
JOIN TabelaClientes cl ON ce.id_cliente = cl.id_cliente;







