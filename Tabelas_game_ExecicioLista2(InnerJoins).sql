create database db_generation_game_online;

use db_generation_game_online;
create table tb_classe(
id bigint auto_increment,
tipo varchar(9) not null,
descricao varchar(100) not null,
primary key(id)
);

insert into tb_classe (tipo,descricao) values ("Arqueiro","Usa armas de longo alcance como Arco e flecha");
insert into tb_classe (tipo,descricao) values ("Soldado","Usa armas de curto alcance como Espadas");
insert into tb_classe (tipo,descricao) values ("Mago","Usa energias elementais para produzir dano ou cura");

create table tb_personagem(
id bigint auto_increment,
nome varchar(15) not null unique,
ataque int not null,
defesa int not null,
especialidade varchar(15),
classe_id bigint not null,
primary key(id),
foreign key (classe_id) references tb_classe(id)
);

insert into tb_personagem (nome,ataque,defesa,especialidade,classe_id) values ("Flecha Maluca",1500,500,"Besta",1);
insert into tb_personagem (nome,ataque,defesa,especialidade,classe_id) values ("Flecha da Morte",2000,500,"Arco Pesado",1);
insert into tb_personagem (nome,ataque,defesa,especialidade,classe_id) values ("Flecha e Corre",2100,300,"Arco leve",1);
insert into tb_personagem (nome,ataque,defesa,especialidade,classe_id) values ("Matador",2500,1000,"Espada Curta",2);
insert into tb_personagem (nome,ataque,defesa,especialidade,classe_id) values ("Assassino",2300,1200,"Espada Longa",2);
insert into tb_personagem (nome,ataque,defesa,especialidade,classe_id) values ("Viking",2600,1500,"Machado Duplo",2);
insert into tb_personagem (nome,ataque,defesa,especialidade,classe_id) values ("Malevola",1900,1000,"Magia Curativa",3);
insert into tb_personagem (nome,ataque,defesa,especialidade,classe_id) values ("La Bosse",3000,100,"Magia do Caos",3);

select nome,ataque from tb_personagem where tb_personagem.ataque > 2000;
select nome,defesa from tb_personagem where tb_personagem.defesa between 1000 and 2000;
select nome from tb_personagem where tb_personagem.nome like "%C%";

select nome,ataque,defesa,especialidade,tipo from tb_personagem inner join tb_classe on tb_personagem.classe_id = tb_classe.id;
select tb_personagem.id,nome,tipo from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 1;









