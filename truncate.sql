# SQL Truncate table 
# In sql truncate is used to remove the all rows and leaving the table structure intact

# truncate command is used to remove the rows 
# syntax is:
# TRUNCATE TABLE tablename;


# create the employee_detail database
CREATE DATABASE employee_detail;

# use the database employee_name
USE employee_detail;
# create the table with employee name
CREATE TABLE EMPLOYEE(
    EMP_ID INT(4),
    NAME VARCHAR(20),
    AGE INT(3),
    DOB DATE,
    SALARY DECIMAL(7,2));
# Insert the values into table 
INSERT INTO EMPLOYEE VALUES(121,'AJAY KUMAR',23,'1987-09-12',23456.32);
INSERT INTO EMPLOYEE VALUES(132,'BOBBY DEOL',34,'1989-02-19',84164.56);
INSERT INTO EMPLOYEE VALUES(246,'ELVISH SMITH',27,'1996-01-29',51876.97);
INSERT INTO EMPLOYEE VALUES(955,'GEORGE CLARKE',31,'1992-09-21',91451.64);
INSERT INTO EMPLOYEE VALUES(729,'MONICA GELLER',28,'1985-11-18',98329.43);


# select table 
select *from employee;

# Now remove the rows of table 
truncate table employee;

# if we check now all data pf rows is truncate/deleted we can see only column name because we erased data using truncate

select* from employee;

desc employee;
