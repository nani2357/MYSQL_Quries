DELIMITER $$
create function add_to_col3(a INT)
returns INT 
DETERMINISTIC
BEGIN 
	DECLARE b int ;
	set b = a + 10 ;
	return b ;
end $$



DELIMITER &&
create function final_profit(profit int, discont int)
returns int
deterministic
begin
	declare pf int ;
    set pf = profit -discont ;
    return pf;
end &&


select final_profit(10,2)

call rec()


select profit, discount , final_profit(profit, discount) from sales_1


DELIMITER &&
create function real_profit2 ( profit float, discount float, sales float)
returns float
deterministic
begin
	declare rf float ;
    set rf = profit - sales * discount ;
    return rf ;
end &&


select profit, discount, sales, real_profit2(profit, discount, sales) from sales_1


DELIMITER && 
create function int_to_str(a int)
returns varchar(30)
deterministic
begin
	declare b varchar(30) ;
    set b = a ;
    return b;
end &&

select quantity, int_to_str(quantity) from sales_1



