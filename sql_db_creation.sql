CREATE TABLE departments(
	department_id int NOT NULL PRIMARY KEY,
	department_name varchar(30) NOT NULL);

CREATE TABLE employees(
	employee_id int NOT NULL PRIMARY KEY,
	first_name varchar(20) NULL,
	last_name varchar(25) NOT NULL,
	hire_date date NOT NULL,
	job_id int NOT NULL,
	salary decimal(8, 2) NOT NULL,
	manager_id int NULL,
	department_id int NULL,
	gender char(1) NOT NULL,
	birth_date date NOT NULL);

CREATE TABLE jobs(
	job_id int NOT NULL PRIMARY KEY,
	job_title varchar(35) NOT NULL,
	min_salary decimal(8, 2) NULL,
	max_salary decimal(8, 2) NULL);
	
ALTER TABLE employees  ADD FOREIGN KEY(department_id)
REFERENCES departments (department_id);

ALTER TABLE employees ADD FOREIGN KEY(job_id)
REFERENCES jobs (job_id);

ALTER TABLE employees ADD FOREIGN KEY(manager_id)
REFERENCES employees (employee_id);
	
INSERT INTO departments (department_id, department_name) VALUES (1, N'Herosi');
INSERT INTO departments (department_id, department_name) VALUES (2, N'Bogowie');
INSERT INTO departments (department_id, department_name) VALUES (3, N'Czarodzieje');
INSERT INTO departments (department_id, department_name) VALUES (4, N'Demony');
INSERT INTO departments (department_id, department_name) VALUES (5, N'Prelegenci');
INSERT INTO departments (department_id, department_name) VALUES (6, N'IT');
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (1, N'Public Accountant', 4200.00, 9000.00);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (2, N'Accounting Manager', 8200.00, 16000.00);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (3, N'Administration Assistant', 3000.00, 6000.00);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (4, N'President', 20000.00, 40000.00);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (5, N'Administration Vice President', 15000.00, 30000.00);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (6, N'Accountant', 4200.00, 9000.00);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (7, N'Finance Manager', 8200.00, 16000.00);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (8, N'Human Resources Representative', 4000.00, 9000.00);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (9, N'Programmer', 4000.00, 10000.00);
INSERT INTO employees (employee_id, first_name, last_name, hire_date, job_id, salary, manager_id, department_id, gender, birth_date) VALUES (100, N'Rose', N'Kowalska', CAST(N'1987-06-17' AS Date), 4, 150000.00, NULL, 6,'M',CAST(N'1950-05-18' AS Date)),
(101, N'Tom', N'Kowalski', CAST(N'1989-09-21' AS Date), 5, 17000.00, 100, 6,'F',CAST(N'1944-05-11' AS Date));
