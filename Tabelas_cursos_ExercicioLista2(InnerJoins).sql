create database db_cursoDaMinhaVida default character set utf8 default collate utf8_general_ci;
use db_cursoDaMinhaVida;

create table tb_categoria(
id int not null auto_increment,
carreira varchar(50) not null unique,
presencial varchar(10) not null, 
primary key(id)
)default charset = utf8;

insert into tb_categoria values 
(default,'Policial','Sim'), (default,'Militar','Sim'),(default,'Juridica','Sim');

create table tb_produto(
id int not null auto_increment,
nome varchar(50) not null unique,
preco decimal (5,2),
descricao varchar(150),
turno varchar(50),
categoria_id int not null,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
)default charset = utf8;

insert into tb_produto values 
(default,'PM SP','335','Voltado a PM SP','Manhã',1),
(default,'PM SP 2.0','335','Voltado a PM SP','Tarde',1),
(default,'PM SP 3.0','335','Voltado a PM SP','Noite',1),
(default,'Exercito','550.20','Voltado o Exercito Brasileiro','Manhã',2),
(default,'Exercito 2.0','550.20','Voltado o Exercito Brasileiro','Tarde',2),
(default,'Exercito 3.0','550.20','Voltado o Exercito Brasileiro','Noite',2),
(default,'Promotor','300','Voltado a carreira de Promotor','Manhã',3),
(default,'Promotor 2.0','300','VVoltado a carreira de Promotor','Noite',3);

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "J%";
select * from tb_categoria inner join tb_produto;
select tb_produto.id,nome, preco,turno,presencial from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 1;