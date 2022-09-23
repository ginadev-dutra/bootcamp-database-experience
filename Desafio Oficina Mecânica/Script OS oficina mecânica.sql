-- criação do banco de dados para o cenário de OS de oficina mecanica
-- drop database oficina;
create database oficina;
use oficina;

-- criar tabela cliente   OK 
create table clients(   
	idClient int auto_increment primary key,
    clientName varchar(45) not null,    
    CPF char(11) not null,
    Address varchar(45) not null,
    contact char(20) not null,
    constraint unique_cpf_client unique (CPF)    
);
alter table clients auto_increment=1;
-- desc clients;

-- criar tabela tipo de serviço   OK
create table orderType(   
	idOrderType int auto_increment primary key,
    priorServicing ENUM('Sim', 'Não') not null,
    repairServicing ENUM('Sim', 'Não') not null    
);
alter table orderType auto_increment=1;
-- desc orderType;

-- criar tabela mecânico responsável  OK
create table designatedMechanic( 
	IdDesignatedMechanic int auto_increment primary key,
	mechanicName varchar(45) not null,
    address varchar(45),
    expertise enum('Electrical', 'Mechanics', 'Painting', 'Retreading')
);
alter table designatedMechanic auto_increment=1;
-- desc designatedMechanic;

-- criar tabela os    
create table orders(
	idOrders int auto_increment primary key,
	isseuDate date not null,
    orderValue float not null,
    orderStatus ENUM('To be done', 'In Process', 'Done', 'Cancelled') not null,
    conclusionDate date not null
);
alter table orders auto_increment=1;
-- desc orders;

-- criar tabela valor serviço   
create table serviceValue(   
	idServiceValue int auto_increment,
    idClientServiceValue int, 
    idOrdersServiceValue int,
    mechanicServiceValue float not null,
    automobilePartsValue float not null,
    primary key (idServiceValue, idClientServiceValue, idOrdersServiceValue),    
    constraint fk_idClient_service_value foreign key (idClientServiceValue) references clients(idClient),
    constraint fk_idOrders_service_value foreign key (idOrdersServiceValue) references orders(idOrders)
);
alter table serviceValue auto_increment=1;
-- desc serviceValue;

-- criar tabela serviço designado para mecânico responsável   OK
create table service_mechanic(
	idService_Mechanic int,
    idTypeOfServiceService_mechanic int,    
    primary key (idService_Mechanic, idTypeOfServiceService_mechanic),
	constraint fk_type_of_service foreign key (idTypeOfServiceService_mechanic) references orderType(idOrderType)	
);

-- criar tabela geração de os   OK
create table orderGeneration(
	idOrderGeneration int,
    IdOsOrderGeneration int,    
    primary key (idOrderGeneration, IdOsOrderGeneration),
	constraint fk_order_generation foreign key (IdOsOrderGeneration) references orders(idOrders)
);

-- criar tabela cliente solicita serviço em veículo    OK
create table clientOrder(
	idClientClientOrder int,
    idTypeOfServiceClientOrder int,
    constraint fk_client_order foreign key (idClientClientOrder) references clients(idClient),
    constraint fk_type_service_client_order foreign key (idTypeOfServiceClientOrder) references orderType(idOrderType)
);

-- show tables;

