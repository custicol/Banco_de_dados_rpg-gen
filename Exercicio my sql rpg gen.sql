create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
classe varchar(255),
tipo varchar(255),
primary key (id)
);

insert into tb_classes (classe,tipo) values ("Guerreiro","Corpo a Corpo");
insert into tb_classes (classe,tipo) values ("Arqueiro","Longa Distancia");
insert into tb_classes (classe,tipo) values ("Mago","Media Distancia");
insert into tb_classes (classe,tipo) values ("Ladino","Corpo a Corpo");
insert into tb_classes (classe,tipo) values ("Paladino","Corpo a Corpo");

create table tb_personagens(
id bigint auto_increment,
nome varchar(255),
defesa int,
armadura varchar(255),
ataque int,
id_classes bigint,
primary key (id)
);

insert into tb_personagens (nome,defesa,armadura,ataque,id_classes) values ("Uther",2000,"Pesada",1500,1);
insert into tb_personagens (nome,defesa,armadura,ataque,id_classes) values ("Varyan",1800,"Pesada",1300,2);
insert into tb_personagens (nome,defesa,armadura,ataque,id_classes) values ("Tyrande",900,"Media",1300,3);
insert into tb_personagens (nome,defesa,armadura,ataque,id_classes) values ("Valyra",800,"Media",1000,4);
insert into tb_personagens (nome,defesa,armadura,ataque,id_classes) values ("Kadigar",600,"Leve",2500,5);
insert into tb_personagens (nome,defesa,armadura,ataque,id_classes) values ("Guldan",700,"Leve",2400,1);
insert into tb_personagens (nome,defesa,armadura,ataque,id_classes) values ("Andwin",1200,"Pesado",1200,2);
insert into tb_personagens (nome,defesa,armadura,ataque,id_classes) values ("Arthas",2000,"Pesado",3000,3);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_id_classes FOREIGN KEY (id_classes) REFERENCES tb_classes (id) ;

SELECT * FROM tb_personagens WHERE ataque > 2000 ;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT *FROM tb_personagens WHERE nome LIKE "c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.id_classes;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.id_classes WHERE tb_classes.classe = "guerreiro";


