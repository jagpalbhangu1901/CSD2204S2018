MariaDB [(none)]> SHOW DATABASES;
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
6 rows in set (1.27 sec)

MariaDB [(none)]> USE CSD2204S18;
Database changed
MariaDB [CSD2204S18]> CREATE TABLE Persons(
    -> ID INTEGER(3),
    -> LAST NAME VARCHAR (255) NOT NULL,
    -> FIRST NAME VARCHAR (255) NOT NULL,
    -> AGE INTEGER (3
    -> ),
    -> PRIMARY KEY (ID));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'NAME VARCHAR (255) NOT NULL,
FIRST NAME VARCHAR (255) NOT NULL,
AGE INTEGER (3
)' at line 3
MariaDB [CSD2204S18]>  CREATE TABLE Persons(
    -> ID INTEGER(3),
    -> LAST NAME VARCHAR (255) NOT NULL,
    -> FIRST NAME VARCHAR (255) NOT NULL,
    -> AGE INTEGER (3),
    -> PRIMARY KEY (ID));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'NAME VARCHAR (255) NOT NULL,
FIRST NAME VARCHAR (255) NOT NULL,
AGE INTEGER (3),' at line 3
MariaDB [CSD2204S18]> CREATE TABLE Persons(
    -> ID INTEGER(3),
    -> LAST NAME VARCHAR(255) NOT NULL,
    -> FIRST NAME VARCHAR(255) NOT NULL,
    -> AGE INTEGER(3),
    -> PRIMARY KEY (ID));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'NAME VARCHAR(255) NOT NULL,
FIRST NAME VARCHAR(255) NOT NULL,
AGE INTEGER(3),
PR' at line 3
MariaDB [CSD2204S18]>  CREATE TABLE Persons(
    -> ID INTEGER(3),
    -> LASTNAME VARCHAR(255) NOT NULL,
    -> FIRSTNAME VARCHAR(255) NOT NULL,
    -> AGE INTEGER(3),
    -> CONSTRAINT PK_PERSON PRIMARY KEY(ID, LASTNAME));
Query OK, 0 rows affected (0.67 sec)

MariaDB [CSD2204S18]> DESC PERSON;
ERROR 1146 (42S02): Table 'csd2204s18.person' doesn't exist
MariaDB [CSD2204S18]> DESC PERSONS;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| ID        | int(3)       | NO   | PRI | NULL    |       |
| LASTNAME  | varchar(255) | NO   | PRI | NULL    |       |
| FIRSTNAME | varchar(255) | NO   |     | NULL    |       |
| AGE       | int(3)       | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

MariaDB [CSD2204S18]> CREATE TABLE ORDERS (
    -> ORDERID integer(3) NOTNULL,
    -> ORDERID integer(3) NOTNULL,);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '
