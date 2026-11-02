-- Module 11 practice tables (SQLite)
-- DB Browser: Import > Database from SQL file | DB Fiddle: Database=SQLite, paste in Schema SQL
CREATE TABLE employees (emp_id INT PRIMARY KEY, full_name VARCHAR(100), manager_id INT);
INSERT INTO employees VALUES (1,'Md. Rafijur Rahman',NULL),(2,'Saiful Islam Nuhash',1),(3,'Shadia Naznin Mim',2),(4,'Prithyraj Biswas',2);
CREATE TABLE products (product_name VARCHAR(50));
INSERT INTO products VALUES ('Cotton T-Shirt'),('Polo Shirt');
CREATE TABLE sizes (size_code VARCHAR(10));
INSERT INTO sizes VALUES ('Large'),('Medium');
