create table atores  (
idAtores int primary key auto_increment ,

nomeCompleto varchar(250)

);

insert into atores (nomeCompleto ) values ("Felipe Sena" );

select * from atores;

create table filmes (
idFilme int primary key auto_increment,

titulo varchar (250) not null,
genero varchar(250) not null,
ano date not null, 
idAtores int not null,

foreign key (idAtores) references atores (idAtores)
);


insert into filmes (titulo, genero, ano, idAtores ) values ("Capitães da areia", "Ação", '2002-07-21' , '1' );

select * from filmes;

create table usuarios (

idUsuario int primary key auto_increment,

nome varchar(250) not null,
email varchar(250) not null 

);

insert into usuarios (nome, email) values ("Joice Silva", "Joice@gmail.com");


select * from usuarios;


create table avaliacao (
idAvaliacao int primary key auto_increment,

avaliacao varchar (250),
idFilmes int ,
idUsuarios int ,

foreign key (idFilmes) references filmes (idFilme),

foreign key (idUsuarios) references usuarios (idUsuario)

);

insert into avaliacao (avaliacao, idFilmes, idUsuarios) values ("Eu não cohecia esse filme, ótimo filme.", '1' , '1');

select * from avaliacao;
