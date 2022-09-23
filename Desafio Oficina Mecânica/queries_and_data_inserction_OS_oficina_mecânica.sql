-- inserção dados tabela oficina
use oficina;
show tables;

-- Tabela clients: clientName, CPF, Address, contact   OK
insert into clients (clientName, CPF, Address, contact)
	values ('John Smith', 25123456789, '731-Fondren-Houston-TX', 33314569),
		   ('Franklin Wong', 33344555542, '638-Voss-Houston-TX', 33317895),
		   ('Alicia Zelaya', 85999887777, '3321-Castle-Spring-TX', 968596674),
		   ('Jennifer Wallace', 45987654321, '291-Berry-Bellaire-TX', 35224578),
		   ('Ramesh narayan', 89666884444, '975-Fire-Oak-Humble-TX', 974582211),
		   ('Joyce english', 45345345311, '5631-Rice-Houston-TX', 965321447),
		   ('Ahmad jabbar', 11987987987, '980-Dallas-Houston-TX', 35221444),
		   ('James Borg', 88866555544, '450-Stone-Houston-TX', 33319988);
select * from clients;

-- Tabela orderType: priorServicing, repairServicing  OK
insert into orderType (priorServicing, repairServicing)
	values (default, default),
		   (default, default),
           (default, default);
select * from orderType;

-- Tabela designatedMechanic: mechanicName, address, expertise OK
insert into designatedMechanic (mechanicName, address, expertise)
	values ('Pedro Alcântara', 'Rua da esquina, 35', default),
		   ('Rogério Dutra', 'Rua dos Tecelões, 389', default),
           ('Roberto Silva', 'Rua das mangabeiras, 89', 'Electrical'),
           ('Leonardo Machado', 'Rua dos Inconfidentes, 32', default);
select * from designatedMechanic;

-- Tabela orders: isseuDate,  orderValue, orderStatus, conclusionDate OK
insert into orders(isseuDate,  orderValue, orderStatus, conclusionDate)
	values ('2022-09-23', 150, 'To be done', '2022-09-30'),
           ('2022-08-15', 345, 'Done', '2022-08-29'),
           ('2022-09-20', 1500, 'In Process', '2022-09-25'),
           ('2022-09-20', 230, 'Cancelled', '2022-09-20');
select * from orders;

-- Tabela serviceValue: idClientServiceValue, idOrdersServiceValue, mechanicServiceValue, automobilePartsValue OK
insert into serviceValue(idClientServiceValue, idOrdersServiceValue, mechanicServiceValue, automobilePartsValue)
	values(1, 4, 150, 80),
          (3, 1, 100, 50),
          (8, 3, 1000, 500),
          (4, 2, 250, 95);
          

-- Tabela service_mechanic: idService_Mechanic, idTypeOfServiceService_mechanic OK
insert into service_mechanic(idService_Mechanic, idTypeOfServiceService_mechanic)
	values(1, 2),
          (2, 3),
          (3, 1),
          (4, 2);
select * from service_mechanic;

-- Tabela orderGeneration: idOrderGeneration, IdOsOrderGeneration OK
insert into orderGeneration(idOrderGeneration, IdOsOrderGeneration)
	values(1, 3),
          (2, 1),
          (3, 2),
          (4, 4);
select * from orderGeneration;

-- Tabela clientOrder: idClientClientOrder, idTypeOfServiceClientOrder OK
insert into clientOrder(idClientClientOrder, idTypeOfServiceClientOrder)
	values(1, 2),
          (2, 1),
          (3, 3),
          (4, 1);
select * from clientOrder;
          

-- queries
show tables;
select count(*) from clients;
select count(*) from orders;


-- mostra o cliente e a descrição do seu pedido
select * from clients;
select * from serviceValue;
select * from clients c, serviceValue s where c.idClient = s.idClientServiceValue;

-- mostra qual ordem de serciço está relacionada a cada mecãnico
select * from designatedMechanic;
select * from orderGeneration;
select * from designatedMechanic d, orderGeneration o where d.IdDesignatedMechanic = IdOsOrderGeneration;

-- mostra as ordens de serviço dos clientes agrupadas pelo id dp cliente
select * from clients;
select * from orders;
select * from clients c, orders o where c.idClient = o.idOrders
	group by idClient;

-- Número de solicitações
select * from clients;
select * from orders;
select * from orderGeneration;
select c.idClient, clientName, CPF, count(*) as Numbers_of_orders from clients c
	inner join orders o on c.idClient = o.idOrders
	inner join orderGeneration d on d.idOrderGeneration = o.idOrders
    group by idClient;

-- Recuperar quantos pedidos foram realizados pelos clientes ordenado por idClient
select * from clients;
select * from orderGeneration;
select c.idClient, clientName, count(*) as Numbers_of_orders from clients c
	inner join orderGeneration o on c.idClient = o.IdOsOrderGeneration order by idClient;


-- Mostra o tipo de serviço que o mecânico tem
select * from designatedMechanic;
select * from orderType;
select IdDesignatedMechanic, mechanicName as Mechanic from designatedMechanic
	inner join orderType group by idOrderType
    having count(*)>1;












