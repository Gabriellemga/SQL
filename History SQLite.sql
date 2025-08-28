--- 28-08-2025 12:08:46 SQLite.11
/***** ERROR ******
SELECT * from tabelapedidos
WHERE data_do_pedido > '2023-09-19
 ----- 
SQLITE_ERROR: sqlite3 result code 1: unrecognized token: "'2023-09-19"
*****/


--- 28-08-2025 12:08:57 SQLite.11
SELECT * from tabelapedidos
WHERE data_do_pedido > '2023-09-19';


--- 28-08-2025 12:15:02 SQLite.12
SELECT * from tabelapedidos
where total_do_pedido >= 200
and status = 'Pendente'


--- 28-08-2025 12:17:08 SQLite.12
SELECT * from tabelapedidos
where status = 'Pendente'
or status = 'Processando';


--- 28-08-2025 12:18:47 SQLite.13
SELECT * FROM tabelapedidos 
WHERE total_do_pedido >= 200 
AND Status = 'Pendente';


--- 28-08-2025 12:19:15 SQLite.14
SELECT * FROM tabelapedidos 
WHERE NOT status = 'Pendente';


--- 28-08-2025 12:20:00 SQLite.15
SELECT * FROM tabelapedidos 
WHERE data_de_envio_estimada 
BETWEEN '2023-08-01' AND '2023-09-01';


--- 28-08-2025 14:08:22 SQLite.16
SELECT * from tabelaprodutos
WHERE preço_de_compra
BETWEEN 200 and 600
ORDER by nome_produto


--- 28-08-2025 14:11:14 SQLite.17
SELECT * from tabelaprodutos
WHERE preço_de_compra
BETWEEN 200 and 600
ORDER by data_de_inclusão


--- 28-08-2025 14:12:42 SQLite.18
SELECT * from tabelaprodutos
WHERE preço_de_compra
BETWEEN 200 and 600
ORDER by fornecedor


--- 28-08-2025 14:13:20 SQLite.18
SELECT * from tabelaprodutos
WHERE preço_de_compra
BETWEEN 200 and 600
ORDER by fornecedor DESC;


--- 28-08-2025 14:19:51 SQLite.19
SELECT informacoes_de_contato AS e_mail_cliente
from tabelaclientes


--- 28-08-2025 14:26:24 SQLite.20
update tabelapedidos SET status = 'Enviado'
WHERE status = 'Processando';


--- 28-08-2025 14:31:26 SQLite.21
UPDATE tabelaclientes SET informacoes_de_contato = 'j.santos@email.com', 
endereço_cliente = 'Rua dos paralelepipedos, 30 '
WHERE id_cliente = 2;




--- 28-08-2025 14:31:48 SQLite.21
SELECT * FROM tabelaclientes


--- 28-08-2025 14:34:59 SQLite.22
DELETE from tabelafornecedores
where país_de_origem = 'Turquia';


--- 28-08-2025 14:35:23 SQLite.22
SELECT * FROM tabelafornecedores


