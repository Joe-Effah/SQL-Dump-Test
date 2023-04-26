create database studapp;

use studapp;

create table studentInfo(
    Student_Id char(4),
    Student_FName varchar(20),
    Student_Grade char(1),
    Student_Age integer,
    Student_Course varchar(16),
    primary key (Student_FName)

);
# USING THE INSERT DML

INSERT INTO studapp.studentInfo(Student_Id, Student_FName, Student_Grade, Student_Age, Student_Course)
VALUES (
    '0001','Obed Danso','F',23,'English'
         );

select * from studapp.studentInfo;




-- Exercise 1
CREATE DATABASE PACKET_ONLINE_SHOP;

USE PACKET_ONLINE_SHOP;


CREATE TABLE CUSTOMERS(
    CUSTOMER_ID INT,
    FIRSTNAME VARCHAR(30),
    MIDDLENAME VARCHAR(30),
    LASTNAME  VARCHAR(30),
    HOMEADDRESS VARCHAR(35),
    EMAIL VARCHAR(19),
    PHONE VARCHAR(16),
    NOTES VARCHAR(60),
    PRIMARY KEY (CUSTOMER_ID)

);


# INSERTING VALUES INTO CUSTOMERS TABLE;

INSERT INTO PACKET_ONLINE_SHOP.CUSTOMERS(CUSTOMER_ID, FIRSTNAME, MIDDLENAME, LASTNAME, HOMEADDRESS, EMAIL, PHONE, NOTES)
VALUES (1,'Joe','Greg','Smith','2356Elm St','joesmith@shwet.com','(310)555-1212','Always gets products home delivered'),
       (2,'Grace','Murray','Hopper','123 Complication Street','gmhopper@fuw46.com','(818)555-3678','Compiler Pioneer'),
       (3,'Ada','','Lovelance','22 Algorithm Way','adalove@faf.gov','(717)555-3457','First Software Engineer'),
       (4,'Joseph','Force','Crater','1313 MokingBird Lane','judge@deef.com','(212)555-5678','Works Everyday'),
       (5,'Jacqueline','Jane','Cochran','1701 FlightSpeed Avenue','JackieCoc@jrrt.gov','(717)555-3435','Reaseacher');









SELECT * FROM PACKET_ONLINE_SHOP.CUSTOMERS;



CREATE DATABASE IF NOT EXISTS PACKT_ONLINE_SHOP;
USE PACKT_ONLINE_SHOP;
CREATE TABLE Customers
(
 CustomerID INT NOT NULL AUTO_INCREMENT,
 FirstName CHAR(50) NOT NULL,
 LastName CHAR(50) NOT NULL,
 Address CHAR(250) NULL,
 Email CHAR(200) NULL,
 Phone CHAR(50) NULL,
 Notes VARCHAR(750) NULL,
 BalanceNotes VARCHAR(750) NULL,
 PRIMARY KEY (CustomerID)
);
CREATE TABLE Orders
(
 OrderID INT NOT NULL AUTO_INCREMENT,
 CustomerID INT NOT NULL,
 OrderNumber CHAR(50) NOT NULL,
 OrderDate DATETIME NOT NULL,
 ShipmentDate DATETIME NULL,
 OrderStatus CHAR(10) NULL,
 Notes VARCHAR(750) NULL,
PRIMARY KEY (OrderID),
-- CREATING FORIEGN KEY
FOREIGN KEY FK_Customer_CustomerID(CustomerID) REFERENCES Customers(CustomerID)
)
