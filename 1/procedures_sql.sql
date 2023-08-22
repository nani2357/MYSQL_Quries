select count(*) from bank

select * from bank


select age, loan, job from bank


select `default` from bank


select * from  bank limit 10

select * from bank where age = 33

select * from bank where age >= 60

select * from bank where age>= 60 and job = 'retired'

select * from bank where age>= 60 or job = 'retired'



select * from bank where education = 'unknown' or marital = 'single'

select * from bank where (education = 'unknown' or marital = 'single') and balance < 500


select distinct job from bank

select distinct marital from bank

select * from bank order by age

select * from bank order by  age desc



# with this data try to fine out sum of balance
select sum(balance) as total_balance from bank;

-- Try to find out avarage of balance
select avg(balance) as avg_balance from bank;

#try to find out who is having a min balance 
select min(balance) as min_balance from bank 

#try to find out who is having a mazxmim balance 
select max(balance) as max_balance from bank;

#try to prepare a list of all the person who is having loan 
select * from bank where loan = 'yes'

select * from bank

#try to find out average balance for all the people whose job role is admin 
select avg(balance) as avg_bal_for_admin from bank where job = 'admin.'

#try to find out a record  without job whose age is below 45 
select * from bank where job = 'unknown' and age <= 45

#try to find out a record where education is primarty and person is jobless
select * from bank where education = 'primary' and job = 'unknown'

#try to find of a record whose bank account is having a negative balance 
select * from bank where balance < 0

#try to find our a record who is not having house at all along with there balance 
select * from bank where housing = 'no'

#try to find out who is having a min balance 
select  min(balance) as min_balance from bank 

select * from bank where balance in  ( select  min(balance) as min_balance from bank)
select * from bank where balance =  ( select  min(balance) as min_balance from bank)

select * from bank;

DELIMITER &&
create procedure select_rec()
BEGIN
	select * from bank;
END &&


call select_rec()

DELIMITER &&
create procedure bal_min()
BEGIN
	select * from bank where balance =  ( select  min(balance) as min_balance from bank);
END &&

call bal_min()


DELIMITER &&
create procedure avg_bal_role(IN jobrole varchar(30))
BEGIN
	select avg(balance) as avg_bal_for_admin from bank where job = jobrole;
END &&

call avg_bal_role('admin.')
call select_rec()

call avg_bal_role('management')
call avg_bal_role('unknown')


DELIMITER &&
create procedure edu_job(IN v1 varchar(30), IN v2 varchar(30))
BEGIN
	select * from bank where education = v1 and job = v2;
END &&

call select_rec()
call edu_job('secondary','management')


create view bank_view as select age , job , marital , balance , education from bank;
