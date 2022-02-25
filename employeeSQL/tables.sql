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
