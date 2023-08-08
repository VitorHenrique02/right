create database Right_join;
use Right_join;

create table clientes(
id_clientes int not null auto_increment,
nome_cliente varchar(50),
nome_contato varchar(50),
endereco varchar(50),
cidade varchar(50),
cep int,
pais varchar(50),
primary key (id_clientes)
);

create table pedidos(
id_pedidos int not null auto_increment,
id_cliente int,
nome_funcionario varchar(50),
data_pedido date,
transportadora varchar(50),
primary key (id_pedidos)
);

insert into clientes(nome_cliente, nome_contato, endereco, cidade, cep, pais)
values ('Roberto', 'Mariana', 'Rua Abacaxi 60', 'Curitiba', '12378567', 'Brasil');
insert into clientes(nome_cliente, nome_contato, endereco, cidade, cep, pais)
values ('Ana Paula', 'Juliano', 'R. limãozinho 2222', 'Ceará', '05024569', 'Brasil');
insert into clientes(nome_cliente, nome_contato, endereco, cidade, cep, pais)
values ('Paulo ', 'Kauan', 'R. Freitas 2312', 'Paris', '05023894', 'França');

insert into pedidos(id_cliente, nome_funcionario, data_pedido, transportadora)
values ('2', 'Bernardo', '2023-08-01', '3');
insert into pedidos(id_cliente, nome_funcionario, data_pedido, transportadora)
values ('1', 'Vitor', '2023-08-01', '1');
insert into pedidos(id_cliente, nome_funcionario, data_pedido, transportadora)
values ('3', 'Maria Eduarda', '2023-08-01', '2');

select clientes.nome_cliente, pedidos.data_pedido, pedidos.nome_funcionario, pedidos.transportadora
from clientes
right join pedidos ON clientes.id_clientes = pedidos.id_cliente;