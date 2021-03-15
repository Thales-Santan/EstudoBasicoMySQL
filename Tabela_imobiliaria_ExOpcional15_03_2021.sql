create database db_maison_minha_casa_mais_bonita;
use db_maison_minha_casa_mais_bonita;

create table tb_categoria(
id int auto_increment,
tipo varchar(50) not null,
descricao varchar(300) not null,
primary key(id)
);

insert into tb_categoria values (default,"Apartamento Basico","Para quem quer algo em conta"),
(default,"Apartamento Luxo","Para quem não quer abrir mão do melhor"),
(default,"Casa Basica","Para quem quer algo em conta,mas não quer participar de um condominio"),
(default,"Casa Luxo","Para quem quer uma casa com todo o conforto"),
(default,"Mansao","Para quem quer o melhor do melhor");

create table tb_produto(
id int auto_increment,
nome varchar(255) not null,
cor varchar(25) not null,
tamanho varchar (50) not null,
endereco varchar(255) not null,
preco decimal (9,2) not null,
categoria_id int,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
); 

insert into tb_produto values (default,"Ap 1","Azul","52 metros quadrados","Rua da Pipoca","150000.00",1);
insert into tb_produto values (default,"Ap 2","Rosa","52 metros quadrados","Rua da Passagem","150000.00",1),
(default,"Ap Luxo1","Branco","400 metros quadrados","Rua do Berimbau","1200000.00",2),
(default,"Ap Luxo2","Preto","400 metros quadrados","Rua da Saida","1200000.00",2),
(default,"Casebre","Amarelo","60 metros quadrados","Rua do Lavador","250000.00",3),
(default,"Casebre 2","Lilas","60 metros quadrados","Rua do Lavador","250000.00",3),
(default,"Casa Luxo","Branca","500 metros quadrados","Rua da Vitoria","2000000.00",4),
(default,"Casa Luxo2","Branca","500 metros quadrados","Rua do Rico","2000000.00",4);

create table tb_usuario(
id int not null auto_increment,
nome varchar(100) not null,
cpf varchar(14) not null,
nascimento date not null,
descricao varchar(50) not null,
primary key(id)
);

insert into tb_usuario values (default,"Roger","123.514.589-32","1997-02-11","Cliente Basico"),
(default,"Simetrio","123.314.888-72","1945-07-25","Cliente Premium"),
(default,"Bastiro","123.352.594-75","1960-12-11","Cliente Basico"),
(default,"Luis","123.514.589-32","1995-08-01","Cliente Premium"),
(default,"Nicolau","123.224.799-92","1977-05-30","Cliente Riche");

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "B%";
select * from tb_produto where nome like "C%";
select * from tb_categoria inner join tb_produto;	
select avg(preco) from tb_produto;
select sum(preco) from tb_produto;
select count(nome) from tb_produto;
select nome,cor,tamanho,endereco,preco,tipo,descricao from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 4;