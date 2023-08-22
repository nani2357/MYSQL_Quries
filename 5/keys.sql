create database key_prim

use key_prim

create table ineuron(
course_id int NOT NULL,
course_name VARCHAR(60),
course_status VARCHAR(40),
number_of_enrro int,
primary key(course_id));


insert into ineuron values(01, 'FSDA', 'active' , 100)

select * from ineuron
insert into ineuron values(02, 'FSDs', 'in-active' , 150)


create table students_ineuron(
student_id int,
course_name varchar(60),
student_mail varchar(60),
student_status varchar(60),
course_id int,
foreign key(course_id) references ineuron(course_id))


insert into students_ineuron values( 101, 'FSDA', 'test@gmail.com', 'activate', 01)
insert into students_ineuron values( 102, 'FSDs', 'test-1@gmail.com', 'in-activate', 02)
insert into students_ineuron values( 101, 'FSDA', 'test@gmail.com', 'activate', 01)
insert into students_ineuron values( 102, 'FSDs', 'test-1@gmail.com', 'in-activate', 02)
select * from students_ineuron


create table payment(
course_name varchar(60),
course_id int,
course_live_status varchar(60),
course_launch_date varchar (60),
foreign key (course_id) references ineuron(course_id))

insert into payment values ('FSDA',01,'not-active','7th aug')
insert into payment values ('FSDs',02,'active','7th aug')


create table class(
course_id int,
class_name varchar(60),
class_topic varchar(60),
class_duration float,
primary key (course_id),
foreign key (course_id) references ineuron(course_id))




alter table ineuron add constraint test_prim primary key (course_id, course_name)


create table test(
id int not null,
name varchar(60),
email_id varchar(60),
mobile_no varchar(9),
address varchar(50))

alter table test add primary key(id)

alter table test drop primary key

alter table test add constraint test_prim primary key (id, email_id)



create table parent(
id int not null,
primary key(id))

create table child(
id int,
parent_id int,
foreign key(parent_id) references parent(id))

insert into parent values(1)
insert into parent values(2)

select * from parent

insert into child values (1,1)

delete from paren















