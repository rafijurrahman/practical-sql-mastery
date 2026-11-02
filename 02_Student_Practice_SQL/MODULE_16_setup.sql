-- Module 16 practice tables (SQLite)
-- DB Browser: Import > Database from SQL file | DB Fiddle: Database=SQLite, paste in Schema SQL
CREATE TABLE orders (order_id INT PRIMARY KEY, customer_name VARCHAR(100), amount INT);
INSERT INTO orders VALUES (501,'Md. Rafijur Rahman',3200),(502,'Saiful Islam Nuhash',2400),(503,'Shadia Naznin Mim',1800),(504,'Md. Bellal Hossen',1200);
CREATE TABLE employees (emp_id INT PRIMARY KEY, full_name VARCHAR(100), manager_id INT);
INSERT INTO employees VALUES (1,'Md. Rafijur Rahman',NULL),(2,'Saiful Islam Nuhash',1),(3,'Shadia Naznin Mim',2);
