create table customer(
customerID int primary key,
first_name varchar(20),
last_name varchar(20),
country varchar(20),
age int check(age>=18),
phone_no bigint(10) );

drop table customer;


insert into customer (customerID,first_name,last_name ,country,age,
phone_no) values (
1,"sam","curran","aus",24,6869430245);

# create student table and fill values using inert into 

create table student(
studentid int primary key ,
student_name varchar(20),
age int,
dept varchar(20),
email varchar(20));

show databases;

use mysql ;

insert into student(studentid,student_name,age,dept,email)
values(
101,"john",21,"MCA","john20202@gmail.com");

# alter/change the name of the column 
alter table student rename column  student_name to first_name;


#  alter the name of the table 

alter table student rename to student_details;

# add column to table 

alter table student_details add marks int;

# change the datatype of the column 

alter table student_details modify dept char(20);


