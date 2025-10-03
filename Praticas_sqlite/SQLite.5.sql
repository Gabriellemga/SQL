SELECT SUM(VALOR) AS Total_Emprestimos FROM TabelaEmprestimo;

--

SELECT AVG(salario) AS Media_Salarial FROM TabelaColaboradores; 

---

select MAX(VALOR) AS Maior_Emprestimo from TabelaEmprestimo;

---

select MIN(VALOR) AS Menor_Emprestimo from TabelaEmprestimo;

---

SELECT COUNT(id_colaborador) as Total_Colaboradores from TabelaColaboradores;

---

select AVG(VALOR) AS Media_Emprestimo from TabelaEmprestimo;

---

SELECT id_departamento , SUM(salario) AS Total_Salarios
FROM TabelaColaboradores
GROUP BY id_departamento
HAVING SUM(salario);

---

select Tipo, (SUM(valor)) as Total_Por_Tipo
from TabelaEmprestimo
GROUP by tipo
HAVING SUM(valor) > 20000;

---
select Tipo, (SUM(valor)) as Total_Valor, COUNT(tipo) as Quantidade_Emprestimo
from TabelaEmprestimo
GROUP by tipo
HAVING SUM(valor);

---

select (SUM(valor)) as Total_Emprestimo, 
AVG(valor) as Media_Emprestimo,
MAX(valor) as Maior_Emprestimo,
MIN(valor) as Menor_Emprestimo
from TabelaEmprestimo;
