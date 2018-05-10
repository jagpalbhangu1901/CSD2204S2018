MariaDB [(none)]> USE CSD2204S18;
Database changed
MariaDB [CSD2204S18]> CREATE TABLE Customer(
    -> custId VARCHAR(5) PRIMARY KEY,
    -> name VARCHAR(50),
    -> nick name VARCHAR(10),
    -> city VARCHAR(20),
    -> Postal Code VARCHAR(10),
    -> age INTEGER(3));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'name VARCHAR(10),
city VARCHAR(20),
Postal Code VARCHAR(10),
age INTEGER(3))' at line 4
MariaDB [CSD2204S18]> CREATE TABLE Customer(
    -> custId VARCHAR(5) PRIMARY KEY,
    -> name VARCHAR(50),
    -> nick name VARCHAR(10),
    -> city VARCHAR(20),
    -> Postal Code VARCHAR(10),
    -> age INTEGER(3),);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'name VARCHAR(10),
city VARCHAR(20),
Postal Code VARCHAR(10),
age INTEGER(3),)' at line 4
MariaDB [CSD2204S18]> CREATE TABLE Customer(
    ->     -> custId VARCHAR(5) PRIMARY KEY,
    ->     -> name VARCHAR(50),
    ->     -> nickname VARCHAR(10),
    ->     -> city VARCHAR(20),
    ->     -> postalCode VARCHAR(10),
    ->     -> age INTEGER(3));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '-> custId VARCHAR(5) PRIMARY KEY,
    -> name VARCHAR(50),
    -> nickname VARCH' at line 2
MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| csd2204s18         |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.00 sec)

MariaDB [(none)]> 
MariaDB [(none)]> 
MariaDB [(none)]> CREATE TABLE Customer(
    ->     custId VARCHAR(5) PRIMARY KEY,
    ->     name VARCHAR(50),
    ->     nickname VARCHAR(10),
    ->     city VARCHAR(20),
    ->     postalCode VARCHAR(10),
    ->     age INTEGER(3));
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> CREATE TABLE Customer(
    ->     custId VARCHAR(5) PRIMARY KEY,
    ->     name VARCHAR(50),
    ->     nickname VARCHAR(10),
    ->     city VARCHAR(20),
    ->     postalCode VARCHAR(10),
    ->     age INTEGER(3));
Query OK, 0 rows affected (0.20 sec)

MariaDB [csd2204s18]> DESC Customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

MariaDB [csd2204s18]> INSERT INTO Customer VALUES('CO1','ASHLEY','ASH','WDC','321200',34);
Query OK, 1 row affected (0.12 sec)

MariaDB [csd2204s18]> INSERT INTO Customer VALUES('CO1','ASHLEY','ASH','WDC','321200',34);
ERROR 1062 (23000): Duplicate entry 'CO1' for key 'PRIMARY'
MariaDB [csd2204s18]> INSERT INTO Customer VALUES('CO2','BOB MARLEY','BM','TORONTO','100100',23);
Query OK, 1 row affected (0.14 sec)

MariaDB [csd2204s18]> INSERT INTO Customer VALUES('CO3','CHERLIS THERON','CHER','NEW YORK','120134',20);
Query OK, 1 row affected (0.14 sec)

MariaDB [csd2204s18]> INSERT INTO Customer VALUES('CO4','DENIAL JACK','DJ','BRAZIL','341020',25);
Query OK, 1 row affected (0.37 sec)

MariaDB [csd2204s18]> INSERT INTO Customer VALUES('CO5','DONNA NEWMAN','NEW','TORONTO','130120',50);
Query OK, 1 row affected (0.12 sec)

MariaDB [csd2204s18]> INSERT INTO Customer VALUES('CO6','ESTON M.','M.','TORONTO','201023',65);
Query OK, 1 row affected (0.13 sec)

MariaDB [csd2204s18]> INSERT INTO Customer VALUES('CO7','BOBBY CHACKO','CHAC','NEW YORK','320300',70);
Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> INSERT INTO Customer VALUES('CO8','ASHKO CHARLES','AK','USA','421044',72);
Query OK, 1 row affected (0.15 sec)

