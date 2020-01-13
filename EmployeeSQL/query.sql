-- List the following details of each employee: 
-- employee number, last name, first name, gender, and salary.

Select e.emp_no, e.last_name, e.first_name, e.gender, a.salary
FROM employees AS e, salaries  AS a 
where e.emp_no = a.emp_no ;

-- List employees who were hired in 1986.
Select first_name, last_name
FROM employees AS e
WHERE date_part('year', hire_date) = 1986;


-- List the manager of each department with the following information:
-- department number, department name, the manager's employee number,
-- last name, first name, and start and end employment dates

Select dm.dept_no, d.dep_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
FROM employees AS e   
INNER JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
INNER JOIN departements AS d ON d.dept_no = dm.dept_no;

-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

Select employees.emp_no, employees.last_name, employees.first_name , departements.dep_name 
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departements ON departements.dept_no = dept_emp.dept_no
GROUP BY departements.dep_name, employees.emp_no, employees.last_name, employees.first_name ;

-- List all employees whose first name is "Hercules" and last names begin with "B."
Select e.first_name , e.last_name
FROM employees  AS e
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their 
-- employee number, last name, first name, and department name.

Select e.emp_no, e.last_name, e.first_name , d.dep_name 
FROM employees AS e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
INNER JOIN departements AS d ON d.dept_no = de.dept_no
WHERE  d.dep_name = 'Sales';

-- List all employees in the Sales and Development departments, including their
-- employee number, last name, first name, and department name.
Select e.emp_no, e.last_name, e.first_name , d.dep_name 
FROM employees AS e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
INNER JOIN departements AS d ON d.dept_no = de.dept_no
WHERE  d.dep_name = 'Sales' OR d.dep_name = 'Development';

-- In descending order, list the frequency count of 
-- employee last names, i.e., how many employees share each last name.
Select last_name, COUNT(last_name)  as c
FROM employees
GROUP BY last_name
ORDER BY c desc; 
