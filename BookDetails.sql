
create database Book_Details;

use Book_Details;
create table Books (
Book_id tinyint primary key,
Book_name varchar(20) not null,
Author_name varchar(30) not null,
Book_Price float4 default 250,
Publish_date year check (Publish_date>'2000'),
Volume char(2)
);
show tables;
 
INSERT INTO Books values(1,'DBMS','Balaguru Swamy',500.50,'2005','v');

INSERT INTO bookdetails values(10,'C++','Balaguru Swamy',1000.00,2010,'v');

INSERT INTO Books values(2,'Lucent','K Sunil Rao',250.50,'2017','V');

INSERT INTO Books values(8,'DBMS','Balaguru Swamy',500.50,'2005','v'),(3,'C','Padma Reddy',400.90,'2013','V'),(4,'Python','Sumita Arora',600.45,'2019','V');

INSERT INTO Books values(5,'Operating System','Sumangala rao',678.50,'2015','v'),(6,'Networking','Sir Willioms',750.90,'2020','V'),(7,'Java','Balaguru Swamy',750.45,'2014','V');

select Book_id,Book_name,Publish_date from books;

SELECT *FROM books where Publish_date='2005';

select *from books where Publish_date>='2005' AND Book_Price<=500.00;

select *from books where Publish_date>='2005' or Book_Price>=500.00;

select *from book_details where Publish_date>='2005' AND Book_Price<=500.00 AND Author_name='Balaguru Swamy';

alter table books add column No_Of_Pages int after Book_name;


select *from books;

alter table Books rename to   bookDetails;

select*from bookDetails;

insert into bookDetails(Book_id,Book_name,Publish_date) value (11,'Wings of Fire','A P J Abdul Kalam','2005');

select distinct Book_name, Author_name from bookdetails;

update bookdetails set Author_name='Greta Marina' where Book_id=3;

delete from bookdetails where Book_id=8;

INSERT INTO bookdetails values(8,'DBMS',50,'Balaguru Swamy',500.50,'2005','v');

---- update command

update bookdetails set No_Of_Pages='100' where Book_id=2;

update bookdetails set No_Of_Pages='100' where Book_id=1;

update bookdetails set No_Of_Pages='120' where Book_id=5;

select *from bookdetails order by Book_Price;

select *from bookdetails order by Book_Price desc;

select *from bookdetails order by Book_name desc;

select *from bookdetails limit 5;

-- ---- order by clause

select *from bookdetails order by Book_Price desc limit 4;

select *from bookdetails where Book_name='Networking' or Book_name='Python' or Book_name='Operating System';

select *from bookdetails where Book_name in('Networking' ,'Python', 'Operating System');

select *from bookdetails where Book_Price in(500.50,600.45,678.5);

select *from bookdetails where Book_Price between 300 and 600;

select *from bookdetails where Book_Price between 300 and 600 order by Publish_date;

select Book_Price as Book_Amount_greater_than_600 from bookdetails where Book_Price>600;

select Book_Price as Book_Amount from bookdetails;

update bookdetails set Publish_date=2005 where Book_id=8;

select *from bookdetails;

update bookdetails set No_Of_Pages=250 where Book_id=4;

update bookdetails set No_Of_Pages=300 where Book_id=6;

update bookdetails set No_Of_Pages=159 where Book_id=7;

-- pattern matching 11/11/2021

select *from bookdetails where Book_name='System';

select *from bookdetails where Book_name like '%System';

select *from bookdetails where Book_name like '%S';

select *from bookdetails where Book_name like 'J%';

select *from bookdetails where Book_name like '%p';

select *from bookdetails where Author_name like '%ba%';

select *from bookdetails where Book_name like '_a%';

select *from bookdetails where Author_name like '_a%';

select *from bookdetails where Author_name like '_a_a%';

select *from bookdetails where Author_name like '___a%';

---- DATE AND TIME FUNCTIONS

SELECT CURDATE();

SELECT CURDATE() AS PRESENT_DATE;

SELECT curtime() AS PRESENT_TIME;

SELECT DATE('2021-11-11 10:56:14') AS EXTRACT_DATE;

SELECT DATE(NOW()) AS EXTRACT_DATE;

SELECT TIME('2021-11-11 10:56:14') AS EXTRACT_TIME;

SELECT TIME(NOW()) AS EXTRACT_TIME;

SELECT dayofmonth('2021-11-11 10:56:14') AS EXTRACT_DAY_OF_MONTH;

SELECT month('2021-11-11 10:56:14') AS EXTRACT_MONTH;

SELECT year('2021-11-11 10:56:14') AS EXTRACT_YEAR;

SELECT weekofyear('2021-11-11 10:56:14') AS EXTRACT_WEEK;

SELECT dayname('2021-11-11 10:56:14') AS EXTRACT_DAY_NAME;

---- AGGREGATE FUNCTION;

SELECT MAX(Book_price) from bookdetails;

SELECT min(Book_price) from bookdetails;

select avg(Book_price) from bookdetails;

select avg(Book_price) as lowest_cost from bookdetails;

select avg(Book_price) as average_cost_book from bookdetails;

select sum(Book_price) as total_cost_book from bookdetails;

select count(Book_name) from bookdetails;

select count(*) from bookdetails;

-- get the number of book written by author by using group by clause

select Author_name, count(Book_name) from bookdetails group by Author_name;

select Author_name, count(Book_name) as no_of_bookby_author from bookdetails group by Author_name;

select Author_name, count(Book_name) from bookdetails group by Author_name;

select Book_Price, count(Book_Price) as no_in_Price from bookdetails group by Book_Price;

select *from bookdetails;

select Publish_date, count(Book_name) as No_of_books_in_year from bookdetails group by Publish_date;

select Publish_date, count(Book_name) as No_of_books_in_year from bookdetails where Publish_date>2006 group by Publish_date;

































