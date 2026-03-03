create table jogador (
id_jogador int auto_increment primary key unique,
nome varchar (200),
numero_camisa int,
nascimento date
);

create table times (
id int auto_increment primary key,
nome varchar (100) not null unique,
tecnico varchar (200),
desde_de date
);

insert into jogador (nome , numero_camisa , nascimento) values ( "Robinho", "10" , "1984-01-25");
insert into jogador (nome ,numero_camisa, nascimento) values ("Bruno" ,"1", "1984-12-23");
insert into jogador (nome ,numero_camisa, nascimento) values ("Daniel Alves", "2", "1983-03-06");
insert into jogador (nome ,numero_camisa, nascimento) values ("Hitler" , "666", "1889-04-20");
insert into jogador (nome ,numero_camisa, nascimento) values ("Kaka", "08", "1982-04-22");
insert into jogador (nome ,numero_camisa, nasc, altura,id_time ) values ("Jake", "11", "1983-05-30","171", "1" ) ;


select * from jogador;
drop table jogador;

describe jogador;

alter table jogador add altura int;
alter table jogador modify numero_camisa varchar(4) unique;
alter table jogador change nascimento nasc date; 

alter table jogador add id_time int;
alter table jogador add constraint fk_time_jogador foreign key (id_time) references times (id);

insert into times (nome, tecnico, desde_de) values ("Agua", "Big", "2006-09-06" );

select * from times;
describe times;
select * from times;
