# Module9_EmployeesSQL

The database schema is designed to manage information about employees, departments, salaries, titles, and department assignments. The schema ensures data integrity through the use of primary and foreign key constraints.

The database includes the following tables:

departments:
dept_no (Primary Key), 
dept_name

titles:
title_id (Primary Key), 
title

employees:
emp_no (Primary Key), 
emp_title_id (Foreign Key to titles.title_id), 
birth_date, 
first_name, 
last_name, 
sex, 
hire_date, 

salaries:
emp_no (Primary Key, Foreign Key to employees.emp_no), 
salary, 

dept_emp:
emp_no (Foreign Key to employees.emp_no), 
dept_no (Foreign Key to departments.dept_no), 
PRIMARY KEY (emp_no, dept_no) (Composite Key), 

dept_manager: 
dept_no (Foreign Key to departments.dept_no), 
emp_no (Foreign Key to employees.emp_no), 
PRIMARY KEY (dept_no, emp_no) (Composite Key), 

Utilized QuickDBD to illustrate the schemata.
