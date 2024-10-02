
--DDL (Data Definition Language):
--CREATE TABLE, ALTER TABLE, DROP TABLE

--DML (Data Manipulation Language):
--INSERT INTO, UPDATE, DELETE

-- Creating the TEACHER table (One teacher can manage multiple projects)
CREATE TABLE TEACHER (
    TeacherID INT PRIMARY KEY,
    TeacherName VARCHAR(100) NOT NULL,
    Department VARCHAR(50) NOT NULL
);

-- Creating the STUDENT table (A student can work on multiple projects)
CREATE TABLE STUDENT (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    EnrollmentDate DATE,
    Department VARCHAR(50) NOT NULL
);

-- Creating the PROJECT table (A project is managed by one teacher)
CREATE TABLE PROJECT (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100) NOT NULL,
    StartDate DATE,
    EndDate DATE,
    TeacherID INT,  -- Foreign key linking to TEACHER
    FOREIGN KEY (TeacherID) REFERENCES TEACHER(TeacherID)
);

-- Junction table to link STUDENT and PROJECT (Many-to-Many)
CREATE TABLE STUDENT_PROJECT (
    StudentID INT,  -- Foreign key linking to STUDENT
    ProjectID INT,  -- Foreign key linking to PROJECT
    PRIMARY KEY (StudentID, ProjectID),
    FOREIGN KEY (StudentID) REFERENCES STUDENT(StudentID),
    FOREIGN KEY (ProjectID) REFERENCES PROJECT(ProjectID)
);

--INSERTING DATA IN EACH TABLE
-- Insert into TEACHER table
INSERT INTO TEACHER (TeacherID, TeacherName, Department)
VALUES (1, 'John Doe', 'Computer Science');
 INSERT INTO TEACHER (TeacherID, TeacherName, Department)VALUES (2, 'Jane Shyaka', 'Mathematics');

 -- Insert into STUDENT table
INSERT INTO STUDENT (StudentID, StudentName, Email, EnrollmentDate, Department)
VALUES (101, 'Alice Johnson', 'alice@example.com', TO_DATE('2023-04-20','YYYY-MM-DD'),'Computer Science');

--Insert into PROJECT table
INSERT INTO STUDENT (StudentID, StudentName, Email, EnrollmentDate, Department)VALUES (102, 'Bob Brown', 'bob@example.com',TO_DATE('2023-01-15','YYYY-MM-DD'),'Mathematics');
 INSERT INTO PROJECT (ProjectID, ProjectName, StartDate, EndDate, TeacherID)VALUES (202,'Math Model Project',TO_DATE('2023-10-01','YYYY-MM-DD'),TO_DATE('2024-05-01','YYYY-MM-DD'),2);

 --Insert into STUDENT_PROJECT table
INSERT INTO STUDENT_PROJECT (StudentID, ProjectID)VALUES (101, 201);
SQL> INSERT INTO STUDENT_PROJECT (StudentID, ProjectID)VALUES (102, 202);


--UPDATE AND DELETING DATA 
--update
 UPDATE STUDENT SET Email = 'jalice@yahoo.com' WHERE StudentID = 101;

 --delete
 --creating a table to then delete its rows
 CREATE TABLE Employees (EmployeeID INT primary key,EMPAGE INT);
 delete from Employees;

 --ALTER AND DROP 
 --alter
  ALTER TABLE TEACHER ADD AGE INT NULL;

  --drop
  --creating an employees table and then drop it
   CREATE TABLE Employees ( EmployeeID INT PRIMARY KEY);
    DROP TABLE Employees;


    --PERFORMING JOINS
    --Join to get projects and the corresponding teacher’s name:
    SELECT P.ProjectName, T.TeacherName
   FROM PROJECT P
   JOIN TEACHER T ON P.TeacherID = T.TeacherID;

--DCL (Data Control Language):
--Grant or revoke permissions:
GRANT SELECT ON STUDENT TO SYS;
 REVOKE SELECT ON STUDENT FROM SYS;

 --TCL (Transaction Control Language):
--Commit :
 INSERT INTO STUDENT (StudentID, StudentName, Email, EnrollmentDate, Department)VALUES (103, 'Charlie Green', 'charlie@example.com', TO_DATE('2023-04-20','YYYY-MM-DD'),'PHYSICS');
 COMMIT;--SAVE CHANGES
