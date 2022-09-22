use ecommerce;
show tables;

-- FName, Minit, Lname, CPF, Address
insert into clients (FName, Minit, Lname, CPF, Address)
	values ('John', 'B', 'Smith', 123456789, '731-Fondren-Houston-TX'),
		   ('Franklin', 'T', 'Wong', 333445555, '638-Voss-Houston-TX'),
		   ('Alicia', 'J', 'Zelaya', 999887777, '3321-Castle-Spring-TX'),
		   ('Jennifer', 'S', 'Wallace', 987654321, '291-Berry-Bellaire-TX'),
		   ('Ramesh', 'K', 'Narayan', 666884444, '975-Fire-Oak-Humble-TX'),
		   ('Joyce', 'A', 'English', 453453453, '5631-Rice-Houston-TX'),
		   ('Ahmad', 'V', 'Jabbar', 987987987, '980-Dallas-Houston-TX'),
		   ('James', 'E', 'Borg', 888665555, '450-Stone-Houston-TX');
select * from clients;

-- Pname,  ProductCategory, ProductDetails, ProductPrice
insert into product (Pname,  ProductCategory, ProductDetails, ProductPrice)
	values ('Geladeira',default,'Geladeira Eletrolux branca',3000),
		   ('Colchão', default, 'Colchão Ortobom', 2000),
           ('Celular', default, 'Celular Samsung', 5000),
           ('Torradeira', default, 'Torradeira Walita', 500),
           ('Computador', default, 'Computador Accer', 5000);
select * from product;

-- idRequestClient, RequestStatus, RequestDetails, Freight
delete from request where idRequestClient in (1,2,3,4);
insert into request (idRequestClient, RequestStatus, RequestDetails, Freight)
	values (1, default, 'compra via aplicativo', 15),
		   (2, default, 'compra via website', 20),
           (3, default, 'Compra via website', 25),
		   (4, default, 'compra via aplicativo', 10);
select * from request;

-- idProductRequestProduct, idProductRequest, ProductRequestOrder   
insert into productRequest (idProductRequestProduct, idProductRequest, ProductRequestOrder)
	values (2, 9, default),
           (4, 10, default),
           (5, 12, default),
           (1, 11, default);
select * from productRequest;

-- storageLocation, quantity
select * from productstorage;
insert into productstorage (storageLocation, quantity)
	values('Rio de Janeiro', 80),
		  ('São Paulo', 100),
          ('Curitiba', 250),
          ('Vitória', 50),
          ('Belo Horizonte', 40);
select * from productstorage;

-- idStorageLocation, location
select * from storageLocation;
insert into storageLocation (idStorageLocation, location)
	values(2, 'RJ'),
          (5, 'GO');
 
 -- busineesName, CNPJ, contact
 select * from supplier;
 insert into supplier (busineesName, CNPJ, contact)
	 values ('Almeida e filhos', '14245958000178', '35224189'),
			('Eletrônicos ferreira', '12365989000147',  '35224189'),
            ('Eletrônicos Valma', '23645879000144', '96851423');

-- idsProduct, quantity
select * from productSupplier;
insert into productSupplier(idsProduct, quantity)
     values (1, 500),
			(2, 400);

-- businessName, sellerLocation, comercialName, sellerContact, CNPJ, sellerName, CPF
select * from seller;
insert into seller (businessName, sellerLocation, comercialName, sellerContact, CNPJ, sellerName, CPF)
      values('Padaria dos irmãos', 'Rio de Janieor', 'Pão e Pão', '35669568', '14256986000142', 'Pedro Martins', '698632455'),
			('Calçados da Realeza', 'São Paulo', 'Realeza', '96854578', '45968253000178', 'Flávio Alcântara', '523245477'),
            ('Confecções Baltazar', 'Vitória', 'Baltazar', '33314256', '45111222000178', 'Gina Dutra', '533345696');
            
            
-- idProductSeller, idPproduct, productQuantity
select * from productSeller;
insert into productSeller(idProductSeller, idPproduct, productQuantity)
	 values (1, 2, 80),
            (3, 5, 10);
            
select count(*) from clients;

select * from clients c, request r where c.idClient = idRequestClient;

select Fname, Lname, idRequestClient, RequestStatus from clients c, request r where c.idClient = idRequestClient;

select concat(Fname, ' ', Lname) as Client, idRequestClient as request, RequestStatus as Status from clients c, request r where c.idClient = idRequestClient;

select count(*) from clients c, request r where c.idClient = idRequestClient
	group by idRequest;

select * from clients left outer join request on idClient = idRequestClient;

select * from request;

-- qual cliente fez um pedido e se tem algum produto assossiado 
select c.idClient, Fname, count(*) as Numbers_of_requirements from clients c
	inner join request r on c.idClient = r.idRequestClient
	inner join productRequest p on p.idProductRequestProduct = r.idRequest
    group by idClient;

-- Recuperar quantos pedidos foram realizados pelos clientes
select c.idClient, Fname, count(*) as Numbers_of_requirements from clients c
	inner join request r on c.idClient = r.idRequestClient group by idClient;

-- Recuperar quantos pedidos foram realizados pelos clientes ordenado por idClient
select c.idClient, Fname, count(*) as Numbers_of_requirements from clients c
	inner join request r on c.idClient = r.idRequestClient order by idClient;

select * from product;
select * from productSeller;

select idProduct, Pname as Product from product
	inner join productSeller group by IdProductSeller
    having count(*)>1; 
	
