create database Site;
use Site;
create table Cliente (
idCliente int primary key auto_increment,
nome varchar (50),
endereco varchar (50),
telefone varchar (50),
cidade varchar (50),
fkQuadrinho int
) auto_increment = 100;

create table Quadrinho (
idQuadrinho int primary key auto_increment,
nome_Quadrinho varchar (50),
artista varchar (50),
produtora varchar (50),
fkHeroi int
) auto_increment = 1;

create table Herois (
idHeroi int primary key auto_increment,
nomeHeroi varchar (50),
habilidade varchar (50),
inimigo varchar (50)
) auto_increment = 1;

alter table Cliente add foreign key (fkQuadrinho) references Quadrinho (idQuadrinho);
alter table Quadrinho add foreign key (fkHeroi) references Heroi (idHeroi);