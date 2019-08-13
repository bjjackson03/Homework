SELECT employees.emp_no, first_name, last_name, gender, salary 
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date 
BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date;

SELECT dept_name, 
dept_manager.emp_no, 
from_date, 
to_date, 
first_name, 
last_name
FROM dept_manager
INNER JOIN employees ON employees.emp_no = dept_manager.emp_no
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
ORDER BY last_name;

SELECT employees.emp_no, last_name, first_name, dept_name 
FROM employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
ORDER BY last_name;

SELECT first_name, last_name FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

SELECT employees.emp_no, first_name, last_name, dept_name 
FROM employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales'
ORDER BY last_name;

SELECT employees.emp_no, first_name, last_name, dept_name 
FROM employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE dept_name = 'Development' OR dept_name = 'Sales'
ORDER BY last_name;

SELECT last_name, COUNT(last_name) FROM employees
GROUP BY last_name 
ORDER BY last_name DESC;