-- create database db_ecommerce;
use db_ecommerce;
create table tb_produtos(
id bigint auto_increment,
nome varchar(30) not null,
cor varchar (20) not null,
preco float not null,
categoria varchar(50) not null,
primary key (id)
);

insert into tb_produtos (nome,cor,preco,categoria) values ("Bone rasgado","Desbotado",400.50,"Vestimentas");
insert into tb_produtos (nome,cor,preco,categoria) values ("Calça Furada","Preta",500,"Vestimentas");
insert into tb_produtos (nome,cor,preco,categoria) values ("Pirulito Lambido","Transparente",0.20,"Alimentos");
insert into tb_produtos (nome,cor,preco,categoria) values ("Bolo Mofado","verde e Branco",150.55,"Alimentos");
insert into tb_produtos (nome,cor,preco,categoria) values ("Fone sem funcionar","Encardido",250,"Eletronicos");
insert into tb_produtos (nome,cor,preco,categoria) values ("Celular sem Tela","Vermelho",689.99,"Eletronicos");
insert into tb_produtos (nome,cor,preco,categoria) values ("Mesa sem Perna","Marrom",501.11,"Moveis");
insert into tb_produtos (nome,cor,preco,categoria) values ("Colchao Sem Espuma","Azul",600,"Moveis");

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set nome = "Mesa com 3 pernas" where id = 7;
select * from tb_produtos;