select
    'data source=' + @@servername +
    ';initial catalog=' + db_name() +
    case type_desc
        when 'WINDOWS_LOGIN' 
            then ';trusted_connection=true'
        else
            ';user id=' + suser_name() + ';password=<<YourPassword>>'
    end
    as ConnectionString
from sys.server_principals
where name = suser_name()

create database  testbuild;
go
 use testbuild;
 go


create table build1(
_id int primary key ,
_user varchar(50),
_pass varchar(30),
_dateLog datetime
);

INSERT INTO  build1 (_id,_user,_pass,_dateLog)VALUES(1,'JAMES','PASSWORD','12/29/2022 10:54:08 AM');

SELECT * FROM build1;