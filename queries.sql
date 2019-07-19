-- Queries

-- general employee information
SELECT "employees".emp_no, last_name, first_name, gender, salary FROM "employees"
INNER JOIN "salaries" ON ("employees".emp_no = "salaries".emp_no)
LIMIT 50
;

-- employees hired after 1986
SELECT emp_no, last_name, first_name, extract(year from hire_date) as hire_year 
FROM "employees"
WHERE extract(year from hire_date) > 1986
;

-- departments and their managers
select dept_manager.dept_no, department.dept_name, employees.emp_no, last_name, first_name, from_date, to_date FROM employees
INNER JOIN dept_manager ON ("dept_manager".emp_no = "employees".emp_no)
INNER JOIN  department ON  ("dept_manager".dept_no = department.dept_no)
;

-- department of each employee
SELECT employees.emp_no, last_name, first_name, department.dept_name FROM  employees
INNER JOIN dept_emp ON (dept_emp.emp_no = employees.emp_no)
INNER JOIN department ON (department.dept_no = dept_emp.dept_no)
;

-- Hercules B. ?
SELECT * FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'
;

-- Sales department employees
SELECT employees.emp_no, last_name, first_name, department.dept_name FROM  employees
INNER JOIN dept_emp ON (dept_emp.emp_no = employees.emp_no)
INNER JOIN department ON (department.dept_no = dept_emp.dept_no)
WHERE department.dept_name = 'Sales'
;

-- Sales employees and Development employees
SELECT employees.emp_no, last_name, first_name, department.dept_name FROM  employees
INNER JOIN dept_emp ON (dept_emp.emp_no = employees.emp_no)
INNER JOIN department ON (department.dept_no = dept_emp.dept_no)
WHERE department.dept_name = 'Sales'
OR department.dept_name = 'Development'
;

-- number of occurances for each last name in employee table
SELECT last_name, COUNT(*)
FROM employees
GROUP BY last_name
ORDER BY count  desc
;
