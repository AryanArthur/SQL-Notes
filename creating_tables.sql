INT - integers or whole numbers
DECIMAL(M,N) - M is number and N is fraction number, ex (10,4)
VARCHAR(N) - string of text, N is no of characters
BLOB - binary large objects, stores large data
DATE - 'YYYY-MM-DD'
TIMESTAMP DEFAULT NOW() - 'YYY-MM-DD HH:MM:SS' - used to record the exact time when deleting/updating




CREATE database girrafe;
Use girrafe;
show tables; -- to see tables in a database 
CREATE TABLE Student (
    student_id INT NOT NULL,
    name VARCHAR(50), 
    major VARCHAR(70) UNIQUE, -- UNIQUE means the entry in the row is cant be duplicated
    PRIMARY KEY(student_id)
);

DESCRIBE Student;

DROP TABLE Student;
ALTER TABLE Student ADD gpa DECIMAL(3,2);

ALTER TABLE Student DROP COLUMN gpa;

-- to delete a row from a table 
DELETE FROM Student
Where Student_id = 102;


INSERT INTO Student VALUES(1, 'Jack', 'Biology');

INSERT INTO Student(student_id, name) VALUES (2, 'Kate'); -- only specified to some column

CREATE TABLE Student (
    student_id INT AUTO_INCREMENT, -- it increments number automatically, we dont have to specify it while inserting values
    name VARCHAR(50), 
    major VARCHAR(70) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);

INSERT INTO Student VALUES('Loki', 'Biology');

UPDATE Student
SET major = 'Bio'
WHERE major = 'Biology';
--or you can type
WHERE Student_id = 4;

UPDATE Student
SET major = 'Biochemistry'
WHERE major = 'Bio' OR major = 'Chemistry';


DELETE FROM Student
WHERE name = 'Jack' AND major = 'Biiology';


SELECT * FROM Student
ORDER BY Name;


-- a way to drop tables which have foreign keys
SET foreign_key_checks = 0;
-- this is to set foreign key checks to off.
-- while its off the tables can be dropped/deleted.


-- Difference b/w ON DELETE SET NULL and ON DELETE CASCADE
ON DELETE SET NULL is used when the foreign keys in the table are set NULL
when deleting it.

ON DELETE CASCADE is used when the row which we want to delete has
primary key as their foreign key as well.
because the primary key cannot be SET NULL in a table.