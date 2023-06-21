/*usando o banco*/
use oficina;

/*criando a tabela de cliente*/
CREATE TABLE `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(15) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(70) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `senha` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `telefone` (`telefone`),
  UNIQUE KEY `senha` (`senha`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*criando a tabela de funcionario*/
CREATE TABLE `funcionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(15) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(70) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `senha` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `telefone` (`telefone`),
  UNIQUE KEY `senha` (`senha`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*criando a tabela de veículo*/
create table veiculo(
id int auto_increment not null,
placa varchar(8) not null unique,
marca varchar(30) not null,
primary key(id)
)default char set utf8;

/*Criando a tabela de Ordem de Serviço*/
create table ordem_servico(
id int auto_increment not null,
data_emissao timestamp default current_timestamp,
tipo_veiculo varchar(20) not null,
descricao text not null,
valor varchar(50),
primary key(id)
)default char set utf8;

alter table ordem_servico modify valor float(10.02) not null;

create table servico_veiculo(
id int auto_increment not null,
primary key(id)
)default char set utf8;

create table servico_status(
id int auto_increment not null,
primary key(id)
)default char set utf8;

create table status(
id int auto_increment not null,
etapas enum ('Na fila', 'Em processamento', 'finalizado'),
primary key(id)
) default char set utf8;

/*Modificações*/
alter table status add column fkIdServico int not null;
alter table status add foreign key (fkIdServico) references ordem_servico (id);

/*Modificações*/
alter table servico_status add column fkIdServico int not null;
alter table servico_status add foreign key (fkIdServico) references ordem_servico (id);

/*Modificações*/
alter table servico_status add column fkIdStatus int not null;
alter table servico_status add foreign key (fkIdServico) references ordem_servico (id);

/*Modificações*/
alter table servico_veiculo add column fkIdServico int not null;
alter table servico_veiculo add foreign key (fkIdServico) references ordem_servico (id);

/*Modificações*/
alter table servico_veiculo add column fkIdVeiculo int not null;
alter table servico_veiculo add foreign key (fkIdVeiculo) references veiculo (id);

/*Modificações*/
alter table veiculo add column fkIdCliente int;
alter table veiculo add foreign key (fkIdCliente) references cliente (id);
alter table veiculo modify column fkIdCliente int not null;


/*Modificações*/
alter table ordem_servico add column fkIdVeiculo int not null;
alter table ordem_servico add foreign key (fkIdVeiculo) references veiculo (id);


/*MANIPULAÇÕES TESTES*/
insert into ordem_servico (descricao, valor, fkIdVeiculo, tipo_veiculo) values ('pintura', 150.00, 8, 'carro');

select * from cliente;

select * from veiculo;

select * from funcionario;

select * from ordem_servico;

select * from servico_veiculo;

select * from status;

select * from servico_status;

select * from ordem_servico inner join veiculo on ordem_servico.id =veiculo.id inner join cliente on cliente.id = veiculo.fkIdCliente;

insert into servico_veiculo (fkIdServico, fkIdVeiculo)(select id, fkIdVeiculo from ordem_servico);

insert into servico_status (fkIdServico, fkIdStatus)(select id, fkIdVeiculo from ordem_servico);

update status set etapas = 'finalizado' where id = 2;

insert into status (etapas, fkIdServico) value ('na fila', 4);
