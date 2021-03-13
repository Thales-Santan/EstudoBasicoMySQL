create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id int auto_increment,
tipo varchar(50) not null,
classe varchar(50) not null,
primary key(id)
);

insert into tb_categoria (tipo,classe) values ("Anestesico","Generico");
insert into tb_categoria (tipo,classe) values ("Anestesico","original");
insert into tb_categoria (tipo,classe) values ("Anti-Histaminico","Generico");
insert into tb_categoria (tipo,classe) values ("Anti-Histaminico","Original");
insert into tb_categoria (tipo,classe) values ("Anti-Helmintico","Original");

create table tb_produto(
id int auto_increment,
nome varchar(50) not null unique,
preco float not null,
descricao varchar(50) not null,
qtd_estoque int not null,
categoria_id int not null,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome,preco,descricao,qtd_estoque,categoria_id) values ("AFTINE",15.00,"Eficaz no casos de aftas",35,1);
insert into tb_produto (nome,preco,descricao,qtd_estoque,categoria_id) values ("SANILIN",20.00,"alívio rápido e temporário das dores e irritações",20,1);
insert into tb_produto (nome,preco,descricao,qtd_estoque,categoria_id) values ("AFTIN",15.00,"Eficaz no casos de aftas",35,2);
insert into tb_produto (nome,preco,descricao,qtd_estoque,categoria_id) values ("SANILINe",35.00,"alívio rápido e temporário das dores e irritações",20,2);
insert into tb_produto (nome,preco,descricao,qtd_estoque,categoria_id) values ("POLARYN",5.50,"Alívio de sintomas de alergia",10,3);
insert into tb_produto (nome,preco,descricao,qtd_estoque,categoria_id) values ("POLARAMYNE",20.00,"Alívio de sintomas de alergia",36,4);
insert into tb_produto (nome,preco,descricao,qtd_estoque,categoria_id) values ("MEBENDAZOL",7.00,"Tratamento de vermes e parasitas",5,5);
insert into tb_produto (nome,preco,descricao,qtd_estoque,categoria_id) values ("ALBENDAZOL",30.00,"Tratamento de vermes e parasitas",150,5);

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select nome from tb_produto where nome like "B%";
select * from tb_categoria inner join tb_produto;
select nome,preco,descricao,tipo from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id=5;
