CREATE TABLE departments(
Dept_No varchar(6),
Dept_Name varchar(30)
)



CREATE TABLE managers(
Dept_No varchar(6),
Emp_No int,
From_Date date,
To_Date date
)


CREATE TABLE dept_employees(
Emp_Num int,
Dept_No varchar(6),
From_Date date,
To_Date date
)

CREATE TABLE employees(
Emp_No int,
Birth_Date date,
First_Name varchar(25),
Last_Name varchar(25),
Gender varchar(1),
Hire_Date date
)


CREATE TABLE salaries(
Emp_No int,
Salary int,
From_Date date,
To_Date date
)

CREATE TABLE title(
Emp_No int,
Title varchar(50),
From_Date date,
To_Date date
)











