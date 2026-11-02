-- Module 8 practice tables (SQLite)
-- DB Browser: Import > Database from SQL file | DB Fiddle: Database=SQLite, paste in Schema SQL
CREATE TABLE customers (customer_id INT PRIMARY KEY, full_name VARCHAR(100), city VARCHAR(50), phone TEXT);
INSERT INTO customers VALUES (1,'Md. Rafijur Rahman','Patuakhali','01711000001'),(2,'Saiful Islam Nuhash','Pirojpur','01811000002'),(3,'Shadia Naznin Mim','Barishal','01911000003'),(4,'Prithyraj Biswas','Patuakhali','01611000004'),(5,'Sadia Islam','Barishal',NULL),(6,'Bithi Akter','Patuakhali',NULL);
CREATE TABLE orders (order_id INT PRIMARY KEY, customer_id INT, total_amount INT);
INSERT INTO orders VALUES (501,1,1200),(502,2,7500),(503,3,2250),(504,4,1800),(505,5,9200),(506,6,4500);
