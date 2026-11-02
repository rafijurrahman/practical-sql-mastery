-- BD Shop Master Unified Database (Complete Schema & All Rows)
PRAGMA foreign_keys = OFF;

DROP TABLE IF EXISTS categories;
CREATE TABLE categories (
    category_id INTEGER PRIMARY KEY,
    category_name TEXT NOT NULL
);

DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    category_id INTEGER,
    category TEXT,
    unit_price INTEGER NOT NULL,
    price INTEGER NOT NULL,
    stock_qty INTEGER NOT NULL
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    full_name TEXT NOT NULL,
    city TEXT NOT NULL,
    phone TEXT,
    email TEXT,
    status TEXT NOT NULL,
    joined_date TEXT NOT NULL
);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    customer_name TEXT,
    city TEXT,
    order_date TEXT NOT NULL,
    shipped_date TEXT,
    status TEXT NOT NULL,
    total_amount INTEGER NOT NULL,
    amount INTEGER NOT NULL,
    item_count INTEGER DEFAULT 1,
    discount INTEGER DEFAULT 0
);

DROP TABLE IF EXISTS order_items;
CREATE TABLE order_items (
    order_item_id INTEGER PRIMARY KEY,
    order_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    unit_price INTEGER NOT NULL
);

DROP TABLE IF EXISTS departments;
CREATE TABLE departments (
    department_id INTEGER PRIMARY KEY,
    department_name TEXT NOT NULL
);

DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    employee_id INTEGER PRIMARY KEY,
    emp_id INTEGER,
    full_name TEXT NOT NULL,
    department_id INTEGER,
    manager_id INTEGER,
    salary INTEGER NOT NULL,
    hire_date TEXT NOT NULL
);

-- Auxiliary Practice Tables for Specific Course Exercises
DROP TABLE IF EXISTS sizes;
CREATE TABLE sizes (
    size_id INTEGER PRIMARY KEY,
    size_code TEXT NOT NULL
);
INSERT INTO sizes VALUES (1, 'S'), (2, 'M'), (3, 'L'), (4, 'XL');

DROP TABLE IF EXISTS online_customers;
CREATE TABLE online_customers (
    customer_id INTEGER PRIMARY KEY,
    full_name TEXT NOT NULL,
    city TEXT NOT NULL
);
INSERT INTO online_customers VALUES 
(1, 'Md. Rafijur Rahman', 'Patuakhali'),
(2, 'Saiful Islam Nuhash', 'Pirojpur'),
(3, 'Shadia Naznin Mim', 'Barishal'),
(4, 'Md. Bellal Hossen', 'Bhola'),
(5, 'Sadia Islam', 'Barishal');

DROP TABLE IF EXISTS store_customers;
CREATE TABLE store_customers (
    customer_id INTEGER PRIMARY KEY,
    full_name TEXT NOT NULL,
    city TEXT NOT NULL
);
INSERT INTO store_customers VALUES 
(3, 'Shadia Naznin Mim', 'Barishal'),
(4, 'Prithyraj Biswas', 'Patuakhali'),
(5, 'Shakhar Debnath', 'Patuakhali'),
(6, 'Md. Saikot Munshi', 'Pirojpur'),
(7, 'Naima Sultana', 'Bhola');

DROP TABLE IF EXISTS raw_customers;
CREATE TABLE raw_customers (
    customer_id INTEGER PRIMARY KEY,
    raw_name TEXT NOT NULL,
    city TEXT NOT NULL,
    phone TEXT,
    balance INTEGER NOT NULL
);
INSERT INTO raw_customers VALUES 
(1, '  Md. Rafijur Rahman  ', 'Patuakhali', '01711000001', -450),
(2, 'saiful islam nuhash', 'Pirojpur', '01811000002', 1250),
(3, 'SHADIA NAZNIN MIM', 'Barishal', NULL, 800),
(4, '  Prithyraj Biswas ', 'Patuakhali', '01711000004', -150),
(5, 'shakhar debnath  ', 'Patuakhali', '01611000005', 2100),
(6, ' sadia islam', 'Barishal', NULL, 500);

DROP TABLE IF EXISTS monthly_sales;
CREATE TABLE monthly_sales (
    month_id TEXT PRIMARY KEY,
    revenue INTEGER NOT NULL
);
INSERT INTO monthly_sales VALUES 
('2026-01', 12000),
('2026-02', 15000),
('2026-03', 18000),
('2026-04', 16000),
('2026-05', 22000),
('2026-06', 25000);

