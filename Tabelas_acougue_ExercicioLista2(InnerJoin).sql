create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key(id)
);

insert tb_categoria (descricao,ativo) values ("Bovino",true);
insert tb_categoria (descricao,ativo) values ("Suino",true);
insert tb_categoria (descricao,ativo) values ("Aves",true);
insert tb_categoria (descricao,ativo) values ("pertence feijoada",true);
insert tb_categoria (descricao,ativo) values ("imbutidos",true);

use db_cidade_das_carnes;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal not null,
qtProduto int not null,
categoria_id bigint,
primary key(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

insert tb_produtos (nome,preco,qtProduto,categoria_id) values  ("ASA",40.00,30,3);
insert tb_produtos (nome,preco,qtProduto,categoria_id) values  ("Picanha",20.00,30,1);
insert tb_produtos (nome,preco,qtProduto,categoria_id) values  ("Coxa de Frango",20.00,30,3);
insert tb_produtos (nome,preco,qtProduto,categoria_id) values  ("Bacon",30.00,30,3);
insert tb_produtos (nome,preco,qtProduto,categoria_id) values  ("Hamburguer",60.00,30,3);
insert tb_produtos (nome,preco,qtProduto,categoria_id) values  ("Cupim",20.00,30,3);
insert tb_produtos (nome,preco,qtProduto,categoria_id) values  ("Peito de Frango",25.00,30,3);
insert tb_produtos (nome,preco,qtProduto,categoria_id) values  ("Orelha de Porco",20.00,30,4);

select * from tb_produtos where tb_produtos.preco > 50;
select * from tb_produtos where tb_produtos.preco between 3 and 60;
select * from tb_produtos where nome Like "C%";
select * from tb_categoria inner join tb_produtos;
select * from tb_produtos where tb_produtos.categoria_id = 3;