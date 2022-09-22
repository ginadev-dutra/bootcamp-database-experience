-- criação do banco de dados para o cenário de E-commerce
-- drop database ecommerce;
create database ecommerce;

use ecommerce;

-- criar tabela cliente  OK
create table clients(
	idClient int auto_increment primary key,
    Fname varchar(10),
    Minit char(3),
    Lname varchar (20),
    CPF char(11) not null,
    Address varchar(30),
    constraint unique_cpf_client unique (CPF)    
);

alter table clients auto_increment=1;
-- desc clients;

-- criar tabela produto OK
create table product(
	idProduct int auto_increment primary key,
    Pname varchar(10),
    ProductCategory enum('Eletrônicos','Eletrodomésticos','Cama, mesa e banho') not null,
    ProductDetails varchar(45) not null,
    ProductPrice float not null    
);

alter table product auto_increment=1;

-- criar tabela pagamento
create table payment(
	idPayment int auto_increment primary key,
    idRequestPayment int not null,
    PaymentStatus ENUM('Aguardando Pagamento', 'Pago', 'Não autorizado') not null,
    PaymentType ENUM('Pix', 'Boleto', 'Cartão') not null,  
    constraint fk_payment_request foreign key (idRequestPayment) references request (idRequest)
);

-- criar tabela pedido  OK
create table request(
	idRequest int auto_increment primary key,
    idRequestClient int not null,
    RequestStatus ENUM('Em andamento', 'Processando', 'Enviado', 'Entregue', 'Cancelado') default 'Processando',
    RequestDetails varchar(45) not null,
    Freight float default 10,
    constraint fk_requests_client foreign key (idRequestClient) references clients(idClient) on update cascade
    -- on delete set null
);

alter table request auto_increment=1;
-- desc request;

-- criar tabela estoque  OK
create table productStorage(
	idProductStorage int auto_increment primary key,
	storageLocation varchar(45),
    quantity int default 0
);

alter table productStorage auto_increment=1;

-- criar tabela fornecedor OK
create table supplier(
	idSupplier int auto_increment primary key,
	busineesName varchar(45) not null,
    CNPJ char(15) not null,
    contact char(15) default 0,
    constraint unique_supplier unique (CNPJ)
);

alter table supplier auto_increment=1;
-- desc supplier;

-- criar tabela vendedor OK
create table seller(
	idSeller int auto_increment primary key,
	businessName varchar(30),
    sellerLocation varchar (30) not null,
    comercialName varchar(30),
    sellerContact char(15) not null,
    CNPJ char(15) not null,
    sellerName varchar(30),
    CPF CHAR(9),   
    constraint unique_cnpl_seller unique (CNPJ),
	constraint unique_cpf_seller unique (CPF) 
);

alter table seller auto_increment=1;

-- criar tabela Produtos/Vendedor OK
create table productSeller(
	idProductSeller int,
    idPproduct int,
    productQuantity int default 1,
    primary key (idProductSeller, idPproduct),
    constraint fk_product_seller foreign key (idProductSeller) references seller (idSeller),
    constraint fk_product_product foreign key (idPproduct) references product (idProduct)
);
-- desc productSeller;

-- criar tabela Produto/Pedido   OK
create table productRequest(
	idProductRequestProduct int,
	idProductRequest int,
	ProductRequestOrder ENUM('Disponível', 'Sem estoque') default 'Disponível',
	primary key (idProductRequestProduct, idProductRequest),
	constraint fk_product_request_product foreign key (idProductRequestProduct) references product (idProduct),
	constraint fk_product_request foreign key (idProductRequest) references request (idRequest)
    );

-- criar tabela produto em estoque OK
create table storageLocation(
	idProductLocation int auto_increment,
    idStorageLocation int,
    location varchar (45) not null,
    primary key (idProductLocation, idStorageLocation),
    constraint fk_storage_location_product foreign key (idProductLocation) references product (idProduct),
	constraint fk_storage_location_storage foreign key (idStorageLocation) references productStorage (idProductStorage)    
);
alter table storageLocation auto_increment=1; 

-- criar tabela produto/fornecedor  OK
create table productSupplier(
	idsSupplier int auto_increment,
    idsProduct int,
    quantity int not null,
    primary key (idsSupplier, idsProduct),
    constraint fk_product_supplier_supplier foreign key (idsSupplier) references supplier (idSupplier),
	constraint fk_product_supplier_product foreign key (idsProduct) references product (idProduct)    
); 
alter table productSupplier auto_increment=1;

-- show tables;
-- show databases;
-- use information_schema;
-- desc referential_constraints;
-- select * from referential_constraints where constraint_schema = 'ecommerce';

