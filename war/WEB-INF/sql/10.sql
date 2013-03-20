drop table `sshop`.`shop_address`;


create table SHOP_Address(
	id bigint not null auto_increment,
	firstName varchar(100),
	lastName varchar(100),
	address1 varchar(500),
	address2 varchar(500),
	city varchar(100),
	stateProvince varchar(100),
	country varchar(100),
	postalCode varchar(100),
	phone varchar(100),
	primary key(id)
);

create table User_ShippingAddresses(
	user_id bigint,
	address_id bigint,
	primary key(user_id, address_id)
);

alter table shop_user add column(billing_add_id bigint); 

alter table shop_order add column(shippinglastName varchar(200)); 
alter table shop_order add column(billingLastName varchar(200)); 
alter table shop_order change customerName shippingfirstName varchar(200); 
alter table shop_order change bCustomerName billingfirstName varchar(200); 