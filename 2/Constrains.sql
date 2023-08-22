use dress_data


select * from dress

alter table dress drop column `type`;

ALTER TABLE dress CHANGE COLUMN Pattern Pattern_type VARCHAR(30);

LOAD DATA INFILE 'E:\\SQL\\MYSQL_S\\2\\AttributeDataSet.csv'
INTO TABLE dress
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

create table if not exists test(
test_id int auto_increment,
test_name varchar(30),
test_mailid varchar(30),
test_address varchar(30),
primary key(test_id))

select * from test;

insert into test values (1,'sudhanshu','sudhanshu@ineuron.ai','benglaore'),
(2,'krish','krish@gmail.com', 'bengalore'),
(3,'hitesh' ,'hitesh@ineuron.ai','bengalore'),
(4,'shubahm' , 'shudham@gmail.com', 'jaipur')

create table if not exists test2(
test_id int not null auto_increment,
test_name varchar(30),
test_mailid varchar(30),
test_address varchar(30),
primary key(test_id))

insert into test2 (test_name,test_mailid, test_address) values ('sudhanshu','sudhanshu@ineuron.ai','benglaore'),
('krish','krish@gmail.com', 'bengalore'),
('hitesh' ,'hitesh@ineuron.ai','bengalore'),
('shubahm' , 'shudham@gmail.com', 'jaipur')

select * from test2;


create table if not exists test3(
test_id int not null auto_increment,
test_name varchar(30),
test_mailid varchar(30),
test_address varchar(30),
test_salary int check(test_salary > 10000),
primary key(test_id))

insert into test3 (test_name,test_mailid, test_address, test_salary) values ('sudhanshu','sudhanshu@ineuron.ai','benglaore' , 50000),
('krish','krish@gmail.com', 'bengalore' , 30000),
('hitesh' ,'hitesh@ineuron.ai','bengalore' , 111000),
('shubahm' , 'shudham@gmail.com', 'jaipur',20000)


select * from test3


create table if not exists test4(
test_id int not null auto_increment,
test_name varchar(30),
test_mailid varchar(30),
test_address varchar(30) check(test_address = 'bangalore'),
test_salary int check(test_salary > 10000),
primary key(test_id))

insert into test4 (test_name,test_mailid, test_address, test_salary) values ('sudhanshu','sudhanshu@ineuron.ai','bangalore' , 50000),
('krish','krish@gmail.com', 'bangalore' , 30000),
('hitesh' ,'hitesh@ineuron.ai','bangalore' , 111000),
('shubahm' , 'shudham@gmail.com', 'bangalore',20000)

select * from test4

create table if not exists test5( 
test_id int NOT NULL,
test_name varchar(30) , 
test_mailid varchar(30),
teast_adress varchar(30) check (teast_adress= 'bengalore'),
test_salary int check(test_salary > 10000))


select * from test5
insert into test5 ( test_name , test_mailid , teast_adress,test_salary) values ('sudhanshu','sudhanshu@ineuron.ai','bengalore' , 50000)

drop table test;

alter table test3 add check (test_id >0)


create table if not exists test6( 
test_id int NOT NULL default 0,
test_name varchar(30) , 
test_mailid varchar(30),
teast_adress varchar(30) check (teast_adress= 'bengalore'),
test_salary int check(test_salary > 10000))

insert into test6 ( test_name , test_mailid , teast_adress,test_salary) values ('sudhanshu','sudhanshu@ineuron.ai','bengalore' , 50000)
insert into test6 ( test_id, test_name , test_mailid , teast_adress,test_salary) values (121,'sudhanshu','sudhanshu@ineuron.ai','bengalore' , 50000)

select * from test6


create table if not exists test7( 
test_id int NOT NULL default 0,
test_name varchar(30) , 
test_mailid varchar(30) unique ,
teast_adress varchar(30) check (teast_adress= 'bengalore'),
test_salary int check(test_salary > 10000))


insert into test7 ( test_name , test_mailid , teast_adress,test_salary) values ('sudhanshu','sudhanshu@ineuron.ai','bengalore' , 50000)


create table if not exists test8( 
test_id int NOT NULL  auto_increment,
test_name varchar(30) not null default 'unknown', 
test_mailid varchar(30) unique not null,
teast_adress varchar(30) check (teast_adress= 'bengalore') not null,
test_salary int check(test_salary > 10000) not null,
primary key(test_id))

insert into test8 ( test_id , test_name , test_mailid , teast_adress,test_salary) values (500 , 'sudhanshu','sudhanshu545@ineuron.ai','bengalore' , 50000)

select * from test8


insert into test8 ( test_name , test_mailid , teast_adress,test_salary) values ('sudhanshu','sudhanshu1230@ineuron.ai','bengalore' , 50000)


CREATE TABLE `machines` (
    `id` int(11) NOT NULL,
    `hostname` varchar(255),
    `ip_address` varchar(15),
    `network` varchar(255) NOT NULL,
    CONSTRAINT CHK_network CHECK (network = 'INTERNAL' OR 'EXTERNAL' OR 'OTHER'),
    PRIMARY KEY (`id`)
    );
    
    select * from machines
    
    INSERT INTO `machines`

VALUES
    (1, 'host1', '123.123.123.1', 'EXTERNAL'),
    (2, 'host2', '192.168.0.1', 'EXTERNAL' ),
    (3, 'host3', '192.168.0.2', '       ' );
