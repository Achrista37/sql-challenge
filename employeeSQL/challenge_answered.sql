-- create table to contain data from CSV files provided

/*CREATE TABLE "departments" (
  "dept_no" varchar(20),
  "dept_name" varchar(20),
  PRIMARY KEY ("dept_no")
);

CREATE TABLE "dept_manager" (
  "dept_no" varchar(20),
  "emp_no" INT,
  PRIMARY KEY ("dept_no", "emp_no"),
  CONSTRAINT "FK_dept_manager.dept_no"
    FOREIGN KEY ("dept_no")
      REFERENCES "departments"("dept_no")
);

CREATE TABLE "titles" (
  "titles_id" varchar(20),
  "title" varchar(20),
  PRIMARY KEY ("titles_id")
);

CREATE TABLE "employees" (
  "emp_no" INT,
  "emp_title_id" varchar(20),
  "birth_date" date,
  "first_name" varchar(20),
  "last_name" varchar(20),
  "sex" varchar(10),
  "hire_date" date,
  PRIMARY KEY ("emp_no"),
  CONSTRAINT "FK_employees.emp_title_id"
    FOREIGN KEY ("emp_title_id")
      REFERENCES "titles"("titles_id")
);

CREATE TABLE "dept_emp" (
  "emp_no" INT,
  "dept_no" varchar(20),
  PRIMARY KEY ("emp_no", "dept_no"),
  CONSTRAINT "FK_dept_emp.dept_no"
    FOREIGN KEY ("dept_no")
      REFERENCES "departments"("dept_no"),
  CONSTRAINT "FK_dept_emp.emp_no"
    FOREIGN KEY ("emp_no")
      REFERENCES "employees"("emp_no")
);

CREATE TABLE "salaries" (
  "emp_no" INT,
  "salary" INT,
  PRIMARY KEY ("emp_no")
);
*/
-- #1 List the following details of each employee: 
-- employee number, last name, first name, sex, and salary.

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
FROM employees
INNER JOIN salaries 
ON employees.emp_no = salaries.emp_no;

-- #2 List first name, last name, and hire date for employees who were hired in 1986.

Select first_name, last_name, hire_date from employees
Where hire_date >= '1986-01-01'
             AND hire_date < '1987-01-01';

-- #3 List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.

SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM departments
INNER JOIN dept_manager 
ON departments.dept_no = dept_manager.dept_no
INNER JOIN employees
ON dept_manager.emp_no = employees.emp_no;

-- #4 List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no;

-- #5 List first name, last name, and sex for employees 
-- whose first name is "Hercules" and last names begin with "B."
Select first_name, last_name, sex from employees
Where first_name = 'Hercules'
             AND last_name like 'B%';
			 
-- #6 List all employees in the Sales department, including their :
-- employee number, last name, first name, and department name			 
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';
			 
-- #7 List all employees in the Sales and Development departments, including their :
--employee number, last name, first name, and department name.

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales'
	OR dept_name = 'Development' ;

-- #8 In descending order, list the frequency count of employee last names
SELECT COUNT(last_name), last_name
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
