use db_generation_rh;

create table tb_funcionarios (
id bigint auto_increment,
nome varchar (50) not null,
idade int not null,
funcao varchar(50),
salario float not null,
primary key(id)
);

insert into tb_funcionarios (nome,idade,funcao,salario) values ("Joao PE de Feijao",26,"Ti",3500);
insert into tb_funcionarios (nome,idade,funcao,salario) values ("Maria Guilhermina",58,"Marketing",4500);
insert into tb_funcionarios (nome,idade,funcao,salario) values ("Aquele que nao pode ser nomeado",90,"Servicos Gerais",1800);
insert into tb_funcionarios (nome,idade,funcao,salario) values ("Harry Poste",19,"Veterinario de Cobras",2800);
insert into tb_funcionarios (nome,idade,funcao,salario) values ("Alerquina",23,"Ferramentaria",3000);

select * from tb_funcionarios where salario > 2000;
select * from tb_funcionarios where salario < 2000;

update tb_funcionarios set salario = 3500 where id = 2;

select * from tb_funcionarios;