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

insert into category value(1,"adidas");
insert into category value(2,"nike");
insert into category value(3,"vans");

insert into product value(null,"Alphabounce",1000,"Giày thể thao nam nữ","/image/adidas-alphabounce.jpg",1);
insert into product value(null,"Consotium",5400,"Giày thể thao","/image/adidas-consotium.jpg",1);
insert into product value(null,"prophere",3200,"Giày thể thao","/image/adidas-prophere.jpg",1);
insert into product value(null,"ultra-boost",5400,"Giày thể thao","/image/adidas-ultra-boost.jpg",1);
insert into product value(null,"yeezy",5100,"Giày thể thao","/image/adidas-yeezy.jpg",1);
insert into product value(null,"air-force",2500,"Giày thể thao","/image/nike-air-force.jpg",2);
insert into product value(null,"air-jordan",5400,"Giày thể thao","/image/nike-air-jordan.jpg",2);
insert into product value(null,"cortez-classic",3600,"Giày thể thao","/image/nike-cortez-classic.jpg",2);
insert into product value(null,"m2k-tekno",3100,"Giày thể thao","/image/nike-m2k-tekno.jpg",2);
insert into product value(null,"more-uptempo",1800,"Giày thể thao","/image/nike-more-uptempo.jpg",2);
insert into product value(null,"travis-scott",5400,"Giày thể thao","/image/nike-travis-scott.jpg",2);
insert into product value(null,"vans-mcqueen",6200,"Giày thể thao","/image/vans-mcqueen.jpg",3);
insert into product value(null,"vans-1970s",2800,"Giày thể thao","/image/vans-1970s.jpg",3);
insert into product value(null,"slip-on-hulk",5500,"Giày thể thao","/image/vans-slip-on-hulk.jpg",3);
insert into product value(null,"stan-smith",2500,"Giày thể thao","/image/vans-stan-smith.jpg",3);











