SELECT tc.NomeColaborador, td.NomeDepartamento
FROM TabelaColaboradores tc
join TabelaDepartamento td on td.id_departamento = tc.id_departamento;

---
SELECT tc.id_cliente, tc.Nome, tf.Telefone
from TabelaClientes tc
left join TabelaTelefones tf on tc.id_cliente = tf.id_cliente;

----

SELECT tco.NomeColaborador, tc.Nome as NomeCliente
from TabelaColaboradores tco
LEFT join TabelaClientes tc ON tc.id_colaborador = tco.id_colaborador;

---
SELECT tc.Nome as NomeCliente, te.tipo as TipoEmprestimo, te.Valor
FROM TabelaClientes tc
join TabelaEmprestimo te on te.id_cliente = tc.id_cliente;


---

SELECT tc.nome as NomeCliente, te.tipo as TipoEmprestimo, 
       te.valor as ValorEmprestimo, tp.DataPagamento , tp.valor as ValorPago
from TabelaClientes tc
inner join TabelaEmprestimo te on te.id_cliente = tc.id_cliente
inner join TabelaPagamentos tp on tp.id_emprestimo = tp.id_emprestimo;


---

SELECT tc.nome as Cliente , te.valor as TotalEmprestimo
from TabelaClientes as tc
join TabelaEmprestimo te  on te.id_cliente = tc.id_cliente
where valor > 10000;

---

SELECT 
    Tipo AS TipoEmprestimo,
    Valor,
    CASE 
        WHEN Status THEN 'Ativo'
        ELSE 'Inativo'
    END AS Status
FROM 
    TabelaEmprestimo;
 

---

SELECT tcl.nome as NomeCliente, tcl.Cidade, tco.NomeColaborador, td.NomeDepartamento
from TabelaColaboradores tco
join TabelaClientes tcl on tcl.id_colaborador = tco.id_colaborador
JOIN TabelaDepartamento td on td.id_departamento = tco.id_departamento
where cidade = 'São Paulo';

---

SELECT 
    cl.Nome AS NomeCliente, 
    e.Valor AS ValorEmprestimo
FROM TabelaClientes cl
JOIN TabelaEmprestimo e ON cl.id_cliente = e.id_cliente
WHERE e.Valor > (SELECT AVG(Valor) FROM TabelaEmprestimo);

---

SELECT tc.NomeColaborador, tp.NomeDepartamento, tc.EmailColaborador as Email
from TabelaColaboradores tc
join TabelaDepartamento tp on tp.id_departamento = tc.id_departamento;



