-- Schema

CREATE TABLE department(
	dept_no CHAR(4) PRIMARY KEY,
	dept_name VARCHAR(100)
);

CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender CHAR(1),
	hire_date DATE
);

CREATE TABLE dept_emp (
	emp_no INT REFERENCES employees(emp_no),
	dept_no CHAR(4) REFERENCES department(dept_no),
	from_date DATE,
	to_date DATE
);

CREATE TABLE dept_manager (
	dept_no CHAR(4) REFERENCES department(dept_no),
	emp_no INT REFERENCES employees(emp_no),
	from_date DATE,
	to_date DATE
);

CREATE TABLE salaries(
	emp_no INT REFERENCES employees(emp_no),
	salary INT,
	from_date date,
	to_date date
);

CREATE TABLE titles(
	emp_no INT REFERENCES employees(emp_no),
	title VARCHAR(50),
	from_date date,
	to_date date
)
