create table funcionario (
id int primary key auto_increment,
nome varchar (250) not null, 
salario decimal (8,2) not null,
departamento varchar (250) not null,
created_at timestamp default current_timestamp on update current_timestamp
 );
 
INSERT INTO funcionario (nome, salario, departamento) VALUES
('Carlos', 3000, 'TI'),
('Maria', 4500, 'RH'),
('João', 5000, 'TI'),
('Ana', 3500, 'Financeiro'),
('Pedro', 2800, 'RH');

select * from funcionario order by nome ASC ; 
select count(*) as totalfuncionario from funcionario;
select * from funcionario where departamento = 'TI';
select count(*) as totalfuncionario from funcionario where departamento = 'TI';
select * from funcionario where salario > 4000 ; 
select count(*) as total_acima4000 from funcionario where salario > 4000 ; 


INSERT INTO funcionario (nome, salario, departamento)
VALUES ('Juliana', 4200, 'TI');

update funcionario set salario = 3500 where id = 1 ;
update funcionario set salario =  salario * 1.10 where departamento = 'RH';
delete from funcionario where id = 5;

select * from funcionario order by salario desc; 

select avg(salario) as mediasalario,
max(salario) as maiorsalario,
min(salario) as menorsalario
from funcionario;

update funcionario set salario = salario * 1.50 where departamento = 'TI'  and salario <4000; 	