-- Pre-create index for Q19.4 DROP INDEX
CREATE INDEX IF NOT EXISTS idx_orders_customer ON orders(customer_id);

INSERT INTO categories VALUES (1, 'Electronics');
INSERT INTO categories VALUES (2, 'Clothing');
INSERT INTO categories VALUES (3, 'Stationery');
INSERT INTO categories VALUES (4, 'Groceries');
INSERT INTO categories VALUES (5, 'Books');
INSERT INTO categories VALUES (6, 'Footwear');
INSERT INTO products VALUES (101, 'Wireless Mouse', 1, 'Electronics', 850, 850, 45);
INSERT INTO products VALUES (102, 'Mechanical Keyboard', 1, 'Electronics', 2400, 2400, 20);
INSERT INTO products VALUES (103, 'USB-C Cable', 1, 'Electronics', 350, 350, 80);
INSERT INTO products VALUES (104, 'Cotton T-Shirt', 2, 'Clothing', 650, 650, 50);
INSERT INTO products VALUES (105, 'Denim Jeans', 2, 'Clothing', 1800, 1800, 30);
INSERT INTO products VALUES (106, 'Leather Belt', 2, 'Clothing', 950, 950, 25);
INSERT INTO products VALUES (107, 'Spiral Notebook', 3, 'Stationery', 120, 120, 100);
INSERT INTO products VALUES (108, 'Gel Pen Set', 3, 'Stationery', 250, 250, 60);
INSERT INTO products VALUES (109, 'Organic Green Tea', 4, 'Groceries', 450, 450, 40);
INSERT INTO products VALUES (110, 'Premium Coffee Beans', 4, 'Groceries', 1200, 1200, 15);
INSERT INTO products VALUES (111, 'Python Crash Course', 5, 'Books', 550, 550, 35);
INSERT INTO products VALUES (112, 'SQL Pocket Guide', 5, 'Books', 380, 380, 50);
INSERT INTO products VALUES (113, 'Running Sneakers', 6, 'Footwear', 2800, 2800, 18);
INSERT INTO products VALUES (114, 'Formal Oxford Shoes', 6, 'Footwear', 3500, 3500, 15);
INSERT INTO products VALUES (115, 'Bluetooth Headset', 1, 'Electronics', 1650, 1650, 25);
INSERT INTO products VALUES (116, 'Canvas Backpack', 2, 'Clothing', 1250, 1250, 40);
INSERT INTO customers VALUES (1, 'Md. Rafijur Rahman', 'Patuakhali', '01711000001', 'rafijur@bdshop.com', 'Active', '2025-01-10');
INSERT INTO customers VALUES (2, 'Saiful Islam Nuhash', 'Pirojpur', '01811000002', 'nuhash@bdshop.com', 'Active', '2025-01-12');
INSERT INTO customers VALUES (3, 'Shadia Naznin Mim', 'Barishal', '01911000003', 'mim@bdshop.com', 'Active', '2025-01-13');
INSERT INTO customers VALUES (4, 'Prithyraj Biswas', 'Patuakhali', '01711000004', 'prithyraj@bdshop.com', 'Active', '2025-01-14');
INSERT INTO customers VALUES (5, 'Shakhar Debnath', 'Patuakhali', '01611000005', 'shakhar@bdshop.com', 'Active', '2025-01-15');
INSERT INTO customers VALUES (6, 'Shamic Biswas', 'Jhalokathi', '01811000006', 'shamic6@bdshop.com', 'Active', '2025-03-12');
INSERT INTO customers VALUES (7, 'Md. Saikot Munshi', 'Pirojpur', '01711000007', 'saikot7@bdshop.com', 'Active', '2025-03-17');
INSERT INTO customers VALUES (8, 'Naima Sultana', 'Bhola', '01511000008', 'naima8@bdshop.com', 'Active', '2025-01-10');
INSERT INTO customers VALUES (9, 'Akash Chandra Barai', 'Pirojpur', '01811000009', 'akash9@bdshop.com', 'Active', '2025-02-15');
INSERT INTO customers VALUES (10, 'Sadia Islam', 'Barishal', NULL, 'sadia10@bdshop.com', 'Active', '2025-01-06');
INSERT INTO customers VALUES (11, 'Anik Chandra Majumdar', 'Barishal', '01611000011', 'anik11@bdshop.com', 'Active', '2025-03-12');
INSERT INTO customers VALUES (12, 'Md. Bellal Hossen', 'Bhola', '01611000012', 'bellal12@bdshop.com', 'Active', '2025-02-08');
INSERT INTO customers VALUES (13, ' Jauata Afnan ', 'Patuakhali', '01611000013', 'jauata13@bdshop.com', 'Active', '2025-02-07');
INSERT INTO customers VALUES (14, 'Mst. Jannatul Chaiti', 'Barishal', '01611000014', 'jannatul14@bdshop.com', 'Inactive', '2025-02-10');
INSERT INTO customers VALUES (15, 'Antora Rani', 'Bhola', '01711000015', 'antora15@bdshop.com', 'Active', '2025-03-27');
INSERT INTO customers VALUES (16, 'Md. Meskat', 'Jhalokathi', '01911000016', 'meskat16@bdshop.com', 'Active', '2025-03-28');
INSERT INTO customers VALUES (17, 'Mst. Nishat Jaman Nisha', 'Barguna', '01611000017', 'nishat17@bdshop.com', 'Active', '2025-02-08');
INSERT INTO customers VALUES (18, 'Md.mehedi Hasan', 'Pirojpur', '01711000018', 'mehedi18@bdshop.com', 'Active', '2025-02-24');
INSERT INTO customers VALUES (19, 'Al Mahmud Alif', 'Patuakhali', '01611000019', 'al19@bdshop.com', 'Active', '2025-01-28');
INSERT INTO customers VALUES (20, 'Manotosh Halder', 'Pirojpur', '01811000020', 'manotosh20@bdshop.com', 'Active', '2025-03-04');
INSERT INTO customers VALUES (21, 'Durjoy Malakar', 'Barguna', '01711000021', 'durjoy21@bdshop.com', 'Active', '2025-02-23');
INSERT INTO customers VALUES (22, 'Md. Nayeem Molla', 'Barguna', '01711000022', 'nayeem22@bdshop.com', 'Active', '2025-02-19');
INSERT INTO customers VALUES (23, 'M.a.idris', 'Bhola', '01711000023', 'maidris23@bdshop.com', 'Active', '2025-02-06');
INSERT INTO customers VALUES (24, 'Aminul Islam Khalifa', 'Barguna', '01711000024', 'aminul24@bdshop.com', 'Active', '2025-01-13');
INSERT INTO customers VALUES (25, 'Bithi Akter', 'Patuakhali', NULL, 'bithi25@bdshop.com', 'Active', '2025-03-19');
INSERT INTO customers VALUES (26, 'Eti Akter', 'Pirojpur', '01811000026', 'eti26@bdshop.com', 'Active', '2025-02-28');
INSERT INTO customers VALUES (27, 'Most. Inu Mony', 'Jhalokathi', '01911000027', 'inu27@bdshop.com', 'Active', '2025-01-23');
INSERT INTO customers VALUES (28, 'Asadujjaman Niaz', 'Jhalokathi', '01711000028', 'asadujjaman28@bdshop.com', 'Active', '2025-01-03');
INSERT INTO customers VALUES (29, 'Md.hasibur Rahman', 'Barishal', '01511000029', 'hasibur29@bdshop.com', 'Active', '2025-02-18');
INSERT INTO customers VALUES (30, 'Md. Mehedi Hasan', 'Patuakhali', '01611000030', 'mehedi30@bdshop.com', 'Active', '2025-01-22');
INSERT INTO customers VALUES (31, 'Anika Jahan', 'Patuakhali', '01511000031', 'anika31@bdshop.com', 'Inactive', '2025-03-26');
INSERT INTO customers VALUES (32, 'Jihad Hossain Niloy', 'Pirojpur', '01811000032', 'jihad32@bdshop.com', 'Active', '2025-03-06');
INSERT INTO customers VALUES (33, 'Rumana Islam Akhi', 'Bhola', '01511000033', 'rumana33@bdshop.com', 'Active', '2025-02-05');
INSERT INTO customers VALUES (34, 'Mst.monia', 'Barishal', '01811000034', 'monia34@bdshop.com', 'Active', '2025-02-11');
INSERT INTO customers VALUES (35, 'Arnob Biswas', 'Pirojpur', '01711000035', 'arnob35@bdshop.com', 'Active', '2025-01-18');
INSERT INTO customers VALUES (36, 'Shimul Mistry', 'Jhalokathi', '01911000036', 'shimul36@bdshop.com', 'Active', '2025-02-02');
INSERT INTO customers VALUES (37, 'Alock Barai', 'Bhola', '01911000037', 'alock37@bdshop.com', 'Active', '2025-03-27');
INSERT INTO customers VALUES (38, 'Rukaya Binte Sharna', 'Barguna', '01711000038', 'rukaya38@bdshop.com', 'Active', '2025-02-05');
INSERT INTO customers VALUES (39, 'Most. Sarmi Akter', 'Barguna', '01611000039', 'sarmi39@bdshop.com', 'Active', '2025-01-14');
INSERT INTO customers VALUES (40, 'Ratanobarai', 'Barishal', '01511000040', 'ratanobarai40@bdshop.com', 'Active', '2025-02-08');
INSERT INTO customers VALUES (41, 'Md. Khairulislam', 'Barishal', '01911000041', 'khairulislam41@bdshop.com', 'Active', '2025-03-06');
INSERT INTO customers VALUES (42, 'Apurbo Halder', 'Barishal', '01711000042', 'apurbo42@bdshop.com', 'Active', '2025-03-13');
INSERT INTO customers VALUES (43, 'Israt Jahan Tanni', 'Jhalokathi', '01611000043', 'israt43@bdshop.com', 'Active', '2025-03-19');
INSERT INTO customers VALUES (44, 'Aysha Akter Jerin', 'Barishal', '01911000044', 'aysha44@bdshop.com', 'Active', '2025-01-26');
INSERT INTO customers VALUES (45, 'Md. Ariful Islam', 'Barguna', NULL, 'ariful45@bdshop.com', 'Active', '2025-03-07');
INSERT INTO customers VALUES (46, 'Kazi Asraful Islam', 'Jhalokathi', '01511000046', 'kazi46@bdshop.com', 'Active', '2025-03-11');
INSERT INTO customers VALUES (47, 'Md. Mizanur Rahman', 'Barguna', '01711000047', 'mizanur47@bdshop.com', 'Active', '2025-01-10');
INSERT INTO customers VALUES (48, 'Md. Sakib Bepari', 'Barguna', '01911000048', 'sakib48@bdshop.com', 'Active', '2025-02-13');
INSERT INTO customers VALUES (49, 'Md. Asif Iqbal Abir', 'Patuakhali', '01711000049', 'asif49@bdshop.com', 'Active', '2025-03-08');
INSERT INTO customers VALUES (50, 'Shara Islam', 'Jhalokathi', '01711000050', 'shara50@bdshop.com', 'Active', '2025-01-05');
INSERT INTO customers VALUES (51, 'Sajid Rahaman', 'Patuakhali', '01711000051', 'sajid51@bdshop.com', 'Active', '2025-01-11');
INSERT INTO customers VALUES (52, 'Saiful Islam', 'Barishal', '01911000052', 'saiful52@bdshop.com', 'Active', '2025-01-15');
INSERT INTO customers VALUES (53, 'Laboni Akter', 'Patuakhali', '01811000053', 'laboni53@bdshop.com', 'Active', '2025-03-22');
INSERT INTO customers VALUES (54, 'Shekhar Chandra Das', 'Patuakhali', '01911000054', 'shekhar54@bdshop.com', 'Active', '2025-03-22');
INSERT INTO customers VALUES (55, 'Mst. Sajia Afrin', 'Patuakhali', '01511000055', 'sajia55@bdshop.com', 'Inactive', '2025-01-05');
INSERT INTO customers VALUES (56, 'Md. Sakibul Sikder', 'Pirojpur', '01511000056', 'sakibul56@bdshop.com', 'Active', '2025-03-11');
INSERT INTO customers VALUES (57, 'Bimal Baral', 'Barguna', '01911000057', 'bimal57@bdshop.com', 'Active', '2025-03-09');
INSERT INTO customers VALUES (58, 'Md. Sabuz Talukder', 'Bhola', '01611000058', 'sabuz58@bdshop.com', 'Active', '2025-01-15');
INSERT INTO customers VALUES (59, 'Md. Ismail Hossain', 'Barguna', '01711000059', 'ismail59@bdshop.com', 'Active', '2025-01-02');
INSERT INTO customers VALUES (60, 'Md. Alauddin', 'Jhalokathi', '01911000060', 'alauddin60@bdshop.com', 'Active', '2025-03-15');
INSERT INTO customers VALUES (61, 'Munny', 'Pirojpur', '01711000061', 'munny61@bdshop.com', 'Active', '2025-02-18');
INSERT INTO customers VALUES (62, 'Ehsan Zubayer', 'Patuakhali', '01811000062', 'ehsan62@bdshop.com', 'Active', '2025-01-25');
INSERT INTO customers VALUES (63, 'Md. Imdadul Hoque', 'Pirojpur', '01511000063', 'imdadul63@bdshop.com', 'Active', '2025-01-01');
INSERT INTO customers VALUES (64, 'Hamid Yeasir', 'Pirojpur', '01611000064', 'hamid64@bdshop.com', 'Active', '2025-03-09');
INSERT INTO customers VALUES (65, 'Md. Emran Hossain Emon', 'Jhalokathi', '01811000065', 'emran65@bdshop.com', 'Active', '2025-02-24');
INSERT INTO orders VALUES (501, 1, 'Md. Rafijur Rahman', 'Patuakhali', '2026-01-05', '2026-01-07', 'Delivered', 8300, 8300, 3, 0);
INSERT INTO orders VALUES (502, 2, 'Saiful Islam Nuhash', 'Pirojpur', '2026-01-08', '2026-01-10', 'Delivered', 4600, 4600, 2, 0);
INSERT INTO orders VALUES (503, 3, 'Shadia Naznin Mim', 'Barishal', '2026-01-12', '2026-01-14', 'Delivered', 3450, 3450, 2, 0);
INSERT INTO orders VALUES (504, 4, 'Prithyraj Biswas', 'Patuakhali', '2026-01-15', '2026-01-17', 'Delivered', 2400, 2400, 1, 100);
INSERT INTO orders VALUES (505, 5, 'Shakhar Debnath', 'Patuakhali', '2026-01-18', '2026-01-20', 'Delivered', 2050, 2050, 3, 0);
INSERT INTO orders VALUES (506, 6, 'Shamic Biswas', 'Jhalokathi', '2026-01-22', '2026-01-25', 'Delivered', 2150, 2150, 3, 0);
INSERT INTO orders VALUES (507, 7, 'Md. Saikot Munshi', 'Pirojpur', '2026-01-25', '2026-01-27', 'Delivered', 2500, 2500, 2, 0);
INSERT INTO orders VALUES (508, 1, 'Md. Rafijur Rahman', 'Patuakhali', '2026-01-28', '2026-01-30', 'Delivered', 3250, 3250, 2, 0);
INSERT INTO orders VALUES (509, 8, 'Naima Sultana', 'Bhola', '2026-02-01', '2026-02-03', 'Delivered', 1900, 1900, 7, 0);
INSERT INTO orders VALUES (510, 9, 'Akash Chandra Barai', 'Pirojpur', '2026-02-03', '2026-02-05', 'Delivered', 1860, 1860, 4, 100);
INSERT INTO orders VALUES (511, 11, 'Anik Chandra Majumdar', 'Barishal', '2026-02-06', '2026-02-08', 'Delivered', 2500, 2500, 2, 0);
INSERT INTO orders VALUES (512, 12, 'Md. Bellal Hossen', 'Bhola', '2026-02-08', '2026-02-11', 'Delivered', 1800, 1800, 1, 0);
INSERT INTO orders VALUES (513, 13, ' Jauata Afnan ', 'Patuakhali', '2026-02-10', '2026-02-13', 'Delivered', 1900, 1900, 2, 0);
INSERT INTO orders VALUES (514, 15, 'Antora Rani', 'Bhola', '2026-02-12', '2026-02-15', 'Delivered', 1950, 1950, 3, 0);
INSERT INTO orders VALUES (515, 16, 'Md. Meskat', 'Jhalokathi', '2026-02-15', '2026-02-18', 'Delivered', 3100, 3100, 3, 0);
INSERT INTO orders VALUES (516, 17, 'Mst. Nishat Jaman Nisha', 'Barguna', '2026-02-18', '2026-02-20', 'Delivered', 3500, 3500, 1, 100);
INSERT INTO orders VALUES (517, 1, 'Md. Rafijur Rahman', 'Patuakhali', '2026-02-20', '2026-02-22', 'Delivered', 2900, 2900, 2, 0);
INSERT INTO orders VALUES (518, 18, 'Md.mehedi Hasan', 'Pirojpur', '2026-02-22', '2026-02-25', 'Delivered', 1700, 1700, 2, 0);
INSERT INTO orders VALUES (519, 19, 'Al Mahmud Alif', 'Patuakhali', '2026-02-24', '2026-02-27', 'Delivered', 2050, 2050, 2, 0);
INSERT INTO orders VALUES (520, 20, 'Manotosh Halder', 'Pirojpur', '2026-02-26', '2026-03-01', 'Delivered', 2800, 2800, 1, 0);
INSERT INTO orders VALUES (521, 21, 'Durjoy Malakar', 'Barguna', '2026-02-28', '2026-03-02', 'Delivered', 2400, 2400, 1, 0);
INSERT INTO orders VALUES (522, 22, 'Md. Nayeem Molla', 'Barguna', '2026-03-01', '2026-03-04', 'Delivered', 2250, 2250, 3, 100);
INSERT INTO orders VALUES (523, 23, 'M.a.idris', 'Bhola', '2026-03-03', '2026-03-05', 'Delivered', 1290, 1290, 5, 0);
INSERT INTO orders VALUES (524, 24, 'Aminul Islam Khalifa', 'Barguna', '2026-03-05', '2026-03-07', 'Delivered', 1200, 1200, 2, 0);
INSERT INTO orders VALUES (525, 26, 'Eti Akter', 'Pirojpur', '2026-03-07', '2026-03-10', 'Delivered', 1900, 1900, 2, 0);
INSERT INTO orders VALUES (526, 27, 'Most. Inu Mony', 'Jhalokathi', '2026-03-09', '2026-03-12', 'Delivered', 1800, 1800, 1, 0);
INSERT INTO orders VALUES (527, 28, 'Asadujjaman Niaz', 'Jhalokathi', '2026-03-11', '2026-03-14', 'Delivered', 2500, 2500, 2, 0);
INSERT INTO orders VALUES (528, 29, 'Md.hasibur Rahman', 'Barishal', '2026-03-13', '2026-03-15', 'Delivered', 1450, 1450, 3, 100);
INSERT INTO orders VALUES (529, 1, 'Md. Rafijur Rahman', 'Patuakhali', '2026-03-15', '2026-03-17', 'Delivered', 2560, 2560, 7, 0);
INSERT INTO orders VALUES (530, 30, 'Md. Mehedi Hasan', 'Patuakhali', '2026-03-16', '2026-03-18', 'Delivered', 2450, 2450, 2, 0);
INSERT INTO orders VALUES (531, 32, 'Jihad Hossain Niloy', 'Pirojpur', '2026-03-17', '2026-03-19', 'Delivered', 3150, 3150, 2, 0);
INSERT INTO orders VALUES (532, 33, 'Rumana Islam Akhi', 'Bhola', '2026-03-18', '2026-03-20', 'Delivered', 2400, 2400, 1, 0);
INSERT INTO orders VALUES (533, 34, 'Mst.monia', 'Barishal', '2026-03-19', '2026-03-21', 'Delivered', 3350, 3350, 2, 0);
INSERT INTO orders VALUES (534, 35, 'Arnob Biswas', 'Pirojpur', '2026-03-20', '2026-03-22', 'Delivered', 2550, 2550, 3, 100);
INSERT INTO orders VALUES (535, 36, 'Shimul Mistry', 'Jhalokathi', '2026-03-21', '2026-03-23', 'Delivered', 1650, 1650, 1, 0);
INSERT INTO orders VALUES (536, 37, 'Alock Barai', 'Bhola', '2026-03-22', '2026-03-24', 'Delivered', 1210, 1210, 4, 0);
INSERT INTO orders VALUES (537, 38, 'Rukaya Binte Sharna', 'Barguna', '2026-03-23', '2026-03-25', 'Delivered', 1500, 1500, 2, 0);
INSERT INTO orders VALUES (538, 39, 'Most. Sarmi Akter', 'Barguna', '2026-03-24', '2026-03-26', 'Delivered', 2750, 2750, 2, 0);
INSERT INTO orders VALUES (539, 40, 'Ratanobarai', 'Barishal', '2026-03-25', '2026-03-27', 'Delivered', 2950, 2950, 2, 0);
INSERT INTO orders VALUES (540, 41, 'Md. Khairulislam', 'Barishal', '2026-03-26', '2026-03-28', 'Delivered', 2800, 2800, 1, 100);
INSERT INTO orders VALUES (541, 42, 'Apurbo Halder', 'Barishal', '2026-03-27', '2026-03-29', 'Delivered', 1300, 1300, 2, 0);
INSERT INTO orders VALUES (542, 43, 'Israt Jahan Tanni', 'Jhalokathi', '2026-03-28', '2026-03-30', 'Delivered', 1550, 1550, 3, 0);
INSERT INTO orders VALUES (543, 44, 'Aysha Akter Jerin', 'Barishal', '2026-03-28', NULL, 'Processing', 2030, 2030, 2, 0);
INSERT INTO orders VALUES (544, 46, 'Kazi Asraful Islam', 'Jhalokathi', '2026-03-29', NULL, 'Processing', 2400, 2400, 1, 0);
INSERT INTO orders VALUES (545, 47, 'Md. Mizanur Rahman', 'Barguna', '2026-03-29', NULL, 'Pending', 2450, 2450, 2, 0);
INSERT INTO orders VALUES (546, 48, 'Md. Sakib Bepari', 'Barguna', '2026-03-30', NULL, 'Pending', 3250, 3250, 2, 100);
INSERT INTO orders VALUES (547, 2, 'Saiful Islam Nuhash', 'Pirojpur', '2026-03-30', '2026-03-31', 'Delivered', 1200, 1200, 2, 0);
INSERT INTO orders VALUES (548, 1, 'Md. Rafijur Rahman', 'Patuakhali', '2026-03-31', '2026-03-31', 'Delivered', 2250, 2250, 3, 0);
INSERT INTO order_items VALUES (1001, 501, 102, 2, 2400);
INSERT INTO order_items VALUES (1002, 501, 114, 1, 3500);
INSERT INTO order_items VALUES (1003, 502, 113, 1, 2800);
INSERT INTO order_items VALUES (1004, 502, 105, 1, 1800);
INSERT INTO order_items VALUES (1005, 503, 113, 1, 2800);
INSERT INTO order_items VALUES (1006, 503, 104, 1, 650);
INSERT INTO order_items VALUES (1007, 504, 102, 1, 2400);
INSERT INTO order_items VALUES (1008, 505, 101, 2, 850);
INSERT INTO order_items VALUES (1009, 505, 103, 1, 350);
INSERT INTO order_items VALUES (1010, 506, 115, 1, 1650);
INSERT INTO order_items VALUES (1011, 506, 108, 2, 250);
INSERT INTO order_items VALUES (1012, 507, 116, 2, 1250);
INSERT INTO order_items VALUES (1013, 508, 102, 1, 2400);
INSERT INTO order_items VALUES (1014, 508, 101, 1, 850);
INSERT INTO order_items VALUES (1015, 509, 104, 2, 650);
INSERT INTO order_items VALUES (1016, 509, 107, 5, 120);
INSERT INTO order_items VALUES (1017, 510, 111, 2, 550);
INSERT INTO order_items VALUES (1018, 510, 112, 2, 380);
INSERT INTO order_items VALUES (1019, 511, 101, 1, 850);
INSERT INTO order_items VALUES (1020, 511, 115, 1, 1650);
INSERT INTO order_items VALUES (1021, 512, 105, 1, 1800);
INSERT INTO order_items VALUES (1022, 513, 106, 2, 950);
INSERT INTO order_items VALUES (1023, 514, 104, 3, 650);
INSERT INTO order_items VALUES (1024, 515, 102, 1, 2400);
INSERT INTO order_items VALUES (1025, 515, 103, 2, 350);
INSERT INTO order_items VALUES (1026, 516, 114, 1, 3500);
INSERT INTO order_items VALUES (1027, 517, 115, 1, 1650);
INSERT INTO order_items VALUES (1028, 517, 116, 1, 1250);
INSERT INTO order_items VALUES (1029, 518, 101, 2, 850);
INSERT INTO order_items VALUES (1030, 519, 105, 1, 1800);
INSERT INTO order_items VALUES (1031, 519, 108, 1, 250);
INSERT INTO order_items VALUES (1032, 520, 113, 1, 2800);
INSERT INTO order_items VALUES (1033, 521, 102, 1, 2400);
INSERT INTO order_items VALUES (1034, 522, 104, 2, 650);
INSERT INTO order_items VALUES (1035, 522, 106, 1, 950);
INSERT INTO order_items VALUES (1036, 523, 111, 1, 550);
INSERT INTO order_items VALUES (1037, 523, 112, 1, 380);
INSERT INTO order_items VALUES (1038, 523, 107, 3, 120);
INSERT INTO order_items VALUES (1039, 524, 101, 1, 850);
INSERT INTO order_items VALUES (1040, 524, 103, 1, 350);
INSERT INTO order_items VALUES (1041, 525, 116, 1, 1250);
INSERT INTO order_items VALUES (1042, 525, 104, 1, 650);
INSERT INTO order_items VALUES (1043, 526, 105, 1, 1800);
INSERT INTO order_items VALUES (1044, 527, 115, 1, 1650);
INSERT INTO order_items VALUES (1045, 527, 101, 1, 850);
INSERT INTO order_items VALUES (1046, 528, 106, 1, 950);
INSERT INTO order_items VALUES (1047, 528, 108, 2, 250);
INSERT INTO order_items VALUES (1048, 529, 101, 2, 850);
INSERT INTO order_items VALUES (1049, 529, 107, 4, 120);
INSERT INTO order_items VALUES (1050, 529, 112, 1, 380);
INSERT INTO order_items VALUES (1051, 530, 104, 1, 650);
INSERT INTO order_items VALUES (1052, 530, 105, 1, 1800);
INSERT INTO order_items VALUES (1053, 531, 113, 1, 2800);
INSERT INTO order_items VALUES (1054, 531, 103, 1, 350);
INSERT INTO order_items VALUES (1055, 532, 102, 1, 2400);
INSERT INTO order_items VALUES (1056, 533, 102, 1, 2400);
INSERT INTO order_items VALUES (1057, 533, 106, 1, 950);
INSERT INTO order_items VALUES (1058, 534, 106, 2, 950);
INSERT INTO order_items VALUES (1059, 534, 104, 1, 650);
INSERT INTO order_items VALUES (1060, 535, 115, 1, 1650);
INSERT INTO order_items VALUES (1061, 536, 101, 1, 850);
INSERT INTO order_items VALUES (1062, 536, 107, 3, 120);
INSERT INTO order_items VALUES (1063, 537, 116, 1, 1250);
INSERT INTO order_items VALUES (1064, 537, 108, 1, 250);
INSERT INTO order_items VALUES (1065, 538, 105, 1, 1800);
INSERT INTO order_items VALUES (1066, 538, 106, 1, 950);
INSERT INTO order_items VALUES (1067, 539, 102, 1, 2400);
INSERT INTO order_items VALUES (1068, 539, 111, 1, 550);
INSERT INTO order_items VALUES (1069, 540, 113, 1, 2800);
INSERT INTO order_items VALUES (1070, 541, 104, 2, 650);
INSERT INTO order_items VALUES (1071, 542, 101, 1, 850);
INSERT INTO order_items VALUES (1072, 542, 103, 2, 350);
INSERT INTO order_items VALUES (1073, 543, 115, 1, 1650);
INSERT INTO order_items VALUES (1074, 543, 112, 1, 380);
INSERT INTO order_items VALUES (1075, 544, 102, 1, 2400);
INSERT INTO order_items VALUES (1076, 545, 105, 1, 1800);
INSERT INTO order_items VALUES (1077, 545, 104, 1, 650);
INSERT INTO order_items VALUES (1078, 546, 102, 1, 2400);
INSERT INTO order_items VALUES (1079, 546, 101, 1, 850);
INSERT INTO order_items VALUES (1080, 547, 101, 1, 850);
INSERT INTO order_items VALUES (1081, 547, 103, 1, 350);
INSERT INTO order_items VALUES (1082, 548, 104, 2, 650);
INSERT INTO order_items VALUES (1083, 548, 106, 1, 950);
INSERT INTO departments VALUES (1, 'Technology');
INSERT INTO departments VALUES (2, 'Operations');
INSERT INTO departments VALUES (3, 'Customer Support');
INSERT INTO departments VALUES (4, 'Research & Development');
INSERT INTO employees VALUES (1, 1, 'Md. Rafijur Rahman', 1, NULL, 95000, '2023-01-01');
INSERT INTO employees VALUES (2, 2, 'Saiful Islam Nuhash', 1, 1, 72000, '2023-06-15');
INSERT INTO employees VALUES (3, 3, 'Shadia Naznin Mim', 2, 1, 68000, '2023-08-01');
INSERT INTO employees VALUES (4, 4, 'Prithyraj Biswas', 1, 2, 52000, '2024-02-10');
INSERT INTO employees VALUES (5, 5, 'Shakhar Debnath', 2, 3, 48000, '2024-03-15');
INSERT INTO employees VALUES (6, 6, 'Shamic Biswas', 3, 1, 55000, '2023-11-01');
INSERT INTO employees VALUES (7, 7, 'Md. Saikot Munshi', 3, 6, 42000, '2024-05-10');
INSERT INTO employees VALUES (8, 8, 'Naima Sultana', 3, 6, 40000, '2024-06-01');
INSERT INTO employees VALUES (9, 9, 'Akash Chandra Barai', 1, 2, 45000, '2024-07-15');
INSERT INTO employees VALUES (10, 10, 'Sadia Islam', 2, 3, 46000, '2024-08-01');
