--Question 1: List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT emp.emp_no, last_name, first_name, gender, salary
FROM employees as emp
INNER JOIN salaries as sal
ON emp.emp_no=sal.emp_no


--Question 2: List employees who were hired in 1986.
SELECT *
FROM employees
WHERE hire_date BETWEEN '%1986-01-01' AND '%1986-12-31';



--Question 3: List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT man.dept_no,departments.dept_name,man.emp_no,employees.last_name,employees.first_name,from_date,to_date
FROM managers as man
LEFT JOIN departments ON man.dept_no=departments.dept_no
LEFT JOIN employees ON man.emp_no=employees.emp_no;


--Question 4: List the department of each employee with the following information: employee number, last name, first name, and department name
SELECT emp.emp_no,last_name,first_name,departments.dept_name
FROM employees as emp
LEFT JOIN dept_employees ON emp.emp_no=dept_employees.emp_num
LEFT JOIN departments on dept_employees.dept_no=departments.dept_no;



--Question 5: List all employees whose first name is "Hercules" and last names begin with "B."
SELECT *
FROM employees WHERE first_name ='Hercules' and last_name LIKE 'B%'



--Question 6: List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT emp.emp_no,last_name,first_name,departments.dept_name
FROM employees as emp
LEFT JOIN dept_employees ON emp.emp_no=dept_employees.emp_num
LEFT JOIN departments ON dept_employees.dept_no=departments.dept_no WHERE dept_name='Sales';



--Question 7: List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT emp.emp_no,last_name,first_name,departments.dept_name
FROM employees as emp
LEFT JOIN dept_employees ON emp.emp_no=dept_employees.emp_num
LEFT JOIN departments ON dept_employees.dept_no=departments.dept_no WHERE dept_name='Sales' OR dept_name='Development';



--Question 8: In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name,COUNT(last_name) as last_name_total
FROM employees
GROUP BY last_name
ORDER BY last_name_total DESC