MariaDB [csd2204s18]> INSERT INTO Customer VALUES('CO9','TONY SPECIAL','SPECIE','GTA','418921',62);
Query OK, 1 row affected (0.12 sec)

MariaDB [csd2204s18]> INSERT INTO Customer VALUES('C10','JACK SP','SPARROW','JERSEY','102301',35);
Query OK, 1 row affected (0.12 sec)

MariaDB [csd2204s18]> SELECT *FROM Customer;
+--------+----------------+----------+----------+------------+------+
| custId | name           | nickname | city     | postalCode | age  |
+--------+----------------+----------+----------+------------+------+
| C10    | JACK SP        | SPARROW  | JERSEY   | 102301     |   35 |
| CO1    | ASHLEY         | ASH      | WDC      | 321200     |   34 |
| CO2    | BOB MARLEY     | BM       | TORONTO  | 100100     |   23 |
| CO3    | CHERLIS THERON | CHER     | NEW YORK | 120134     |   20 |
| CO4    | DENIAL JACK    | DJ       | BRAZIL   | 341020     |   25 |
| CO5    | DONNA NEWMAN   | NEW      | TORONTO  | 130120     |   50 |
| CO6    | ESTON M.       | M.       | TORONTO  | 201023     |   65 |
| CO7    | BOBBY CHACKO   | CHAC     | NEW YORK | 320300     |   70 |
| CO8    | ASHKO CHARLES  | AK       | USA      | 421044     |   72 |
| CO9    | TONY SPECIAL   | SPECIE   | GTA      | 418921     |   62 |
+--------+----------------+----------+----------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,nickname FROM Customer;
+----------------+----------+
| name           | nickname |
+----------------+----------+
| JACK SP        | SPARROW  |
| ASHLEY         | ASH      |
| BOB MARLEY     | BM       |
| CHERLIS THERON | CHER     |
| DENIAL JACK    | DJ       |
| DONNA NEWMAN   | NEW      |
| ESTON M.       | M.       |
| BOBBY CHACKO   | CHAC     |
| ASHKO CHARLES  | AK       |
| TONY SPECIAL   | SPECIE   |
+----------------+----------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT city,postalcode FROM Customer;
+----------+------------+
| city     | postalcode |
+----------+------------+
| JERSEY   | 102301     |
| WDC      | 321200     |
| TORONTO  | 100100     |
| NEW YORK | 120134     |
| BRAZIL   | 341020     |
| TORONTO  | 130120     |
| TORONTO  | 201023     |
| NEW YORK | 320300     |
| USA      | 421044     |
| GTA      | 418921     |
+----------+------------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer WHERE name = 'ASHLEY';
+--------+--------+----------+------+------------+------+
| custId | name   | nickname | city | postalCode | age  |
+--------+--------+----------+------+------------+------+
| CO1    | ASHLEY | ASH      | WDC  | 321200     |   34 |
+--------+--------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer WHERE nickname = 'AK;
    '> SELECT * FROM Customer WHERE nickname = 'AK';
    '> ;
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'AK';
;
'' at line 1
MariaDB [csd2204s18]> SELECT * FROM Customer WHERE nickname = 'AK';
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| CO8    | ASHKO CHARLES | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> SELECT name,city FROM Customer WHERE name = 'ESTON M.';
+----------+---------+
| name     | city    |
+----------+---------+
| ESTON M. | TORONTO |
+----------+---------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> SELECT name,city FROM Customer WHERE city = 'Toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| BOB MARLEY   | TORONTO |
| DONNA NEWMAN | TORONTO |
| ESTON M.     | TORONTO |
+--------------+---------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT name,city FROM Customer WHERE city != 'Toronto';
+----------------+----------+
| name           | city     |
+----------------+----------+
| JACK SP        | JERSEY   |
| ASHLEY         | WDC      |
| CHERLIS THERON | NEW YORK |
| DENIAL JACK    | BRAZIL   |
| BOBBY CHACKO   | NEW YORK |
| ASHKO CHARLES  | USA      |
| TONY SPECIAL   | GTA      |
+----------------+----------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT name,city,age FROM Customer WHERE age = 50;
+--------------+---------+------+
| name         | city    | age  |
+--------------+---------+------+
| DONNA NEWMAN | TORONTO |   50 |
+--------------+---------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> SELECT name,city,age FROM Customer WHERE age<50;
+----------------+----------+------+
| name           | city     | age  |
+----------------+----------+------+
| JACK SP        | JERSEY   |   35 |
| ASHLEY         | WDC      |   34 |
| BOB MARLEY     | TORONTO  |   23 |
| CHERLIS THERON | NEW YORK |   20 |
| DENIAL JACK    | BRAZIL   |   25 |
+----------------+----------+------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT name,city,age FROM Customer WHERE age>50;
+---------------+----------+------+
| name          | city     | age  |
+---------------+----------+------+
| ESTON M.      | TORONTO  |   65 |
| BOBBY CHACKO  | NEW YORK |   70 |
| ASHKO CHARLES | USA      |   72 |
| TONY SPECIAL  | GTA      |   62 |
+---------------+----------+------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer WHERE name > 'ASHLEY';
+--------+----------------+----------+----------+------------+------+
| custId | name           | nickname | city     | postalCode | age  |
+--------+----------------+----------+----------+------------+------+
| C10    | JACK SP        | SPARROW  | JERSEY   | 102301     |   35 |
| CO2    | BOB MARLEY     | BM       | TORONTO  | 100100     |   23 |
| CO3    | CHERLIS THERON | CHER     | NEW YORK | 120134     |   20 |
| CO4    | DENIAL JACK    | DJ       | BRAZIL   | 341020     |   25 |
| CO5    | DONNA NEWMAN   | NEW      | TORONTO  | 130120     |   50 |
| CO6    | ESTON M.       | M.       | TORONTO  | 201023     |   65 |
| CO7    | BOBBY CHACKO   | CHAC     | NEW YORK | 320300     |   70 |
| CO9    | TONY SPECIAL   | SPECIE   | GTA      | 418921     |   62 |
+--------+----------------+----------+----------+------------+------+
8 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT name,city FROM Customer WHERE name ='ASHLEY' OR city = 'TORONTO';
+--------------+---------+
| name         | city    |
+--------------+---------+
| ASHLEY       | WDC     |
| BOB MARLEY   | TORONTO |
| DONNA NEWMAN | TORONTO |
| ESTON M.     | TORONTO |
+--------------+---------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT name,city FROM Customer WHERE city ='NEW YORK' OR city = 'TORONTO';
+----------------+----------+
| name           | city     |
+----------------+----------+
| BOB MARLEY     | TORONTO  |
| CHERLIS THERON | NEW YORK |
| DONNA NEWMAN   | TORONTO  |
| ESTON M.       | TORONTO  |
| BOBBY CHACKO   | NEW YORK |
+----------------+----------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT name,age FROM Customer WHERE city = 'TORONTO' AND age > 50 ;
+----------+------+
| name     | age  |
+----------+------+
| ESTON M. |   65 |
+----------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer WHERE city = 'TORONTO';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| CO2    | BOB MARLEY   | BM       | TORONTO | 100100     |   23 |
| CO5    | DONNA NEWMAN | NEW      | TORONTO | 130120     |   50 |
| CO6    | ESTON M.     | M.       | TORONTO | 201023     |   65 |
+--------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT COUNT (*) FROM Customer WHERE city = 'TORONTO';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '*) FROM Customer WHERE city = 'TORONTO'' at line 1
MariaDB [csd2204s18]> SELECT COUNT(*) FROM Customer WHERE city = 'TORONTO';
+----------+
| COUNT(*) |
+----------+
|        3 |
+----------+
1 row in set (0.11 sec)

