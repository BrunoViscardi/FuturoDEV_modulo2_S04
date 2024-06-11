

---------------------------- Exercício 1 ----------------------------

create table categorias(
    categoria_id serial primary key,
    nome_categoria varchar(50),
    CONSTRAINT FK_categoriaID FOREIGN KEY (categoria_id) REFERENCES categorias(categoria_id)
);

alter table categorias drop CONSTRAINT FK_categoriaID;
drop table categorias;


---------------------------- Exercício 2 ----------------------------

insert into clientes (nome, cidade, idade)
values ('Lucas Lima', 'Salvador', '29');


update clientes set cidade = 'Fortaleza' where cliente_id = 3;

delete from pedidos where valor < 150;


---------------------------- Exercício 3 ----------------------------

select * from clientes where cidade = 'São Paulo';

SELECT * FROM pedidos ORDER BY data_pedido DESC;

SELECT * FROM clientes WHERE idade BETWEEN 25 AND 35;



---------------------------- Exercício 4 ----------------------------

SELECT * FROM clientes WHERE nome LIKE 'A%';

select cliente_id, sum(valor) from pedidos group by cliente_id;

select cidade, avg(idade) from clientes group by cidade;


---------------------------- Exercício 5 ----------------------------

select * from clientes as c inner join pedidos as p on c.cliente_id = p.cliente_id;

select * from clientes as c left join pedidos as p on c.cliente_id = p.cliente_id;

select * from itens_pedidos as pe right join produtos as pr on pe.produto_id = pr.produto_id;

select * from clientes where cidade = 'São Paulo' union select * from clientes where cidade = 'Rio de Janeiro';


---------------------------- Exercício 6 ----------------------------

---

select * from clientes as c left join pedidos as p on c.cliente_id = p.cliente_id where p.cliente_id is null;

select * from pedidos order by valor desc limit 1;

select i.produto_id, count(i.produto_id) from itens_pedidos as i inner join produtos as p on i.produto_id = p.produto_id group by i.produto_id 

select sum(valor), count(cliente_id) from pedidos group by cliente_id having count(cliente_id) > 1;

---

select * from clientes as c inner join pedidos as p on c.cliente_id = p.cliente_id order by p.valor desc limit 1;




---------------------------- Exercício 7 ----------------------------



select avg(c.idade) from clientes as c inner join pedidos as p on c.cliente_id = p.cliente_id group by p.cliente_id having sum(p.valor) > 300



select * from produtos as p inner join (select * from itens_pedidos where quantidade > 1) as i on p.produto_id = i.produto_id





