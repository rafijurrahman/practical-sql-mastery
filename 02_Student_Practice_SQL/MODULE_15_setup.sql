-- Module 15 practice tables (SQLite)
-- DB Browser: Import > Database from SQL file | DB Fiddle: Database=SQLite, paste in Schema SQL
CREATE TABLE customers (customer_id INT PRIMARY KEY, full_name VARCHAR(100), city VARCHAR(50));
INSERT INTO customers VALUES (1,'Md. Rafijur Rahman','Patuakhali'),(2,'Saiful Islam Nuhash','Pirojpur'),(3,'Shadia Naznin Mim','Barishal'),(4,'Md. Bellal Hossen','Bhola'),(5,'Sadia Islam','Barishal');
CREATE TABLE orders (order_id INT PRIMARY KEY, customer_id INT, amount INT);
INSERT INTO orders VALUES (501,1,3200),(502,2,2400),(503,3,1500),(504,4,1200);