MariaDB [csd2204s18]> SELECT COUNT(*) "No of customers in toronto" FROM Customer WHERE city = 'TORONTO';
+----------------------------+
| No of customers in toronto |
+----------------------------+
|                          3 |
+----------------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> SELECT COUNT(*) "No of customers older than 50" FROM Customer WHERE age > 50;
+-------------------------------+
| No of customers older than 50 |
+-------------------------------+
|                             4 |
+-------------------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer WHERE age > 30 AND age < 70;
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| C10    | JACK SP      | SPARROW  | JERSEY  | 102301     |   35 |
| CO1    | ASHLEY       | ASH      | WDC     | 321200     |   34 |
| CO5    | DONNA NEWMAN | NEW      | TORONTO | 130120     |   50 |
| CO6    | ESTON M.     | M.       | TORONTO | 201023     |   65 |
| CO9    | TONY SPECIAL | SPECIE   | GTA     | 418921     |   62 |
+--------+--------------+----------+---------+------------+------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer WHERE age BETWEEN 30 AND 70;
+--------+--------------+----------+----------+------------+------+
| custId | name         | nickname | city     | postalCode | age  |
+--------+--------------+----------+----------+------------+------+
| C10    | JACK SP      | SPARROW  | JERSEY   | 102301     |   35 |
| CO1    | ASHLEY       | ASH      | WDC      | 321200     |   34 |
| CO5    | DONNA NEWMAN | NEW      | TORONTO  | 130120     |   50 |
| CO6    | ESTON M.     | M.       | TORONTO  | 201023     |   65 |
| CO7    | BOBBY CHACKO | CHAC     | NEW YORK | 320300     |   70 |
| CO9    | TONY SPECIAL | SPECIE   | GTA      | 418921     |   62 |
+--------+--------------+----------+----------+------------+------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer WHERE age NOT BETWEEN 30 AND 70;
+--------+----------------+----------+----------+------------+------+
| custId | name           | nickname | city     | postalCode | age  |
+--------+----------------+----------+----------+------------+------+
| CO2    | BOB MARLEY     | BM       | TORONTO  | 100100     |   23 |
| CO3    | CHERLIS THERON | CHER     | NEW YORK | 120134     |   20 |
| CO4    | DENIAL JACK    | DJ       | BRAZIL   | 341020     |   25 |
| CO8    | ASHKO CHARLES  | AK       | USA      | 421044     |   72 |
+--------+----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT name, max(age) FROM Customer; 
+---------+----------+
| name    | max(age) |
+---------+----------+
| JACK SP |       72 |
+---------+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> SELECT max(age) FROM Customer; 
+----------+
| max(age) |
+----------+
|       72 |
+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> SELECT min(age) FROM Customer; 
+----------+
| min(age) |
+----------+
|       20 |
+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> SELECT avg(age) FROM Customer; 
+----------+
| avg(age) |
+----------+
|  45.6000 |
+----------+
1 row in set (0.03 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer WHERE name LIKE 'B%'; 
+--------+--------------+----------+----------+------------+------+
| custId | name         | nickname | city     | postalCode | age  |
+--------+--------------+----------+----------+------------+------+
| CO2    | BOB MARLEY   | BM       | TORONTO  | 100100     |   23 |
| CO7    | BOBBY CHACKO | CHAC     | NEW YORK | 320300     |   70 |
+--------+--------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer WHERE name NOT LIKE 'B%'; 
+--------+----------------+----------+----------+------------+------+
| custId | name           | nickname | city     | postalCode | age  |
+--------+----------------+----------+----------+------------+------+
| C10    | JACK SP        | SPARROW  | JERSEY   | 102301     |   35 |
| CO1    | ASHLEY         | ASH      | WDC      | 321200     |   34 |
| CO3    | CHERLIS THERON | CHER     | NEW YORK | 120134     |   20 |
| CO4    | DENIAL JACK    | DJ       | BRAZIL   | 341020     |   25 |
| CO5    | DONNA NEWMAN   | NEW      | TORONTO  | 130120     |   50 |
| CO6    | ESTON M.       | M.       | TORONTO  | 201023     |   65 |
| CO8    | ASHKO CHARLES  | AK       | USA      | 421044     |   72 |
| CO9    | TONY SPECIAL   | SPECIE   | GTA      | 418921     |   62 |
+--------+----------------+----------+----------+------------+------+
8 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer WHERE name NOT LIKE '%N'; 
+--------+---------------+----------+----------+------------+------+
| custId | name          | nickname | city     | postalCode | age  |
+--------+---------------+----------+----------+------------+------+
| C10    | JACK SP       | SPARROW  | JERSEY   | 102301     |   35 |
| CO1    | ASHLEY        | ASH      | WDC      | 321200     |   34 |
| CO2    | BOB MARLEY    | BM       | TORONTO  | 100100     |   23 |
| CO4    | DENIAL JACK   | DJ       | BRAZIL   | 341020     |   25 |
| CO6    | ESTON M.      | M.       | TORONTO  | 201023     |   65 |
| CO7    | BOBBY CHACKO  | CHAC     | NEW YORK | 320300     |   70 |
| CO8    | ASHKO CHARLES | AK       | USA      | 421044     |   72 |
| CO9    | TONY SPECIAL  | SPECIE   | GTA      | 418921     |   62 |
+--------+---------------+----------+----------+------------+------+
8 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer WHERE name LIKE '%N'; 
+--------+----------------+----------+----------+------------+------+
| custId | name           | nickname | city     | postalCode | age  |
+--------+----------------+----------+----------+------------+------+
| CO3    | CHERLIS THERON | CHER     | NEW YORK | 120134     |   20 |
| CO5    | DONNA NEWMAN   | NEW      | TORONTO  | 130120     |   50 |
+--------+----------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer WHERE city LIKE '%N'; 
Empty set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer WHERE city LIKE 'N%'; 
+--------+----------------+----------+----------+------------+------+
| custId | name           | nickname | city     | postalCode | age  |
+--------+----------------+----------+----------+------------+------+
| CO3    | CHERLIS THERON | CHER     | NEW YORK | 120134     |   20 |
| CO7    | BOBBY CHACKO   | CHAC     | NEW YORK | 320300     |   70 |
+--------+----------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer WHERE name LIKE '__N%';  
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| CO4    | DENIAL JACK  | DJ       | BRAZIL  | 341020     |   25 |
| CO5    | DONNA NEWMAN | NEW      | TORONTO | 130120     |   50 |
| CO9    | TONY SPECIAL | SPECIE   | GTA     | 418921     |   62 |
+--------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer WHERE name LIKE '__N_A%';  
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| CO4    | DENIAL JACK  | DJ       | BRAZIL  | 341020     |   25 |
| CO5    | DONNA NEWMAN | NEW      | TORONTO | 130120     |   50 |
+--------+--------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer LIMIT 4;  
+--------+----------------+----------+----------+------------+------+
| custId | name           | nickname | city     | postalCode | age  |
+--------+----------------+----------+----------+------------+------+
| C10    | JACK SP        | SPARROW  | JERSEY   | 102301     |   35 |
| CO1    | ASHLEY         | ASH      | WDC      | 321200     |   34 |
| CO2    | BOB MARLEY     | BM       | TORONTO  | 100100     |   23 |
| CO3    | CHERLIS THERON | CHER     | NEW YORK | 120134     |   20 |
+--------+----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer WHERE age ;  
+--------+----------------+----------+----------+------------+------+
| custId | name           | nickname | city     | postalCode | age  |
+--------+----------------+----------+----------+------------+------+
| C10    | JACK SP        | SPARROW  | JERSEY   | 102301     |   35 |
| CO1    | ASHLEY         | ASH      | WDC      | 321200     |   34 |
| CO2    | BOB MARLEY     | BM       | TORONTO  | 100100     |   23 |
| CO3    | CHERLIS THERON | CHER     | NEW YORK | 120134     |   20 |
| CO4    | DENIAL JACK    | DJ       | BRAZIL   | 341020     |   25 |
| CO5    | DONNA NEWMAN   | NEW      | TORONTO  | 130120     |   50 |
| CO6    | ESTON M.       | M.       | TORONTO  | 201023     |   65 |
| CO7    | BOBBY CHACKO   | CHAC     | NEW YORK | 320300     |   70 |
| CO8    | ASHKO CHARLES  | AK       | USA      | 421044     |   72 |
| CO9    | TONY SPECIAL   | SPECIE   | GTA      | 418921     |   62 |
+--------+----------------+----------+----------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer WHERE age =20,25,65,72;  
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '25,65,72' at line 1
MariaDB [csd2204s18]> SELECT * FROM Customer WHERE age IN (20, 25, 65, 72);  
+--------+----------------+----------+----------+------------+------+
| custId | name           | nickname | city     | postalCode | age  |
+--------+----------------+----------+----------+------------+------+
| CO3    | CHERLIS THERON | CHER     | NEW YORK | 120134     |   20 |
| CO4    | DENIAL JACK    | DJ       | BRAZIL   | 341020     |   25 |
| CO6    | ESTON M.       | M.       | TORONTO  | 201023     |   65 |
| CO8    | ASHKO CHARLES  | AK       | USA      | 421044     |   72 |
+--------+----------------+----------+----------+------------+------+
4 rows in set (0.03 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer WHERE age NOT IN (20, 25, 65, 72);  
+--------+--------------+----------+----------+------------+------+
| custId | name         | nickname | city     | postalCode | age  |
+--------+--------------+----------+----------+------------+------+
| C10    | JACK SP      | SPARROW  | JERSEY   | 102301     |   35 |
| CO1    | ASHLEY       | ASH      | WDC      | 321200     |   34 |
| CO2    | BOB MARLEY   | BM       | TORONTO  | 100100     |   23 |
| CO5    | DONNA NEWMAN | NEW      | TORONTO  | 130120     |   50 |
| CO7    | BOBBY CHACKO | CHAC     | NEW YORK | 320300     |   70 |
| CO9    | TONY SPECIAL | SPECIE   | GTA      | 418921     |   62 |
+--------+--------------+----------+----------+------------+------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer WHERE city IN ('TORONTO', 'GTA', 'USA', 'WDC');  
+--------+---------------+----------+---------+------------+------+
| custId | name          | nickname | city    | postalCode | age  |
+--------+---------------+----------+---------+------------+------+
| CO1    | ASHLEY        | ASH      | WDC     | 321200     |   34 |
| CO2    | BOB MARLEY    | BM       | TORONTO | 100100     |   23 |
| CO5    | DONNA NEWMAN  | NEW      | TORONTO | 130120     |   50 |
| CO6    | ESTON M.      | M.       | TORONTO | 201023     |   65 |
| CO8    | ASHKO CHARLES | AK       | USA     | 421044     |   72 |
| CO9    | TONY SPECIAL  | SPECIE   | GTA     | 418921     |   62 |
+--------+---------------+----------+---------+------------+------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT DISTINCT(city) 'Unique City' FROM Customer;
+-------------+
| Unique City |
+-------------+
| JERSEY      |
| WDC         |
| TORONTO     |
| NEW YORK    |
| BRAZIL      |
| USA         |
| GTA         |
+-------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT DISTINCT(city) AS 'Unique City' FROM Customer;
+-------------+
| Unique City |
+-------------+
| JERSEY      |
| WDC         |
| TORONTO     |
| NEW YORK    |
| BRAZIL      |
| USA         |
| GTA         |
+-------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT COUNT(DISTINCT(city)) AS 'Unique City' FROM Customer;
+-------------+
| Unique City |
+-------------+
|           7 |
+-------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer ORDER by name;
+--------+----------------+----------+----------+------------+------+
| custId | name           | nickname | city     | postalCode | age  |
+--------+----------------+----------+----------+------------+------+
| CO8    | ASHKO CHARLES  | AK       | USA      | 421044     |   72 |
| CO1    | ASHLEY         | ASH      | WDC      | 321200     |   34 |
| CO2    | BOB MARLEY     | BM       | TORONTO  | 100100     |   23 |
| CO7    | BOBBY CHACKO   | CHAC     | NEW YORK | 320300     |   70 |
| CO3    | CHERLIS THERON | CHER     | NEW YORK | 120134     |   20 |
| CO4    | DENIAL JACK    | DJ       | BRAZIL   | 341020     |   25 |
| CO5    | DONNA NEWMAN   | NEW      | TORONTO  | 130120     |   50 |
| CO6    | ESTON M.       | M.       | TORONTO  | 201023     |   65 |
| C10    | JACK SP        | SPARROW  | JERSEY   | 102301     |   35 |
| CO9    | TONY SPECIAL   | SPECIE   | GTA      | 418921     |   62 |
+--------+----------------+----------+----------+------------+------+
10 rows in set (0.31 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer ORDER by name ASC;
+--------+----------------+----------+----------+------------+------+
| custId | name           | nickname | city     | postalCode | age  |
+--------+----------------+----------+----------+------------+------+
| CO8    | ASHKO CHARLES  | AK       | USA      | 421044     |   72 |
| CO1    | ASHLEY         | ASH      | WDC      | 321200     |   34 |
| CO2    | BOB MARLEY     | BM       | TORONTO  | 100100     |   23 |
| CO7    | BOBBY CHACKO   | CHAC     | NEW YORK | 320300     |   70 |
| CO3    | CHERLIS THERON | CHER     | NEW YORK | 120134     |   20 |
| CO4    | DENIAL JACK    | DJ       | BRAZIL   | 341020     |   25 |
| CO5    | DONNA NEWMAN   | NEW      | TORONTO  | 130120     |   50 |
| CO6    | ESTON M.       | M.       | TORONTO  | 201023     |   65 |
| C10    | JACK SP        | SPARROW  | JERSEY   | 102301     |   35 |
| CO9    | TONY SPECIAL   | SPECIE   | GTA      | 418921     |   62 |
+--------+----------------+----------+----------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer ORDER by name DESC;
+--------+----------------+----------+----------+------------+------+
| custId | name           | nickname | city     | postalCode | age  |
+--------+----------------+----------+----------+------------+------+
| CO9    | TONY SPECIAL   | SPECIE   | GTA      | 418921     |   62 |
| C10    | JACK SP        | SPARROW  | JERSEY   | 102301     |   35 |
| CO6    | ESTON M.       | M.       | TORONTO  | 201023     |   65 |
| CO5    | DONNA NEWMAN   | NEW      | TORONTO  | 130120     |   50 |
| CO4    | DENIAL JACK    | DJ       | BRAZIL   | 341020     |   25 |
| CO3    | CHERLIS THERON | CHER     | NEW YORK | 120134     |   20 |
| CO7    | BOBBY CHACKO   | CHAC     | NEW YORK | 320300     |   70 |
| CO2    | BOB MARLEY     | BM       | TORONTO  | 100100     |   23 |
| CO1    | ASHLEY         | ASH      | WDC      | 321200     |   34 |
| CO8    | ASHKO CHARLES  | AK       | USA      | 421044     |   72 |
+--------+----------------+----------+----------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer ORDER by age ASC;
+--------+----------------+----------+----------+------------+------+
| custId | name           | nickname | city     | postalCode | age  |
+--------+----------------+----------+----------+------------+------+
| CO3    | CHERLIS THERON | CHER     | NEW YORK | 120134     |   20 |
| CO2    | BOB MARLEY     | BM       | TORONTO  | 100100     |   23 |
| CO4    | DENIAL JACK    | DJ       | BRAZIL   | 341020     |   25 |
| CO1    | ASHLEY         | ASH      | WDC      | 321200     |   34 |
| C10    | JACK SP        | SPARROW  | JERSEY   | 102301     |   35 |
| CO5    | DONNA NEWMAN   | NEW      | TORONTO  | 130120     |   50 |
| CO9    | TONY SPECIAL   | SPECIE   | GTA      | 418921     |   62 |
| CO6    | ESTON M.       | M.       | TORONTO  | 201023     |   65 |
| CO7    | BOBBY CHACKO   | CHAC     | NEW YORK | 320300     |   70 |
| CO8    | ASHKO CHARLES  | AK       | USA      | 421044     |   72 |
+--------+----------------+----------+----------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer ORDER by age DESC;
+--------+----------------+----------+----------+------------+------+
| custId | name           | nickname | city     | postalCode | age  |
+--------+----------------+----------+----------+------------+------+
| CO8    | ASHKO CHARLES  | AK       | USA      | 421044     |   72 |
| CO7    | BOBBY CHACKO   | CHAC     | NEW YORK | 320300     |   70 |
| CO6    | ESTON M.       | M.       | TORONTO  | 201023     |   65 |
| CO9    | TONY SPECIAL   | SPECIE   | GTA      | 418921     |   62 |
| CO5    | DONNA NEWMAN   | NEW      | TORONTO  | 130120     |   50 |
| C10    | JACK SP        | SPARROW  | JERSEY   | 102301     |   35 |
| CO1    | ASHLEY         | ASH      | WDC      | 321200     |   34 |
| CO4    | DENIAL JACK    | DJ       | BRAZIL   | 341020     |   25 |
| CO2    | BOB MARLEY     | BM       | TORONTO  | 100100     |   23 |
| CO3    | CHERLIS THERON | CHER     | NEW YORK | 120134     |   20 |
+--------+----------------+----------+----------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM Customer ORDER by age DESC LIMIT 1;
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| CO8    | ASHKO CHARLES | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM (SELECT FROM Customer ORDER by age DESC LIMIT 2) AS t ORDER BY age ASC LIMIT 1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM Customer ORDER by age DESC LIMIT 2) AS t ORDER BY age ASC LIMIT 1' at line 1
MariaDB [csd2204s18]>  SELECT * FROM (SELECT FROM Customer ORDER by age DESC LIMIT 2) AS t ORDER BY age ASC LIMIT 1 ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM Customer ORDER by age DESC LIMIT 2) AS t ORDER BY age ASC LIMIT 1' at line 1
MariaDB [csd2204s18]> SELECT * FROM Customer ORDER by age DESC LIMIT 2;
+--------+---------------+----------+----------+------------+------+
| custId | name          | nickname | city     | postalCode | age  |
+--------+---------------+----------+----------+------------+------+
| CO8    | ASHKO CHARLES | AK       | USA      | 421044     |   72 |
| CO7    | BOBBY CHACKO  | CHAC     | NEW YORK | 320300     |   70 |
+--------+---------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]>  SELECT * FROM (SELECT FROM Customer ORDER by age DESC LIMIT 2) AS t ORDER BY age ASC LIMIT 1 ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM Customer ORDER by age DESC LIMIT 2) AS t ORDER BY age ASC LIMIT 1' at line 1
MariaDB [csd2204s18]>  SELECT * FROM (SELECT * FROM Customer ORDER by age DESC LIMIT 2) AS t ORDER BY age ASC LIMIT 1 ;
+--------+--------------+----------+----------+------------+------+
| custId | name         | nickname | city     | postalCode | age  |
+--------+--------------+----------+----------+------------+------+
| CO7    | BOBBY CHACKO | CHAC     | NEW YORK | 320300     |   70 |
+--------+--------------+----------+----------+------------+------+
1 row in set (0.10 sec)

MariaDB [csd2204s18]>  SELECT * FROM (SELECT * FROM Customer ORDER by age ASC LIMIT 2) AS t ORDER BY age DESC LIMIT 1 ;
+--------+------------+----------+---------+------------+------+
| custId | name       | nickname | city    | postalCode | age  |
+--------+------------+----------+---------+------------+------+
| CO2    | BOB MARLEY | BM       | TORONTO | 100100     |   23 |
+--------+------------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> SELECT max(age)+10*20/2 FROM Customer; 
+------------------+
| max(age)+10*20/2 |
+------------------+
|         172.0000 |
+------------------+
1 row in set (0.10 sec)

MariaDB [csd2204s18]> EXIT
