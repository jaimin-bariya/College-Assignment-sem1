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





-- PRACTICAL ASSIGNMENT-2 ---------------------------------------------------------
-----------------------------------------------------------------------------------

-- A. Write a procedure to insert data in employee table. ------------------------
----------------------------------------------------------------------------------


CREATE OR REPLACE PROCEDURE InsertEmployee (
    emp_id_param IN INT,
    employee_name_param IN VARCHAR2,
    street_param IN VARCHAR2,
    city_param IN VARCHAR2
)
AS
BEGIN
    INSERT INTO employee (emp_id, employee_name, street, city)
    VALUES (emp_id_param, employee_name_param, street_param, city_param);
    COMMIT; -- Commit the transaction
END InsertEmployee;

BEGIN
InsertEmployee(16, 'JP', 'Surya Nagar', 'Rajkot');
InsertEmployee(17, 'Arjun', 'Surya Nagar', 'Rajkot');
END;

select * from employee;



-- B. Write a procedure to update contact number of employee in employee table.----------
-----------------------------------------------------------------------------------------

-- first make a column to save contact number
ALTER TABLE employee
ADD contact_number VARCHAR2(50);


-- make procedure to update contact number
CREATE OR REPLACE PROCEDURE UpdateContactNumber (
    emp_id_p IN INT,
    new_contact_number_p IN VARCHAR2
)
AS
BEGIN
    UPDATE employee
    SET contact_number = new_contact_number_p
    WHERE emp_id = emp_id_p;
    COMMIT; 
END UpdateContactNumber;


-- update contact number
BEGIN
UpdateContactNumber(1, '9090909090');
UpdateContactNumber(2, '8080808080');
END;


SELECT * FROM employee;




-- C. Write a procedure to find name of manager for given employee id. -----------
----------------------------------------------------------------------------------

-- make a procedure 
CREATE OR REPLACE PROCEDURE FindManagerName (
    emp_id_param IN INT,
    manager_name OUT VARCHAR2
)
AS
BEGIN
    SELECT m.manager_name INTO manager_name
    FROM manager m
    JOIN manage mg ON m.manager_id = mg.manager_id
    WHERE mg.emp_id = emp_id_param;
END FindManagerName;


-- find manager name using employee ID
DECLARE
    v_manager_name VARCHAR2(100); -- Assuming the manager's name won't exceed 100 characters
BEGIN
    FindManagerName(7, v_manager_name);
    DBMS_OUTPUT.PUT_LINE('Manager Name: ' || v_manager_name);
END;




-- D. Write a procedure to get all the details (emp_id, name, city of residence, ---------------
-- company name, city of work, manager name, salary) of given employee id. ---------------------

CREATE OR REPLACE PROCEDURE GetEmployeeDetails (
    emp_id_param IN INT
)
AS
    v_emp_id employee.emp_id%TYPE;
    v_employee_name employee.employee_name%TYPE;
    v_employee_city employee.city%TYPE;
    v_company_name company.company_name%TYPE;
    v_company_city company.city%TYPE;
    v_manager_name manager.manager_name%TYPE;
    v_salary works.salary%TYPE;
