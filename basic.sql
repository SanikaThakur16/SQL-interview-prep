-- run on postgress SQL
create DATABASE company_db;
\c company_db;    --Syntax in MYSQL:- "use company_db; 
-- O/P: You are now connected to database "company_db" as user "postgres".

--Department Table
create table Department(dept_id SERIAL PRIMARY KEY,dept_name VARCHAR(100) NOT NULL);

--Job Table
create TABLE job(job_id serial,job_title VARCHAR(100) NOT NULL,min_salary DECIMAL(10,2),max_salary DECIMAL(10,2));

--Employee Table
CREATE TABLE employees (employee_id SERIAL PRIMARY KEY ,first_name VARCHAR(50),last_name VARCHAR(50),email VARCHAR(100) UNIQUE,phone_number VARCHAR(20),hire_date DATE,job_id INT,salary DECIMAL(10,2),department_id INT,FOREIGN KEY (job_id) REFERENCES job(job_id),FOREIGN KEY (department_id) REFERENCES department(dept_id));

