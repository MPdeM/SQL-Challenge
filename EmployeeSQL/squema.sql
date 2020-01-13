-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/waSbab
-- Modified by erasing " " from the table's name



CREATE TABLE departements (
    "dept_no" c   NOT NULL,
    "dept_name" VARCHAR(45)   NOT NULL,
    CONSTRAINT "pk_departements" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE employees (
    "emp_no" INT   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(45)   NOT NULL,
    "last_name" VARCHAR(45)   NOT NULL,
    "gender" VARCHAR(   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE dep_emp (
    "emp_no" INT   NOT NULL,
    "dep_no" VARCHAR(10)   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

CREATE TABLE dep_manager (
    "emp_no" INT   NOT NULL,
    "dep_no" VARCHAR(40)   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

CREATE TABLE salaries (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

CREATE TABLE "titles" (
    "emp_no" INT   NOT NULL,
    "title" VARCHAR(40)   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

ALTER TABLE "dep_emp" ADD CONSTRAINT "fk_dep_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dep_emp" ADD CONSTRAINT "fk_dep_emp_dep_no" FOREIGN KEY("dep_no")
REFERENCES "departements" ("dept_no");

ALTER TABLE "dep_manager" ADD CONSTRAINT "fk_dep_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dep_manager" ADD CONSTRAINT "fk_dep_manager_dep_no" FOREIGN KEY("dep_no")
REFERENCES "departements" ("dept_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

