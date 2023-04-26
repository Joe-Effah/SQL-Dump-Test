
# CREATE USER 'peterHerbal@localhost'@'localhost' IDENTIFIED  BY 'password';

# SELECT user FROM mysql.user;

SELECT user,host FROM mysql.user;

# SHOW GRANTS FOR 'peterHerbal@localhost'@'localhost';

# CREATE DATABASE companyName(
#
#     );

select * from information_schema.SCHEMATA

USE peterherbal;