BEGIN
    SELECT e.emp_id, e.employee_name, e.city
    INTO v_emp_id, v_employee_name, v_employee_city
    FROM employee e
    WHERE e.emp_id = emp_id_param;

    SELECT c.company_name, c.city
    INTO v_company_name, v_company_city
    FROM works w
    JOIN company c ON w.comp_id = c.comp_id
    WHERE w.emp_id = emp_id_param;

    SELECT m.manager_name
    INTO v_manager_name
    FROM manage mg
    JOIN manager m ON mg.manager_id = m.manager_id
    WHERE mg.emp_id = emp_id_param;

    SELECT w.salary
    INTO v_salary
    FROM works w
    WHERE w.emp_id = emp_id_param;

    -- Output the details
    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_emp_id);
    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_employee_name);
    DBMS_OUTPUT.PUT_LINE('City of Residence: ' || v_employee_city);
    DBMS_OUTPUT.PUT_LINE('Company Name: ' || v_company_name);
    DBMS_OUTPUT.PUT_LINE('City of Work: ' || v_company_city);
    DBMS_OUTPUT.PUT_LINE('Manager Name: ' || v_manager_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
END GetEmployeeDetails;



-- to find all detail by emp_id
BEGIN
    GetEmployeeDetails(1); -- Provide the employee ID
END;


-- Question 4 ------------------------------------------------------------
-- Create three tables ---------------------------------------------------


CREATE TABLE studentTable (
roll_no INT PRIMARY KEY,
name varchar2(50),
contact varchar2(50),
marks INT
);


CREATE TABLE studentCopy (
roll_no INT PRIMARY KEY,
contact varchar2(50)
);


CREATE TABLE studentUpdateCopy (
roll_no INT PRIMARY KEY,
new_contact VARCHAR2(50),
old_contact varchar2(50)
);



CREATE OR REPLACE TRIGGER InsertStudentCopy
AFTER INSERT ON studentTable
FOR EACH ROW
BEGIN
    INSERT INTO studentCopy (roll_no, contact)
    VALUES (:NEW.roll_no, :NEW.contact);
END;
/


-- now add values in studentTable 
INSERT INTO studentTable VALUES (1, 'Jaimin', '9090909090', '100');
INSERT INTO studentTable VALUES (2, 'Sagar', '8080808080', '100');
INSERT INTO studentTable VALUES (3, 'Murtuja', '7878787878', '100');
INSERT INTO studentTable VALUES (4, 'Rehan', '6060606060', '100');

SELECT * FROM studentTable;
SELECT * FROM studentCopy;


-- B. Create a trigger to insert Roll no New Contact number and old -------
-- Contact number of student on updation of contact number in Table -------
-- Student.----------------------------------------------------------------


CREATE OR REPLACE TRIGGER UpdateStudentContactCopy
BEFORE UPDATE OF contact ON studentTable
FOR EACH ROW
BEGIN
    INSERT INTO studentUpdateCopy (roll_no, new_contact, old_contact)
    VALUES (:OLD.roll_no, :NEW.contact, :OLD.contact);
END;


-- now change contact number 
UPDATE studentTable
SET contact = '456'
WHERE roll_no = 1;


-- check in table
SELECT * FROM studentTable;
SELECT * FROM studentUpdateCopy;



-- Question 5: Create a Table ---------------------------------
---------------------------------------------------------------

CREATE TABLE newStudent (
roll_no INT PRIMARY KEY,
name VARCHAR2(50),
contact VARCHAR2(50),
marks INT,
grade varchar2(10)

);


INSERT INTO newStudent VALUES (1, 'a', '111', 90, 'A');
INSERT INTO newStudent VALUES (2, 'b', '222', 10, 'D');
INSERT INTO newStudent VALUES (3, 'c', '333', 20, 'D');
INSERT INTO newStudent VALUES (4, 'd', '444', 30, 'D');
INSERT INTO newStudent VALUES (5, 'e', '555', 40, 'C');
INSERT INTO newStudent VALUES (6, 'f', '666', 40, 'C');
INSERT INTO newStudent VALUES (7, 'g', '777', 50, 'C');
INSERT INTO newStudent VALUES (8, 'h', '888', 60, 'B');
INSERT INTO newStudent VALUES (9, 'i', '999', 70, 'B');
INSERT INTO newStudent VALUES (10, j', '000', 80, 'A');


-- make a cursor
DECLARE
    v_student_count INT := 0; -- Variable to count affected rows

    CURSOR student_cursor IS
        SELECT *
        FROM newStudent
        WHERE marks > 70; -- Select students with marks more than 70

BEGIN
    -- Open cursor and fetch data
    FOR student_rec IN student_cursor LOOP
        -- Display details of students with marks more than 70
        DBMS_OUTPUT.PUT_LINE('Roll No: ' || student_rec.roll_no || ', Name: ' || student_rec.name || ', Marks: ' || student_rec.marks);
        
        -- Increment the affected row count
        v_student_count := v_student_count + 1;
    END LOOP;

    -- Display affected row count
    DBMS_OUTPUT.PUT_LINE('Total affected rows: ' || v_student_count);
END;





-- B. Create an explicit cursor to find 7th record of table Student using loop. -----------
-------------------------------------------------------------------------------------------

DECLARE
    -- Declare variables to hold student details
    v_roll_no newStudent.roll_no%TYPE;
    v_name newStudent.name%TYPE;
    v_contact newStudent.contact%TYPE;
    v_marks newStudent.marks%TYPE;
    v_grade newStudent.grade%TYPE;

    -- Declare an explicit cursor
    CURSOR student_cursor IS
        SELECT *
        FROM newStudent;

    -- Counter variable for loop
    v_counter INT := 1;

BEGIN
    -- Open cursor and fetch data
    OPEN student_cursor;
    
    -- Fetch the 7th record using a loop
    LOOP
        FETCH student_cursor INTO v_roll_no, v_name, v_contact, v_marks, v_grade;
        
        IF v_counter = 7 THEN
            -- Display details of the 7th record
            DBMS_OUTPUT.PUT_LINE('7th Record - Roll No: ' || v_roll_no || ', Name: ' || v_name || ', Contact: ' || v_contact || ', Marks: ' || v_marks || ', Grade: ' || v_grade);
            EXIT; -- Exit loop after fetching the 7th record
        END IF;
        
        v_counter := v_counter + 1; -- Increment the counter
    END LOOP;

    -- Close the cursor
    CLOSE student_cursor;
END;
/





