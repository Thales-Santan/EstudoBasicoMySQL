create database db_escola;
use db_escola;

create table tb_alunos (
id bigint auto_increment,
nome varchar(50) not null,
idade int not null,
serie int not null,
nota float not null,
primary key(id)
);

insert into tb_alunos(nome,idade,serie,nota) values ("Joaozinho",9,4,5.5);
insert into tb_alunos(nome,idade,serie,nota) values ("Mariazinha",9,4,7);
insert into tb_alunos(nome,idade,serie,nota) values ("Pedrinho",10,4,6.3);
insert into tb_alunos(nome,idade,serie,nota) values ("Rosinha",9,4,8);
insert into tb_alunos(nome,idade,serie,nota) values ("Rick",13,8,9);
insert into tb_alunos(nome,idade,serie,nota) values ("Morty",12,7,1);
insert into tb_alunos(nome,idade,serie,nota) values ("Bojack",10,5,8.9);
insert into tb_alunos(nome,idade,serie,nota) values ("Saitama",8,3,10);

delete from tb_alunos where id = 7;
select * from tb_alunos where nota > 7;
select * from tb_alunos where nota < 7;
update tb_alunos set nota = 2.5 where id = 6;
select * from tb_alunos;