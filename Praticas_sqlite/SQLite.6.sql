select nomedepartamento, 
(SELECT AVG(Salario) From TabelaColaboradores tc
 WHERE tc. id_departamento = td . id_departamento) as Salario_Medio
from TabelaDepartamento td;
 
---
SELECT  nome,
    (SELECT valor FROM TabelaEmprestimo te
     WHERE te.id_cliente = tc.id_cliente
     AND valor > (SELECT AVG(valor)
                  FROM TabelaEmprestimo)
    ) AS Valor
FROM TabelaClientes tc;

---

SELECT tc.cidade, 1 as Total_Emprestimos_Ativo
FROM TabelaClientes tc
WHERE EXISTS (
    SELECT status
    FROM TabelaEmprestimo te
    WHERE te.id_cliente = tc.id_cliente
    AND te.status = 1 
);

---

SELECT tc.Nome, tc.email,(SELECT valor
    FROM TabelaEmprestimo te
    WHERE te.id_cliente = tc.id_cliente) as Valor
FROM TabelaClientes tc
WHERE EXISTS (
    SELECT valor
    FROM TabelaEmprestimo te
    WHERE te.id_cliente = tc.id_cliente
      AND EXISTS (
          SELECT valor
          FROM TabelaPagamentos tp
          WHERE tp.id_emprestimo = te.id_emprestimo
            AND tp.status = 'Pago'
      )
);


---

select tc.nome, tsc.Pontuacao
from TabelaClientes tc
join TabelaScoreCredito tsc on tsc.id_cliente = tc.id_cliente
where pontuacao > (SELECT AVG(pontuacao) from TabelaScoreCredito);


---

select td.nomedepartamento, tc.salario
from TabelaColaboradores tc
JOIN TabelaDepartamento td on td.id_departamento = tc.id_departamento
where ( select MAX(salario) FROM TabelaColaboradores);

---

SELECT tc.nome
FROM TabelaClientes tc
where(SELECT status from TabelaEmprestimo te
      where te.id_cliente = tc.id_cliente
      and status = 1);
       
---

SELECT 
    Tipo, 
    (SELECT AVG(Valor) 
     FROM TabelaPagamentos tp
     WHERE tp.id_emprestimo = te.id_emprestimo 
     AND Status = 'Pago') AS MediaPagamentos
FROM TabelaEmprestimo te;

---

SELECT tcl.Nome, tco.NumeroConta, tco.TipoConta, tco.Saldo
from TabelaClienteConta tcc
join TabelaClientes tcl on tcl.id_cliente = tcc.id_cliente
JOIN TabelaConta tco on tco.id_conta = tcc.id_conta;


---

SELECT tc.cidade, te.valor
from TabelaClientes tc
join TabelaEmprestimo te on te.id_cliente = tc.id_cliente
where (select SUM(VALOR) FROM  TabelaEmprestimo);






