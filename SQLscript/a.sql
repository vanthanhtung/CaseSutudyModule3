use shoestore;
create table category(
id int not null primary key auto_increment,
name varchar(255) not null
);

create table product(
id int not null primary key auto_increment,
product_name varchar(255) not null,
price float not null,
description varchar(255),
thumbnail varchar(255) not null,
category_id int not null,
constraint fk_category foreign key (category_id) references category(id) 
);

create table cart(
id int not null primary key auto_increment,
createddate timestamp,
inforcustomer varchar(255) not null
);

create table cartproduct(
id int not null primary key auto_increment,
cart_id int not null,
product_id int not null,
amount int not null,
constraint fk_cart foreign key (cart_id) references cart(id),
constraint fk_product foreign key (product_id) references product(id)
);