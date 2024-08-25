-- 1. List the employee number, last name, first name, sex, and salary of each employee.

SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM
	employees e
JOIN
	salaries s
ON
	e.emp_no = s.emp_no;


-- 2. List first name, last name, and hire date for the employees who were hired in 1986.

SELECT
	first_name,
	last_name,
	hire_date
FROM
	employees
WHERE
	EXTRACT(YEAR FROM hire_date) = 1986;


-- 3. List manager of each department along with their dept. number, department name, employee number, last name, and first name

SELECT
	dm.dept_no,
	d.dept_name,
	dm.emp_no,
	e.last_name,
	e.first_name
FROM
	dept_manager dm
JOIN
	departments d
ON
	dm.dept_no = d.dept_no
JOIN
	employees e
ON
	dm.emp_no = e.emp_no;


-- 4. List dept number for each employee along with the employee's employee #, last name, first name, dept. name

SELECT
	de.dept_no,
	de.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM
	dept_emp de
JOIN
	employees e
ON
	de.emp_no = e.emp_no
JOIN
	departments d
ON
	de.dept_no = d.dept_no;


-- 5. List first name, last name, and sex of each employee whose first name is Hercules and Whose last name begins with the letter B.

SELECT
	first_name,
	last_name,
	sex
FROM
	employees
WHERE
	first_name = 'Hercules'
AND
	last_name LIKE 'B%';

-- 6. List each employee in the Sales dept., incl employee #, last name, and first name.

SELECT
	e.emp_no,
	e.last_name,
	e.first_name
FROM
	employees e
JOIN
	dept_emp de
ON
	e.emp_no = de.emp_no
JOIN
	departments d
ON
	de.dept_no = d.dept_no
WHERE
	d.dept_name = 'Sales';


-- 7. List each employee in Sales and Development depts. incl. employee #, last name, first name, dept name

SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM
	employees e
JOIN
	dept_emp de
ON
	e.emp_no = de.emp_no
JOIN
	departments d
ON
	de.dept_no = d.dept_no
WHERE
	d.dept_name IN ('Sales','Development');


-- 8. List frequency counts, in desc. order, of all employee last names.

SELECT
	last_name,
	COUNT(*) AS frequency
FROM
	employees
GROUP BY
	last_name
ORDER BY
	frequency DESC;

