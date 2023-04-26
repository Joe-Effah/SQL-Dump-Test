create database  experiment;
use experiment;

create table Jinks(
    Col1 INT AUTO_INCREMENT  primary key ,
    COL2 VARCHAR(40) DEFAULT  4,
    COL3 VARCHAR(50) DEFAULT 'Jake Tran',
    COl4  DATETIME    DEFAULT  NOW()
);

INSERT INTO Jinks (COL2) VALUES ('Hyper'),('Gragon'),('SyDole'),('MFTS'),('OVERLAOP'),('LDAP');
INSERT INTO jinks(COL1, COL2, COL3, COL4) VALUES

