# EmployeeDatabase


## Data Modeling 

The data for this project revolves around six different data tables. An Entity Relationship Diagram is constructed regarding these six tables to find the common threads linking the various tables to one another.

## Data Engineering 

SQL is used to construct the data tables necessary for the querying step that will be conducted. Six tables are created, each with their own columns and their respective data types. 

The first table is named "departments" and consists of two columns: "dept_no" and "dept_name". Both of these columns are data type VARCHAR. The column "dept_no" is the primary key for this table. 

The second table is "titles" and consists of the columns: "title_id" and "title". Both of these columns are also VARCHAR, with "title_id" being the primary key for this table. 

The third table is "employees" and contains the columns: "emp_no", "emp_title_id", "birth_date", "first_name", "last_name", "sex", and "hire_date. The data types for these columns are either: Integer, VARCHAR, or DATE. The "emp_no" column is the primary key and the "emp_title_id" is the foreign key since it is associated with the "title_id" in the "titles" table. 

The fourth table is "dept_emp" and the columns for this table are: "emp_no" and "dept_no". The "emp_no" column values are Integers, while the "dept_no" column values are VARCHAR. The "emp_no" column is a foreign key of the "emp_no" column in the "employees" table and the 'dept_no" column is a foreign key of the "dept_no" column in the "departments" table. A composite key containing both "emp_no" and "dept_no" is the primary key for this table. 

The fifth table is "dept_manager" and contains the columns: "dept_no" and "emp_no". The data values for these tables are VARCHAR and integer, respectively. Both "dept_no" and "emp_no" are foreign keys. The "dept_no" column is a foreign key to the "dept_no" column in the "departments" table, while the "emp_no" column is the foreign key to the "emp_no" column in the "employees" table. The primary key for this table is a composite key containing both "dept_no" and "emp_no". 

The final table is called "salaries" and has the columns: "salary_id", "emp_no", and "salary". The data type for all three of these columns is integer. The "emp_no" column is a foreign key for the "emp_no" table in the "employees" table and "salary_id" is the primary key for this table. The csv data is then imported into each of these six tables to fill them all. 

## Querying 

A series of eight queries are performed using the six, occupied tables:

1. Listing the employee numbers, last names, first names, sexes, and salaries for all the employees

2. Listing the first names, last names, and hire dates for only employees hired in 1986

3. Listing each department's manager and their department number, department name, employee number, last name, and first name

4. Listing each employee's department number, employee number, last name, first name, and department name

5. Listing first name, last name, and sex of each employee whose first name is "Hercules" and last name starts with "B" 

6. Listing each employee in the Sales department alongside their employee number, last name, and first name

7. Listing each employee in the Sales and Development departments, with their employee number, last name, first name, and department name

8. Listing the frequency counts of last name in descending order

