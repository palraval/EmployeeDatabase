-- Querying/ Data Analysis

-- 1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT salaries.emp_no, last_name, first_name, sex, salary FROM employees
JOIN salaries on salaries.emp_no = employees.emp_no;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name

CREATE VIEW department_info AS
SELECT dept_manager.dept_no,dept_name, emp_no FROM departments
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no;

CREATE VIEW manager_dept AS
SELECT dept_no, dept_name, employees.emp_no, last_name, first_name FROM department_info
JOIN employees ON employees.emp_no = department_info.emp_no;

SELECT * FROM manager_dept

-- 4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name

CREATE VIEW employee_dept AS
SELECT dept_no, employees.emp_no, last_name, first_name FROM employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no; 

CREATE VIEW employee_dept_info AS
SELECT DISTINCT last_name, first_name, emp_no, employee_dept.dept_no, dept_name FROM employee_dept
JOIN departments ON departments.dept_no = employee_dept.dept_no;

SELECT * FROM employee_dept_info

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B. 

SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';


-- 6. List each employee in the Sales department, including their employee number, last name, and first name.

SELECT last_name, first_name, emp_no FROM employee_dept_info
WHERE dept_name = 'Sales';

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT last_name, first_name, emp_no, dept_name FROM employee_dept_info
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

-- 8. List the frequency counts, in descending order, of all the employee last names.

SELECT last_name, COUNT(employees.last_name) AS "Last_name_count" FROM employees
GROUP BY last_name
ORDER BY "Last_name_count" DESC 