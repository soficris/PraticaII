create database pratica2; 

 use pratica2; 
 
 create table Cliente (
	id_cliente int not null primary key auto_increment, 
    nome varchar(200), 
    email varchar(100), 
    telefone varchar (11),
    cpf varchar (11)
);

create table Funcionario (
	id_funcionario int not null primary key auto_increment, 
    nome_funcionario varchar(200), 
    email_funcionario varchar(100)
); 
 
 create table solicitacao (
	id_solicitacao int not null primary key auto_increment, 
	descricao varchar(1000), 
    data_abertura date, 
    urgencia varchar(20), 
    status varchar (20),
	fk_cliente int not null,
	foreign key (fk_cliente) references Cliente(id_cliente),
	fk_funcionario int not null,
	foreign key (fk_funcionario) references Funcionario(id_funcionario)
 ); 
 
 create table solicitação_funcionario (
	id_solicitação_funcionario int not null primary key auto_increment, 
    fk_solicitacao int not null,
	foreign key (fk_solicitacao) references Solicitacao(id_solicitacao),
	fk_funcionario int not null,
	foreign key (fk_funcionario) references Funcionario(id_funcionario)
);