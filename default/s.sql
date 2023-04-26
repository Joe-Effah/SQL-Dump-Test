CREATE DATABASE Test ;

USE Test;

CREATE TABLE  ADS(
    HDU INT PRIMARY KEY AUTO_INCREMENT,
    SECT JSON
);

INSERT INTO ADS(HDU, SECT) VALUES
                                  (1,'{"Name": "Homer", "Gender": "Male"}'),

                                  (2,'["JAMES","Sickness"]');


CREATE TABLE  XED(
        ID INT PRIMARY KEY AUTO_INCREMENT,
        DATA blob
);

INSERT INTO XED( DATA) VALUES
('<html lang="en"><head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Forms</title>
</head>
<body>
  <div class="login">
    <h1>LOGIN PAGE</h1>
    <form action="#"id="form1">
    <div class="uname">
      <label for="name"> Username</label>
      <input type="text" name="name" id="username">
    </div>
    <div class="password">
       <label for="password">Password</label>
      <input type="password" name="password" id="passs" autocomplete pattern="[A-Za-z0-9]+">
    </div>
    <div class="rem">
    <input type="radio" name="remeber" id="radio">
      <label for="radio">Remeber Me </label>
    </div>
      <div class="button ">
    <button>Log In</button>
      </div>
  </form>
  </div>
</body>
</html>
');

SELECT  * FROM XED;