ORDERID integer(3) NOTNULL,)' at line 2
MariaDB [CSD2204S18]> CREATE TABLE ORDERS 
    -> 
    -> 
    -> ();
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 4
MariaDB [CSD2204S18]> ; CREATE TABLE ORDERS (
ERROR: No query specified

    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2
MariaDB [CSD2204S18]> CREATE TABLE ORDERS (
    -> ORDERID integer(3) NOT NULL,
    -> ORDERNUMBER integer(3) NOT NULL,
    -> PERSONID integer(3),
    -> PRIMARY KEY (ORDERID),
    -> CONSTRAINT FK_PERSONORDER FOREIGN KEY (PERSONID) 
    -> REFERENCES PERSONS 
    -> (ID));
Query OK, 0 rows affected (0.21 sec)

MariaDB [CSD2204S18]> SHOW CREATE TABLE ORDERS;
+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table  | Create Table                                                                                                                                                                                                                                                                                                      |
+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ORDERS | CREATE TABLE `orders` (
  `ORDERID` int(3) NOT NULL,
  `ORDERNUMBER` int(3) NOT NULL,
  `PERSONID` int(3) DEFAULT NULL,
  PRIMARY KEY (`ORDERID`),
  KEY `FK_PERSONORDER` (`PERSONID`),
  CONSTRAINT `FK_PERSONORDER` FOREIGN KEY (`PERSONID`) REFERENCES `persons` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 |
+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.11 sec)

MariaDB [CSD2204S18]> SHOW INDEX FROM ORDERS;
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table  | Non_unique | Key_name       | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| orders |          0 | PRIMARY        |            1 | ORDERID     | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| orders |          1 | FK_PERSONORDER |            1 | PERSONID    | A         |           0 |     NULL | NULL   | YES  | BTREE      |         |               |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> DESC CUSTOMER;
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
6 rows in set (0.03 sec)

MariaDB [CSD2204S18]> CREATE TABLE C1 AS SELECT * FROM CUSTOMER;
Query OK, 10 rows affected (0.38 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> CREATE TABLE C2 AS SELECT name,postalcode FROM CUSTOMER WHERE city="toronto";
Query OK, 3 rows affected (0.33 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC C1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

MariaDB [CSD2204S18]> SELECT * FROM C1;
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

MariaDB [CSD2204S18]> DESC C2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

MariaDB [CSD2204S18]> SELECT * FROM C2;
+--------------+------------+
| name         | postalcode |
+--------------+------------+
| BOB MARLEY   | 100100     |
| DONNA NEWMAN | 130120     |
| ESTON M.     | 201023     |
+--------------+------------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> CREATE TABLE C3 LIKE CUSTOMER;
Query OK, 0 rows affected (0.13 sec)

MariaDB [CSD2204S18]> DESC C3;
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

MariaDB [CSD2204S18]> SELECT * FROM C3;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> INSERT INTO C3 SELECT * FROM COSTOMERS;
ERROR 1146 (42S02): Table 'csd2204s18.costomers' doesn't exist
MariaDB [CSD2204S18]> INSERT INTO C3 SELECT * FROM CUSTOMERS;
ERROR 1146 (42S02): Table 'csd2204s18.customers' doesn't exist
MariaDB [CSD2204S18]> INSERT INTO C3 SELECT * FROM CUSTOMER;
Query OK, 10 rows affected (0.15 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM C3;
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

MariaDB [CSD2204S18]> ALTER TABLE C3 ADD COLUMN country VARCHAR(100);
Query OK, 0 rows affected (1.11 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC C3;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| custId     | varchar(5)   | NO   | PRI | NULL    |       |
| name       | varchar(50)  | YES  |     | NULL    |       |
| nickname   | varchar(10)  | YES  |     | NULL    |       |
| city       | varchar(20)  | YES  |     | NULL    |       |
| postalCode | varchar(10)  | YES  |     | NULL    |       |
| age        | int(3)       | YES  |     | NULL    |       |
| country    | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE C3 MODIFY COLUMN Country VARCHAR(40); 
Query OK, 10 rows affected (1.57 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC C3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| Country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

MariaDB [CSD2204S18]> ALTER TABLE C3 MODIFY COLUMN country VARCHAR(40); 
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC C3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

MariaDB [CSD2204S18]> ALTER TABLE C3 CHANGE COLUMN custId customerID VARCHAR(5);
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC C3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE C3 DROP COLUMN nickname;
Query OK, 0 rows affected (1.58 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC C3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.05 sec)

MariaDB [CSD2204S18]> ALTER TABLE C3 MODIFY name VARCHAR(50) NOT NULL;
Query OK, 10 rows affected (0.69 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC C3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | NO   |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.03 sec)

MariaDB [CSD2204S18]> DESC C1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.13 sec)

MariaDB [CSD2204S18]> ALTER TABLE C1 ADD PRIMARY KEY(custId);
Query OK, 0 rows affected (0.37 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC C1;
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
6 rows in set (0.12 sec)

MariaDB [CSD2204S18]> SHOW VARIABLES LIKE 'VERSION';
+---------------+-----------------+
| Variable_name | Value           |
+---------------+-----------------+
| version       | 10.1.31-MariaDB |
+---------------+-----------------+
1 row in set (0.01 sec)

MariaDB [CSD2204S18]> ALTER TABLE C1 DROP INDEX PRIMARY KEY(custID);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'PRIMARY KEY(custID)' at line 1
MariaDB [CSD2204S18]> ALTER TABLE C1 DROP PRIMARY KEY(custID);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(custID)' at line 1
MariaDB [CSD2204S18]> ALTER TABLE C1 DROP PRIMARY KEY;
Query OK, 10 rows affected (0.85 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC C1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

MariaDB [CSD2204S18]> DESC PERSONS;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| ID        | int(3)       | NO   | PRI | NULL    |       |
| LASTNAME  | varchar(255) | NO   | PRI | NULL    |       |
| FIRSTNAME | varchar(255) | NO   |     | NULL    |       |
| AGE       | int(3)       | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.03 sec)

MariaDB [CSD2204S18]> SHOW INDEX FROM PERSONS;
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table   | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| persons |          0 | PRIMARY  |            1 | ID          | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| persons |          0 | PRIMARY  |            2 | LASTNAME    | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> DESC C3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | NO   |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

MariaDB [CSD2204S18]> SELECT * FROM C3;
+------------+----------------+----------+------------+------+---------+
| customerID | name           | city     | postalCode | age  | country |
+------------+----------------+----------+------------+------+---------+
| C10        | JACK SP        | JERSEY   | 102301     |   35 | NULL    |
| CO1        | ASHLEY         | WDC      | 321200     |   34 | NULL    |
| CO2        | BOB MARLEY     | TORONTO  | 100100     |   23 | NULL    |
| CO3        | CHERLIS THERON | NEW YORK | 120134     |   20 | NULL    |
| CO4        | DENIAL JACK    | BRAZIL   | 341020     |   25 | NULL    |
| CO5        | DONNA NEWMAN   | TORONTO  | 130120     |   50 | NULL    |
| CO6        | ESTON M.       | TORONTO  | 201023     |   65 | NULL    |
| CO7        | BOBBY CHACKO   | NEW YORK | 320300     |   70 | NULL    |
| CO8        | ASHKO CHARLES  | USA      | 421044     |   72 | NULL    |
| CO9        | TONY SPECIAL   | GTA      | 418921     |   62 | NULL    |
+------------+----------------+----------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> UPDATE C3 SET country = 'USA';
Query OK, 10 rows affected (0.17 sec)
Rows matched: 10  Changed: 10  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM C3;
+------------+----------------+----------+------------+------+---------+
| customerID | name           | city     | postalCode | age  | country |
+------------+----------------+----------+------------+------+---------+
| C10        | JACK SP        | JERSEY   | 102301     |   35 | USA     |
| CO1        | ASHLEY         | WDC      | 321200     |   34 | USA     |
| CO2        | BOB MARLEY     | TORONTO  | 100100     |   23 | USA     |
| CO3        | CHERLIS THERON | NEW YORK | 120134     |   20 | USA     |
| CO4        | DENIAL JACK    | BRAZIL   | 341020     |   25 | USA     |
| CO5        | DONNA NEWMAN   | TORONTO  | 130120     |   50 | USA     |
| CO6        | ESTON M.       | TORONTO  | 201023     |   65 | USA     |
| CO7        | BOBBY CHACKO   | NEW YORK | 320300     |   70 | USA     |
| CO8        | ASHKO CHARLES  | USA      | 421044     |   72 | USA     |
| CO9        | TONY SPECIAL   | GTA      | 418921     |   62 | USA     |
+------------+----------------+----------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> UPDATE C3 SET country = 'CANADA' WHERE city IN ('TORONTO','GTA');
Query OK, 4 rows affected (0.07 sec)
Rows matched: 4  Changed: 4  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM C3;
+------------+----------------+----------+------------+------+---------+
| customerID | name           | city     | postalCode | age  | country |
+------------+----------------+----------+------------+------+---------+
| C10        | JACK SP        | JERSEY   | 102301     |   35 | USA     |
| CO1        | ASHLEY         | WDC      | 321200     |   34 | USA     |
| CO2        | BOB MARLEY     | TORONTO  | 100100     |   23 | CANADA  |
| CO3        | CHERLIS THERON | NEW YORK | 120134     |   20 | USA     |
| CO4        | DENIAL JACK    | BRAZIL   | 341020     |   25 | USA     |
| CO5        | DONNA NEWMAN   | TORONTO  | 130120     |   50 | CANADA  |
| CO6        | ESTON M.       | TORONTO  | 201023     |   65 | CANADA  |
| CO7        | BOBBY CHACKO   | NEW YORK | 320300     |   70 | USA     |
| CO8        | ASHKO CHARLES  | USA      | 421044     |   72 | USA     |
| CO9        | TONY SPECIAL   | GTA      | 418921     |   62 | CANADA  |
+------------+----------------+----------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> UPDATE C3 SET country = 'SOUTH AMERICA' WHERE city = 'brazil';
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM C3;
+------------+----------------+----------+------------+------+---------------+
| customerID | name           | city     | postalCode | age  | country       |
+------------+----------------+----------+------------+------+---------------+
| C10        | JACK SP        | JERSEY   | 102301     |   35 | USA           |
| CO1        | ASHLEY         | WDC      | 321200     |   34 | USA           |
| CO2        | BOB MARLEY     | TORONTO  | 100100     |   23 | CANADA        |
| CO3        | CHERLIS THERON | NEW YORK | 120134     |   20 | USA           |
| CO4        | DENIAL JACK    | BRAZIL   | 341020     |   25 | SOUTH AMERICA |
| CO5        | DONNA NEWMAN   | TORONTO  | 130120     |   50 | CANADA        |
| CO6        | ESTON M.       | TORONTO  | 201023     |   65 | CANADA        |
| CO7        | BOBBY CHACKO   | NEW YORK | 320300     |   70 | USA           |
| CO8        | ASHKO CHARLES  | USA      | 421044     |   72 | USA           |
| CO9        | TONY SPECIAL   | GTA      | 418921     |   62 | CANADA        |
+------------+----------------+----------+------------+------+---------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM C2;
+--------------+------------+
| name         | postalcode |
+--------------+------------+
| BOB MARLEY   | 100100     |
| DONNA NEWMAN | 130120     |
| ESTON M.     | 201023     |
+--------------+------------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> DELETE FROM C2 WHERE name LIKE 'BOB'; 
Query OK, 0 rows affected (0.03 sec)

MariaDB [CSD2204S18]> SELECT * FROM C2;
+--------------+------------+
| name         | postalcode |
+--------------+------------+
| BOB MARLEY   | 100100     |
| DONNA NEWMAN | 130120     |
| ESTON M.     | 201023     |
+--------------+------------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> DELETE FROM C2 WHERE name LIKE 'BOB%'; 
Query OK, 1 row affected (0.14 sec)

MariaDB [CSD2204S18]> SELECT * FROM C2;
+--------------+------------+
| name         | postalcode |
+--------------+------------+
| DONNA NEWMAN | 130120     |
| ESTON M.     | 201023     |
+--------------+------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> DROP TABLE C2;
Query OK, 0 rows affected (0.13 sec)

MariaDB [CSD2204S18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c3                   |
| customer             |
| orders               |
| persons              |
+----------------------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM C1;
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

MariaDB [CSD2204S18]> DESC C1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> UPDATE C1 SET custID = 1 WHERE age >= 50;
Query OK, 5 rows affected (0.15 sec)
Rows matched: 5  Changed: 5  Warnings: 0

MariaDB [CSD2204S18]> DESC C1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM C1;
+--------+----------------+----------+----------+------------+------+
| custId | name           | nickname | city     | postalCode | age  |
+--------+----------------+----------+----------+------------+------+
| C10    | JACK SP        | SPARROW  | JERSEY   | 102301     |   35 |
| CO1    | ASHLEY         | ASH      | WDC      | 321200     |   34 |
| CO2    | BOB MARLEY     | BM       | TORONTO  | 100100     |   23 |
| CO3    | CHERLIS THERON | CHER     | NEW YORK | 120134     |   20 |
| CO4    | DENIAL JACK    | DJ       | BRAZIL   | 341020     |   25 |
| 1      | DONNA NEWMAN   | NEW      | TORONTO  | 130120     |   50 |
| 1      | ESTON M.       | M.       | TORONTO  | 201023     |   65 |
| 1      | BOBBY CHACKO   | CHAC     | NEW YORK | 320300     |   70 |
| 1      | ASHKO CHARLES  | AK       | USA      | 421044     |   72 |
| 1      | TONY SPECIAL   | SPECIE   | GTA      | 418921     |   62 |
+--------+----------------+----------+----------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM C1 WHERE custID is NULL;
Empty set (0.34 sec)

MariaDB [CSD2204S18]> SELECT * FROM C1 WHERE custID is NOT NULL;
+--------+----------------+----------+----------+------------+------+
| custId | name           | nickname | city     | postalCode | age  |
+--------+----------------+----------+----------+------------+------+
| C10    | JACK SP        | SPARROW  | JERSEY   | 102301     |   35 |
| CO1    | ASHLEY         | ASH      | WDC      | 321200     |   34 |
| CO2    | BOB MARLEY     | BM       | TORONTO  | 100100     |   23 |
| CO3    | CHERLIS THERON | CHER     | NEW YORK | 120134     |   20 |
| CO4    | DENIAL JACK    | DJ       | BRAZIL   | 341020     |   25 |
| 1      | DONNA NEWMAN   | NEW      | TORONTO  | 130120     |   50 |
| 1      | ESTON M.       | M.       | TORONTO  | 201023     |   65 |
| 1      | BOBBY CHACKO   | CHAC     | NEW YORK | 320300     |   70 |
| 1      | ASHKO CHARLES  | AK       | USA      | 421044     |   72 |
| 1      | TONY SPECIAL   | SPECIE   | GTA      | 418921     |   62 |
+--------+----------------+----------+----------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> DESC C1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE C1 MODIFY COLUMN age FLOAT(10,2);
Query OK, 10 rows affected (1.27 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM C1;
+--------+----------------+----------+----------+------------+-------+
| custId | name           | nickname | city     | postalCode | age   |
+--------+----------------+----------+----------+------------+-------+
| C10    | JACK SP        | SPARROW  | JERSEY   | 102301     | 35.00 |
| CO1    | ASHLEY         | ASH      | WDC      | 321200     | 34.00 |
| CO2    | BOB MARLEY     | BM       | TORONTO  | 100100     | 23.00 |
| CO3    | CHERLIS THERON | CHER     | NEW YORK | 120134     | 20.00 |
| CO4    | DENIAL JACK    | DJ       | BRAZIL   | 341020     | 25.00 |
| 1      | DONNA NEWMAN   | NEW      | TORONTO  | 130120     | 50.00 |
| 1      | ESTON M.       | M.       | TORONTO  | 201023     | 65.00 |
| 1      | BOBBY CHACKO   | CHAC     | NEW YORK | 320300     | 70.00 |
| 1      | ASHKO CHARLES  | AK       | USA      | 421044     | 72.00 |
| 1      | TONY SPECIAL   | SPECIE   | GTA      | 418921     | 62.00 |
+--------+----------------+----------+----------+------------+-------+
10 rows in set (0.01 sec)

MariaDB [CSD2204S18]> EXIT
