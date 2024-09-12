create database practice_db;
use practice_db;
create table employee_tb(emp_id int,emp_name varchar(30),department varchar(30),shift varchar(7),dateOfJoin date, salary int);
desc employee_tb;

insert into employee_tb values(1,"VISHNU","store keeping","a",'2020-08-24',15000);
insert into employee_tb values(2,"Bhargav","Billing","a",'2019-06-13',18000);
insert into employee_tb values(3, "vamsi", "manager"," ", "2014-02-14",40000);

select * from employee_tb;
INSERT INTO employee_tb (emp_id, emp_name, department, shift, dateOfJoin, salary) 
VALUES 
(4, 'RAVI', 'cashier', 'b', '2021-03-15', 18000),
(5, 'PRIYA', 'inventory', 'c', '2020-11-10', 16000),
(6, 'RAJ', 'store manager', 'a', '2019-05-28', 35000),
(7, 'KAVYA', 'sales', 'b', '2021-06-01', 17000),
(8, 'ADITYA', 'stock keeping', 'c', '2022-02-14', 15000),
(9, 'ANU', 'sales', 'b', '2020-12-22', 18000),
(10, 'KARTHIK', 'customer service', 'c', '2021-10-07', 14000);
select *from employee_tb;


CREATE TABLE mart_products (product_id INT ,product_name VARCHAR(50),category VARCHAR(30),price DECIMAL(10, 2),stock_quantity INT);

desc mart_products;

INSERT INTO mart_products (product_id, product_name, category, price, stock_quantity) 
VALUES 
(1, 'Rice', 'Grocery', 50.00, 100),
(2, 'Wheat', 'Grocery', 40.00, 80),
(3, 'Shampoo', 'Personal Care', 150.00, 200);
INSERT INTO mart_products (product_id, product_name, category, price, stock_quantity) 
VALUES 

(4, 'Soap', 'Personal Care', 30.00, 150),
(5, 'Milk', 'Dairy', 25.00, 50),
(6, 'Cheese', 'Dairy', 120.00, 40),
(7, 'Apple', 'Fruits', 80.00, 60),
(8, 'Mango', 'Fruits', 120.00, 30),
(9, 'Cooking Oil', 'Grocery', 180.00, 90),
(10, 'Bread', 'Bakery', 35.00, 120);

select * from mart_products;

CREATE TABLE mart_suppliers (supplier_id INT PRIMARY KEY,supplier_name VARCHAR(50),contact_person VARCHAR(50),contact_number VARCHAR(15),supply_category VARCHAR(30));
desc mart_suppliers;
ALTER TABLE mart_suppliers DROP PRIMARY KEY;
desc mart_suppliers;

INSERT INTO mart_suppliers (supplier_id, supplier_name, contact_person, contact_number, supply_category)
VALUES 
(1, 'Fresh Farms', 'Ram', '9876543210', 'Fruits'),
(2, 'Daily Dairy', 'Sita', '9988776655', 'Dairy'),
(3, 'Grocery Supplies', 'Mohan', '9123456789', 'Grocery'),
(4, 'Personal Care Plus', 'John', '9911223344', 'Personal Care'),
(5, 'Bread and Bakery', 'Alice', '9876543210', 'Bakery'),
(6, 'Oil Producers', 'Vikas', '9109876543', 'Grocery'),
(7, 'Super Veggies', 'Kiran', '9234567890', 'Vegetables'),
(8, 'Pure Grains', 'Lalith', '9123409876', 'Grocery'),
(9, 'Fruits Heaven', 'Naveen', '9023456789', 'Fruits'),
(10, 'Care Essentials', 'Divya', '9988776654', 'Personal Care');



CREATE TABLE mart_customers (customer_id INT ,customer_name VARCHAR(50),phone_number VARCHAR(15),email VARCHAR(50),membership_level VARCHAR(20));

INSERT INTO mart_customers (customer_id, customer_name, phone_number, email, membership_level) 
VALUES 
(1, 'Anil Kumar', '9876543210', 'anil@mail.com', 'Gold'),
(2, 'Sita Devi', '9123456789', 'sita@mail.com', 'Silver'),
(3, 'Ravi Teja', '9109876543', 'ravi@mail.com', 'Bronze'),
(4, 'Lakshmi Narayana', '9345678901', 'lakshmi@mail.com', 'Gold'),
(5, 'Ram Reddy', '9023456789', 'ram@mail.com', 'Bronze'),
(6, 'Rohini Sharma', '9182736450', 'rohini@mail.com', 'Silver'),
(7, 'Krishna Rao', '9987654321', 'krishna@mail.com', 'Gold'),
(8, 'Mohan Lal', '9876543212', 'mohan@mail.com', 'Bronze'),
(9, 'Priya Singh', '9988776655', 'priya@mail.com', 'Gold'),
(10, 'Raj Kumar', '9012345678', 'raj@mail.com', 'Silver');



desc mart_customers;

CREATE TABLE mart_sales (sale_id INT ,product_id INT,customer_id INT,employee_id INT,quantity_sold INT,sale_date DATE,total_amount DECIMAL(10, 2));

INSERT INTO mart_sales (sale_id, product_id, customer_id, employee_id, quantity_sold, sale_date, total_amount) 
VALUES 
(1, 1, 1, 2, 5, '2023-09-01', 250.00),
(2, 2, 2, 1, 3, '2023-09-02', 120.00),
(3, 3, 3, 3, 2, '2023-09-03', 300.00),
(4, 5, 4, 1, 10, '2023-09-04', 250.00),
(5, 7, 5, 6, 8, '2023-09-05', 640.00),
(6, 6, 6, 4, 2, '2023-09-06', 240.00),
(7, 9, 7, 8, 4, '2023-09-07', 720.00),
(8, 10, 8, 7, 5, '2023-09-08', 175.00),
(9, 4, 9, 9, 6, '2023-09-09', 180.00),
(10, 8, 10, 5, 7, '2023-09-10', 840.00);


