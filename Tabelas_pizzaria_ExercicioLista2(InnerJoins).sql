create database db_pizzaria_legal;
use db_pizzaria_legal;
create table tb_categoria(
id int auto_increment,
tamanho varchar(15) not null,
descricao varchar(50) not null,
primary key(id)
);

insert into tb_categoria (tamanho,descricao) value ("Grande","Para toda a familia");
insert into tb_categoria (tamanho,descricao) value ("Media","Para comer a dois");
insert into tb_categoria (tamanho,descricao) value ("Pequena","Do tamanho da sua fome");
insert into tb_categoria (tamanho,descricao) value ("Broto","Para passar a vontade");
insert into tb_categoria (tamanho,descricao) value ("Familia","Para o almoco e jantar");


create table tb_pizza(
id int auto_increment ,
sabor varchar (50) not null,
borda varchar (50) not null,
extra_queijo varchar(10) not null,
preco int not null,
categoria_id int not null,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_pizza (sabor,borda,extra_queijo,preco,categoria_id) values ("Quatro queijos","Simples","Sem extra",20,3);
insert into tb_pizza (sabor,borda,extra_queijo,preco,categoria_id) values ("Calabresa","Simples","Sem extra",35,2);
insert into tb_pizza (sabor,borda,extra_queijo,preco,categoria_id) values ("Baiana","Simples","Sem extra",60,5);
insert into tb_pizza (sabor,borda,extra_queijo,preco,categoria_id) values ("Sertaneja","Simples","Sem extra",15,4);
insert into tb_pizza (sabor,borda,extra_queijo,preco,categoria_id) values ("Portuguesa","Simples","Sem extra",15,4);
insert into tb_pizza (sabor,borda,extra_queijo,preco,categoria_id) values ("Portuguesa","Simples","Sem extra",20,3);
insert into tb_pizza (sabor,borda,extra_queijo,preco,categoria_id) values ("Portuguesa","Recheada","Sem extra",50,2);
insert into tb_pizza (sabor,borda,extra_queijo,preco,categoria_id) values ("Portuguesa","Recheada","Com extra",65,1);

select * from tb_pizza where tb_pizza.preco > 45;
select * from tb_pizza where tb_pizza.preco between 29 and 60;
select sabor from tb_pizza where tb_pizza.sabor like "C%";
select * from tb_categoria inner join tb_pizza;
select sabor from tb_pizza where tb_pizza.categoria_id = 4;
