create table produto (
id int primary key auto_increment,
nome varchar(70),
preco decimal(8,3),
qtdEstoque int
);

create table cliente (
id int primary key auto_increment,
nome varchar(200),
email varchar (200) unique,
tel varchar (200) unique
);

create table pedidos (
id int primary key auto_increment,
dataPedidos date,

idCliente int,
foreign key (idCliente) references cliente (id)
);

create table itensPedidos (
idProduto int,
idPedido int,

foreign key (idproduto) references produto (id),
foreign key (idpedido) references pedidos (id)
);
