CREATE DATABASE  EMPLOYEE;

USE EMPLOYEE;

-- CHECKS IF TABLE EXISTS
DROP TABLE IF EXISTS
    Departmant;


CREATE TABLE
    Department(
DeparmentNo INT PRIMARY KEY ,
DeparmantName VARCHAR(20) not null ,
DeparmantLoc VARCHAR(20) not null
);

INSERT INTO
    Department(DeparmentNo, DeparmantName, DeparmantLoc)
    VALUES (1,'Energy','USA');

DROP TABLE IF EXISTS  Department; -- CHECK IF TABLE EXISTS



-- USING THE DEFAULT KEYWORD
CREATE TABLE  Department(
    DepartmentNo INT PRIMARY KEY  AUTO_INCREMENT,
    DepartmentName VARCHAR(20) NOT NULL ,
    DepartmentLoc VARCHAR(50) DEFAULT 'NJ',
    DepartmentEstDate DATETIME DEFAULT NOW()
);

-- Targeting a Single Column
INSERT INTO Department (
DepartmentName
)
VALUES ('GridlAL'),('ACOUNTING'),('Townsinhj'),('TECH'),('Data Comuns');

SELECT  * FROM  employee.Department;

-- USING THE SELECT STATEMENT TO CREATE A NEW TABLE

CREATE TABLE DeparmentDemo AS SELECT * FROM employee.Department;

-- USING THE SELECT STATEMENT TO CREATE A NEW TABLE

SELECT  * FROM  DeparmentDemo;

-- INSERTING DATA INTO DEMO
INSERT INTO DeparmentDemo (
DepartmentName
)
VALUES ('GridlAL'),('ACOUNTING'),('Townsinhj'),('TECH'),('Data Comuns');

-- DELETING STUFF FROM THE TABLE

DELETE  FROM DeparmentDemo WHERE DepartmentLoc = 'NJ';


-- USING THE ALTER KEYWORD

ALTER TABLE DeparmentDemo RENAME TO Sydoul;

-- DEPARMENTDEMO  ===== Sydoul


use world;


select  * from   world.city where District ='Yamaguchi';