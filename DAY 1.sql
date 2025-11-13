/* DDL Data Defination Language */
/* Create, Alter, Drop, Truncate */

USE rise_and_conquer;

Create table hrms(
emp_id int primary key,
name varchar(255),
dob date
);

ALTER TABLE hrms
ADD COLUMN DOJ DATE AFTER DOB;

DROP TABLE HRMS;

/* DML Data Manipulation Language */
/* Select, Insert, Update, Delete */

SELECT * FROM hrms;

INSERT INTO hrms(emp_id, name, dob, doj) 
values(1, "Nikhil", '1999-01-10', '2023-09-18');

UPDATE hrms
SET DOB = '1999-10-01'
WHERE EMP_ID = 1;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM HRMS WHERE EMP_ID = 1;

/* DCL Data Control Language */
/* Grant and Revoke */
/* Purpose: Manage access and permissions for users.*/

GRANT SELECT, INSERT ON HRMS TO root@localhost;
REVOKE SELECT ON HRMS FROM root@localhost;

/* TCL Transaction Query Language */
/* Commit, Rollback, Savepoint */

/* Purpose: Control transactions — group of DML operations that can be committed or rolled back. */

START TRANSACTION;

INSERT INTO hrms(emp_id, name, dob, doj) 
values(2, "ROHAN", '2000-01-10', '2023-05-18');

INSERT INTO hrms(emp_id, name, dob, doj) 
values(3, "YASH", '2003-01-01', '2024-05-20');

COMMIT;

ROLLBACK;

SAVEPOINT Before_Update;

UPDATE HRMS
SET NAME = "ROSHAN"
WHERE EMP_ID = 3;

ROLLBACK TO Before_Update;








