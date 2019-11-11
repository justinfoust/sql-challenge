---------------------------------------------------------------------------
---   SQL Challenge HW  --  Employee Database: A Mystery in Two Parts   ---
---   Justin Foust  --  11/11/2019  --  Data Boot Campy                 ---
---------------------------------------------------------------------------


CREATE TABLE Depts
(
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR NOT NULL
);

CREATE TABLE Dept_emp 
(
    emp_no INT NOT NULL,
    dept_no VARCHAR NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL
);

CREATE TABLE Dept_mgr 
(
    dep_no VARCHAR NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL
);

CREATE TABLE Emp 
(
    emp_no INT PRIMARY KEY,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    gender VARCHAR NOT NULL,
    hire_date DATE NOT NULL
);

CREATE TABLE Sal 
(
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL
);

CREATE TABLE Title 
(
    emp_no INT NOT NULL,
    title VARCHAR NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL
);

ALTER TABLE Dept_emp 
ADD CONSTRAINT fk_Dept_emp_emp_no 
FOREIGN KEY(emp_no) REFERENCES Emp (emp_no);

ALTER TABLE Dept_emp
ADD CONSTRAINT fk_Dept_emp_dept_no
FOREIGN KEY(dept_no) REFERENCES Depts (dept_no);

ALTER TABLE Dept_mgr
ADD CONSTRAINT fk_Dept_mgr_dep_no
FOREIGN KEY(dep_no) REFERENCES Depts (dept_no);

ALTER TABLE Dept_mgr
ADD CONSTRAINT fk_Dept_mgr_emp_no
FOREIGN KEY(emp_no) REFERENCES Emp (emp_no);

ALTER TABLE Sal
ADD CONSTRAINT fk_Sal_emp_no
FOREIGN KEY(emp_no) REFERENCES Emp (emp_no);

ALTER TABLE Title
ADD CONSTRAINT fk_Title_emp_no
FOREIGN KEY(emp_no) REFERENCES Emp (emp_no);

