create database for_test;
create database for_train;

# check whether the database is exists or not if not exists then 
# create database

create database if not exists for_test;
create database if not exists for_train;

# Use the database which one we want 

use for_test;
use for_train;


# to see what are the databases exists
show databases;

# to delete database 
drop database for_test;


# creating table 

create table student(
studentid int primary key,
student_name varchar(20),
student_dept varchar(10),
year_of_clg int)


# verifying the what are the table exists 

# drop the table



drop table student;



