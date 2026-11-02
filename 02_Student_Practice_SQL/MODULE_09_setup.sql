-- Module 9 practice tables (SQLite)
-- DB Browser: Import > Database from SQL file | DB Fiddle: Database=SQLite, paste in Schema SQL
CREATE TABLE customers (customer_id INT PRIMARY KEY, full_name VARCHAR(100), city VARCHAR(50));
INSERT INTO customers VALUES (1,'Md. Bellal Hossen','Bhola'),(2,'Saiful Islam Nuhash','Barguna'),(3,'Shadia Naznin Mim','Barishal'),(4,'Md. Rafijur Rahman','Patuakhali'),(5,'Sadia Islam','Patuakhali');
CREATE TABLE orders (order_id INT PRIMARY KEY, customer_id INT, total_amount INT);
INSERT INTO orders VALUES (501,1,1200),(502,2,2400),(503,3,2250),(504,4,1800);
CREATE TABLE order_items (item_id INT PRIMARY KEY, order_id INT, product_id INT, quantity INT, unit_price INT);
INSERT INTO order_items VALUES (1001,501,101,1,1200),(1002,502,102,1,2400),(1003,503,104,2,650);
