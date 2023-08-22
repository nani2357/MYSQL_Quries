load data infile 'E:/SQL/MYSQL_S/2/AttributeDataSet.csv'
into table dress
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;


select * from dress

SHOW VARIABLES LIKE 'secure_file_priv';