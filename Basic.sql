-- <, >, <=, >=, =, <>(not equal), AND, OR
SELECT * from Student
Order by name;

Select Student.Name, Student.GPA
    -> FROM Student;

SELECT * from Student
    -> ORDER BY Major, Student_id ASC;
-- ORDER BY means the data will be sorted in alphabetical order
SELECT * from Student
    -> ORDER BY Major, Student_id DESC;

SELECT * from Student
    -> LIMIT 2;

SELECT * from Student
    -> ORDER BY student_id DESC
    -> LIMIT 2; -- limit will set the rows limit to 2 if you have put 2.

Select name, major from student
    -> Where major = 'Biochemistry' OR major = 'IT';

>Select name, major from student
    -> where major <> 'Biochemistry';

select name, major from student
    -> where student_id < 3;

select * from student
    -> where name IN ('Jack', 'Rachel', 'Arthur'); -- where name is Jack, Rachel and Arthur

select * from student
    -> where major NOT IN ('Maths', 'Biochemistry');

select * from student
    -> where major IN ('Medicine', 'IT') AND student_id >=3;

-- change column name in mysql
ALTER TABLE Employee
    -> RENAME COLUMN slaary TO salary;
-- slaary is old name, salary is new name.


-- select all from employee order by sex, then name
select * from Employee
    -> ORDER BY sex, f_name, l_name;

--select fisrt 5 employees
select * from Employee
    -> LIMIT 5;

--select first, last name from employee
select f_name, l_name
From Employee;

-- if you want to change column names
-- Q) find forename and surname of employees
select f_name AS forename, l_name AS surname from Employee;

-- find out different genders, DISTINCT will tell you different entries in the column
Select DISTINCT sex
from Employee;



--FUNCTIONS
-- AVG, SUM, MIN, MAX, COUNT
--Q) Find total number of employees - COUNT
select COUNT(emp_id)
FROM Employee;

select COUNT(super_id)
FROM Employee;

-- select no of female employees who born after 1970
select count(sex)
where sex = 'F' AND birth_date > '1971-01-01';


Select AVG(Salary) From Employee;

Select SUM(salary) from Employee;

-- how many males and females are there --  GROUP BY
Select COUNT(sex), sex
from Employee
GROUP BY sex;


-- In GROUP BY whatever column you put next GROUP BY, it has to be the same
-- in select statement

--  calculating total sales of each employee -
select SUM(total_sales), emp_id 
from Works_with
GROUP BY emp_id
having SUM(total_sales) > 10000;

select concat(f_name, l_name) AS Full_name from Employee;





