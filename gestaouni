create table aluno (
id int primary key auto_increment , 
email varchar (200)  not null,
nome varchar (200)  not null, 
curso varchar(200)  not null
);

create table professores (
id_professores int primary key auto_increment , 
email varchar(200)  not null ,
nome varchar(200)  not null
);

create table disciplinas (
id_disciplina int primary key auto_increment,
nome varchar (100) not null, 
cargaHr DateTime   not null,
id_Professor int unique not null,
foreign key (id_Professor) references professores (id_Professores) 
);

create table matricula (
id_matricula int  primary key auto_increment,
data_matricula date  not null,
idAluno int  not null,
idDisciplina int not null ,

foreign key (idAluno) references aluno (id),
foreign key (idDisciplina) references disciplinas (id_disciplina)
);

insert into aluno (email, nome, curso ) values ("Anildo@senai.com.br" , "Anildo Senai", "DS" );
