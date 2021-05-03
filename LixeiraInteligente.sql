
Create database Site;
Use Site;

create table cadastro(
login char(50),
senha char(8) primary key
);

create table usuario(
sexo char, check (Sexo = 'M' or Sexo = 'F'),
nome varchar(20),
senha char(8),
foreign key (senha) references cadastro(senha)
);

create table andar(
alixeira int(20) primary key,
num int
);

create table lixeira(
codigoL int(4) primary key,
lixeira int(20),
foreign key (lixeira) references andar(alixeira)
);

select * from cadastro;
select * from usuario;
select * from andar;
select * from lixeira;

