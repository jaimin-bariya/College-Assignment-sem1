1. CREATE TABLES 
-----------------------------

CREATE TABLE employee (
emp_id INT PRIMARY KEY,
employee_name VARCHAR(50), 
street varchar(50),
city varchar(50)
);


CREATE TABLE company (
comp_id INT PRIMARY KEY,
company_name VARCHAR(50),
city varchar(50)
);


CREATE TABLE works (
emp_id INT,
comp_id INT,
salary DECIMAL (10, 2),
PRIMARY KEY (emp_id, comp_id),
FOREIGN KEY (emp_id) REFERENCES employee(emp_id),
FOREIGN KEY (comp_id) REFERENCES company(comp_id)
);


CREATE TABLE manager (
manager_id INT PRIMARY KEY,
manager_name VARCHAR(50)
);


CREATE TABLE manage (
emp_id INT,
manager_id INT,
FOREIGN KEY (emp_id) REFERENCES employee(emp_id),
FOREIGN KEY (manager_id) REFERENCES manager(manager_id)
);



-- QUESTION 1: -----------------------------------------
-----------------------------------------------------

-- A - Create above mentioned database and feed at least 15 entries in table employee. --------------------------------
-- Fill all the tables with respect to table employee. ----------------------------------------------------

INSERT INTO employee VALUES (001, 'Jaimin', 'Rajendra Nagar', 'Rajkot');
INSERT INTO employee VALUES (002, 'Murtuja', 'Gandhi Chowk', 'Rajkot');
INSERT INTO employee VALUES (003, 'Sagar', 'Surya Enclave', 'Rajkot');
INSERT INTO employee VALUES (004, 'Rehan', 'Shivaji Circle', 'Rajkot');
INSERT INTO employee VALUES (005, 'Adanan', 'Vijay Plot', 'Rajkot');
INSERT INTO employee VALUES (006, 'Palak', 'Marine Drive', 'Mumbai');
INSERT INTO employee VALUES (007, 'Nishtha', 'Bandra Link Road', 'Mumbai');
INSERT INTO employee VALUES (008, 'Raj', 'Juhu Beach Road', 'Mumbai');
INSERT INTO employee VALUES (009, 'Usha', 'Andheri-Versova Road', 'Mumbai');
INSERT INTO employee VALUES (010, 'Alay', 'Karol Bagh Street', 'Delhi');
INSERT INTO employee VALUES (011, 'Frds', 'Chandni Chowk', 'Delhi');
INSERT INTO employee VALUES (012, 'Mayur', 'Marine Drive', 'Mumbai');
INSERT INTO employee VALUES (013, 'Namira', 'Rajendra Nagar', 'Rajkot');
INSERT INTO employee VALUES (014, 'Poonam', 'Chandni Chowk', 'Delhi');
INSERT INTO employee VALUES (015, 'Khushal', 'Rajendra Nagar', 'Rajkot');

SELECT * FROM employee;



INSERT INTO company (comp_id, company_name, city) VALUES (101, 'TATA', 'Mumbai');
INSERT INTO company (comp_id, company_name, city) VALUES (102, 'Google', 'Delhi');
INSERT INTO company (comp_id, company_name, city) VALUES (103, 'Meta', 'Rajkot');
INSERT INTO company (comp_id, company_name, city) VALUES (104, 'Apple', 'Delhi');

SELECT * FROM company;


INSERT INTO works VALUES (001, 101, 30000);
INSERT INTO works VALUES (002, 101, 40000);
INSERT INTO works VALUES (003, 101, 50000);
INSERT INTO works VALUES (004, 101, 20000);
INSERT INTO works VALUES (005, 102, 35000);
INSERT INTO works VALUES (006, 102, 45000);
INSERT INTO works VALUES (007, 102, 50000);
INSERT INTO works VALUES (008, 102, 25000);
INSERT INTO works VALUES (009, 103, 53000);
INSERT INTO works VALUES (010, 103, 35000);
INSERT INTO works VALUES (011, 103, 65000);
INSERT INTO works VALUES (012, 103, 56000);
INSERT INTO works VALUES (013, 104, 75000);
INSERT INTO works VALUES (014, 104, 62000);
INSERT INTO works VALUES (015, 104, 24000);

