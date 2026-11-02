-- Module 17 practice tables (SQLite)
-- DB Browser: Import > Database from SQL file | DB Fiddle: Database=SQLite, paste in Schema SQL
CREATE TABLE orders (order_id INT PRIMARY KEY, customer_name VARCHAR(100), city VARCHAR(50), amount INT);
INSERT INTO orders VALUES (501,'Md. Rafijur Rahman','Patuakhali',3000),(502,'Saiful Islam Nuhash','Pirojpur',2400),(503,'Shadia Naznin Mim','Barishal',2400),(504,'Sadia Islam','Barishal',1800);
