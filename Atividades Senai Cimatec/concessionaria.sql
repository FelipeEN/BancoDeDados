
-- create
CREATE TABLE user ( 
  id INT ,
  name varchar(250) NOT NULL,
  email varchar (250) NOT NULL,
  cpf char(15) NOT NULL,
  nascimento date NOT NULL,
   primary key (id)
);

CREATE TABLE car ( 
  id INT ,
  modelo varchar(250) NOT NULL,
  cor varchar (250) NOT NULL,
  preco decimal(10,3) NOT NULL,
  user_id INT,
  primary key (id),
  foreign key (user_id) references user (id)

);

CREATE TABLE sales (
id INT ,
data_horario DATETIME NOT NULL,
status varchar(100) NOT NULL,
valor decimal(10,3) NOT NULL,
user_id INT NOT NULL,
car_id INT NOT NULL,

primary key (id),
foreign key (user_id) references user (id),
foreign key (car_id) references car (id)

);


-- insert
INSERT INTO user VALUES ( 01, 'Felipe Sena', 'FelipeSena@gmail.com', '000.000.000-00' , '2000-12-30');

INSERT INTO car VALUES ( 01, 'corsa', 'preto', 30.000, 01 );

INSERT INTO sales VALUES (01, '2026-07-21 15:30:30',"A vista", 28.000, 01, 01 );

SELECT * FROM user ;
SELECT * FROM car ;
SELECT * FROM sales ;
