# creating table using the primary key and alter the primary key
create database college;
use  college;
create table student(
student_id int primary key,
student_name varchar(20),
dept varchar(20)); 

insert into student(student_id,student_name,dept)
values(1,"Rakesh","MCA"),
(2,"Chethan","MSC");


# if we try to insert duplicate or null values to student then it shows error

insert into student(student_id,student_name,dept)
values(1,"Rakesh","MCA"),
(0,"Chethan","MSC");

# above code give an error

# lets create the new table then insert the primary key to any column

CREATE TABLE Persons ( 
  PersonID int,
  LastName varchar(255) NOT NULL,
  FirstName varchar(255),  Age int);
  
  select * from persons;
  
  
  ALTER TABLE Persons
ADD CONSTRAINT  PRIMARY KEY (PersonID);
#

alter table student
add constraint Pk_Persons primary key(dept);

desc student;

# use the foreign key in courses table 
create table courses (
course_name varchar(20),
instructor varchar(20),
student_id int,
foreign key (student_id) references student(student_id));

select*from student;
select*from courses;

desc student;
desc courses;


