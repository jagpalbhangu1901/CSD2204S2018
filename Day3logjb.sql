MariaDB [(none)]> CREATE DATABASE CSD2204S18;
ERROR 1007 (HY000): Can't create database 'csd2204s18'; database exists
MariaDB [(none)]> CREATE DATABASE CSD2204S2018;
Query OK, 1 row affected (0.00 sec)

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| csd2204s18         |
| csd2204s2018       |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
7 rows in set (0.02 sec)

MariaDB [(none)]> USECSD2204S2018;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'USECSD2204S2018' at line 1
MariaDB [(none)]> USE CSD2204S2018;
Database changed
MariaDB [CSD2204S2018]> CREATE TABLE Customer(
    -> custId VARCHAR(5) PRIMARY KEY,
    -> name VARCHAR(50),
    -> nickname VARCHAR(10),
    -> city VARCHAR(20),
    -> postalCode VARCHAR(10),
    -> age INTEGER(3));
Query OK, 0 rows affected (0.50 sec)

MariaDB [CSD2204S2018]> SHOW TABLES;
+------------------------+
| Tables_in_csd2204s2018 |
+------------------------+
| customer               |
+------------------------+
1 row in set (0.06 sec)

MariaDB [CSD2204S2018]> EXIT;
