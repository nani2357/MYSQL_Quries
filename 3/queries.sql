create database sales;
use sales;



CREATE TABLE sales_1 (
	order_id VARCHAR(15) NOT NULL, 
	order_date varchar(15) NOT NULL, 
	ship_date varchar(15) NOT NULL, 
	ship_mode VARCHAR(14) NOT NULL, 
	customer_name VARCHAR(22) NOT NULL, 
	segment VARCHAR(11) NOT NULL, 
	state VARCHAR(36) NOT NULL, 
	country VARCHAR(32) NOT NULL, 
	market VARCHAR(6) NOT NULL, 
	region VARCHAR(14) NOT NULL, 
	product_id VARCHAR(16) NOT NULL, 
	category VARCHAR(15) NOT NULL, 
	sub_category VARCHAR(11) NOT NULL, 
	product_name VARCHAR(127) NOT NULL, 
	sales int NOT NULL, 
	quantity DECIMAL(38, 0) NOT NULL, 
	discount DECIMAL(38, 3) NOT NULL, 
	profit DECIMAL(38, 5) NOT NULL, 
	shipping_cost DECIMAL(38, 2) NOT NULL, 
	order_priority VARCHAR(8) NOT NULL, 
	`year` int NOT NULL
);

set session sql_mode = ''

select * from sales_1

load data infile 'E:\\SQL\\MYSQL_S\\3\\sales_data_final.csv'
into table sales_1
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

DELIMITER &&
CREATE PROCEDURE  rec()
BEGIN
	select * from sales_1;
END &&

CALL REC()



select str_to_date(	order_date, '%m/%d/%y') from sales_1;


alter table sales_1
add column order_date_new date after order_date



UPDATE sales_1
SET order_date_new = str_to_date(order_date,'%m/%d/%Y')

alter table sales_1
add column ship_date_new date after ship_date;

update sales_1
set ship_date_new = str_to_date(ship_date, '%m/%d/%Y')


call rec()


alter table sales_1
drop column order_date,
drop column ship_date ;


select * from sales_1 where ship_date_new >= '2011-01-07'

select count(order_id) from sales_1

select * from sales_1 where `year` between 2011 and 2014 

select now
select curdate()
select curtime()


call rec()

select * from sales_1 where ship_date_new > date_sub(now(), interval 9 year)

select date_sub(now() , interval 1 week)
select date_sub(now() , interval 30 day)
select date_sub(now() , interval 30 year)
select year(now())
select dayname('2022-09-20 21:10:30')


alter table sales_1
add column `current_date` date after order_id


update  sales_1
set `current_date` = curdate()



call rec()

alter table sales_1
add column year_new date after `year`,
add column month_new date after year_new,
add column day_new date after month_new ;


update sales_1
set year_new = year(order_date_new)



alter table sales_1
drop `year_new`,
drop month_new,
drop day_new ;


alter table sales_1
add column year_new date after `year`





alter table sales_1
add column year_new int after `year`,
add column month_new int after year_new,
add column day_new int after month_new ;

update sales_1
set year_new = year(order_date_new)

call rec()


update sales_1
set month_new = month(order_date_new)

update sales_1
set day_new = day(order_date_new)


select year_new, avg(sales) as AVG_SALES_YEAR from sales_1 group by year_new


select year_new,sum(sales) as sum_sales_year from sales_1 group by year_new

select year_new, sum(quantity) as qunatity_saled from sales_1 group by year_new

SELECT year_new, month_new, SUM(quantity) as quantity_saled
FROM sales_1
GROUP BY year_new, month_new
LIMIT 0, 1000;





