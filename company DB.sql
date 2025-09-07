-- 1. Create Database
CREATE DATABASE CompanyDB;

-- 2. Use the newly created database
USE CompanyDB;

-- 3. Create Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,       -- Unique ID for each employee
    Name VARCHAR(50) NOT NULL,       -- Employee name
    Department CHAR(10),             -- Department code (fixed length)
    Salary DECIMAL(10,2),            -- Salary with 2 decimal places
    JoiningDate DATE                 -- Date of joining
);

-- 4. Insert multiple records into Employees table
INSERT INTO Employees (EmployeeID, Name, Department, Salary, JoiningDate)
VALUES 
(1, 'Rakesh BR', 'IT', 50000.00, '2025-09-07'),
(2, 'Anita S', 'HR', 45000.00, '2024-12-01'),
(3, 'Vikram K', 'FIN', 60000.00, '2025-01-15'),
(4, 'Sneha P', 'IT', 52000.00, '2025-06-20');

-- 5. Select all records to verify
SELECT * FROM Employees;

/* 
Lets see how to use the alter command for changes 

ALTER command in sql is used to make changes in tables without losing data stored in table 
ALTER command is used with  add,modify,rename,and delete command 


ADD

 syntax :
 alter table tablename
 add column_name datatype;
 
 MODIFY 
 
 alter table tablename 
 modify column column_name datatype ;
 
 
 DROP 
 
  alter table tablename
  drop column column_name ;
  
  
  RANAME
  
   alter table table_name
   rename column old_column_name TO new_column_name;
   
   RENAME TO 
   alter table table_name
   rename to new_table_ name ;

  */
  
  # lets implement them 
  
  alter table Employees 
  add Age int;
  
  # modify clause 
  alter table employees
  modify column Department varchar(10);
  
  
  # select
  select * from Employees;
  # delete
  alter table Employees
  drop column  Age ;


# to rename column
alter table Employees 
rename column Name to Emp_name;

# to rename the table name then we can use rename to clause

alter table Employees
rename to Emp_details;


# select command 
# select all data from table  
select *  from Emp_details;

# select specified columns from table
select EmployeeID,Emp_name from Emp_details;

# select columns with where clause 


# use group by clause 
select Department ,count(*) from Emp_details
group by Department;


# using distinct 
select distinct Emp_name as Employees from Emp_details;

# use of having clause 

select Department,count(*) from Emp_details 
group by Department 
having count(*)>1;


# use order by statement
select * from  Emp_details order by Salary ASC;