SELECT * FROM works;


INSERT INTO manager VALUES (11, 'A');
INSERT INTO manager VALUES (12, 'B');
INSERT INTO manager VALUES (13, 'C');
INSERT INTO manager VALUES (14, 'D');

SELECT * FROM manager;


INSERT INTO manage VALUES (001, 11);
INSERT INTO manage VALUES (002, 11);
INSERT INTO manage VALUES (003, 11);
INSERT INTO manage VALUES (004, 11);
INSERT INTO manage VALUES (005, 12);
INSERT INTO manage VALUES (006, 12);
INSERT INTO manage VALUES (007, 12);
INSERT INTO manage VALUES (008, 12);
INSERT INTO manage VALUES (009, 13);
INSERT INTO manage VALUES (010, 13);
INSERT INTO manage VALUES (011, 13);
INSERT INTO manage VALUES (012, 13);
INSERT INTO manage VALUES (013, 14);
INSERT INTO manage VALUES (014, 14);
INSERT INTO manage VALUES (015, 14);

SELECT * FROM manage;


-- B. Find list of employees with their salaries. ---------------------------------------------------------
--------------------------------------------------------------------------------------------------------

SELECT e.employee_name, w.salary
FROM employee e
JOIN works w
ON e.emp_id = w.emp_id;





-- C. Find name of all employees with their respective managers --------------------------------------------------------
-- and name of city where company situated. -----------------------------------------------------------------------------

SELECT e.employee_name AS "Employee Name", m.manager_name AS "Manager Name", c.city AS "Company City"
FROM employee e
JOIN manage mg ON e.emp_id = mg.emp_id
JOIN manager m ON mg.manager_id = m.manager_id
JOIN works w ON e.emp_id = w.emp_id
JOIN company c ON w.comp_id = c.comp_id;





-- D. Find list of employees who has their office ---------------------------------------------------------
-- in their native city. ----------------------------------------------------------------------------------

SELECT e.employee_name
FROM employee e
JOIN works w ON e.emp_id = w.emp_id
JOIN company c ON w.comp_id = c.comp_id
WHERE e.city = c.city;





-- E. Find the names, street address, and cities of residence ------------------------------------------------------------
-- for all employees who work for 'Tata' and ---------------------------------------------------------------------------
-- earn more than 35,000. -----------------------------------------------------------------------------------------------

SELECT e.employee_name, e.street, e.city 
FROM employee e
JOIN works w ON e.emp_id = w.emp_id
JOIN company c ON w.comp_id = c.comp_id
WHERE c.company_name = 'TATA'
AND w.salary > 35000;





-- QUESTION 2: ---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------

-- A. Find list of companies with their average salaries.----------------------------------------------------

SELECT c.company_name, ROUND(AVG(w.salary)) AS "Average Salary"
FROM company c
JOIN works w ON c.comp_id = w.comp_id
GROUP BY c.company_name;




-- B. Find the names of all employees who earn more than ----------------------------------------------------------
-- the average salary of all employees of their company. ----------------------------------------------------------

SELECT e.employee_name AS "Employee Name"
FROM employee e
JOIN works w ON e.emp_id = w.emp_id
WHERE w.salary > (
SELECT ROUND(AVG(w2.salary))
FROM works w2
WHERE w2.comp_id = w.comp_id
)



-- C. Find the names of all employees in the database who ------------------------------------------------
-- earn more than every employee of 'TATA'. --------------------------------------------------------------

SELECT e.employee_name
FROM employee e
JOIN works w ON e.emp_id = w.emp_id
WHERE NOT EXISTS (
    SELECT 1
    FROM works w2
    JOIN company c ON w2.comp_id = c.comp_id
    WHERE c.company_name = 'TATA'
    AND w2.salary >= w.salary
)



-- D. Find the name of the company that has the ----------------------------------------------------------
-- smallest payroll. -------------------------------------------------------------------------------------

SELECT company_name
FROM (
    SELECT c.company_name
    FROM company c
    JOIN works w ON c.comp_id = w.comp_id
    GROUP BY c.company_name
    ORDER BY SUM(w.salary)
) WHERE ROWNUM = 1;





