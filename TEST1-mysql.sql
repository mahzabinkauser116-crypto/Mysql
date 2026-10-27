Drop database if exists Shopping_Management;
create database Shopping_Management;
use Shopping_Management;
create table customer(
     customer_id Int PRIMARY KEY AUTO_INCREMENT,
     customer_name varchar(100) not null,
     Email varchar(100) unique,
     Phone varchar(10) not null,
     Age tinyint unsigned check(age>0),
     Gender ENUM('Male','Female','Others') DEFAULT 'Others',
     Country varchar(50) default 'India',
     City varchar(50),
     Pincode varchar(6) default '201301',
     Registration_date_at DATE default (CURRENT_DATE),
     Registration_time_at TIME default (CURRENT_TIME),
     Created_at_datetime TIMESTAMP DEFAULT (CURRENT_TIMESTAMP),
     Address varchar(250) NOT NULL,
     customer_status ENUM('Active','Inactive','Blocked') default 'Active',
     cutomer_notes tinytext)
     ENGINE = InnoDB;
     
     CREATE TABLE orders(
          Order_id INT PRIMARY KEY AUTO_INCREMENT,
          Customer_id INT,
          Order_Date DATE DEFAULT (CURRENT_DATE),
          Order_Amount DECIMAL(10,2) NOT NULL,
          Order_Status ENUM('Pending','Shipped','Delivered','Cancelled') default 'Pending',
          Payment_method ENUM('Cash','Card','UPI','Netbanking'),
          Payment_Status ENUM('Pending','Paid','Failed') default 'Pending',
          Shipping_Address varchar(250) NOT NULL,
          Delivery_Pincode varchar(6) NOT NULL,
          Quantity tinyint unsigned check(Quantity>0),
          Discount_Amount DECIMAL(10,2) default '0',
          Delivery_Date DATE DEFAULT NULL,
          created_at TIMESTAMP DEFAULT (CURRENT_TIMESTAMP),
          Tracking_Number varchar(30) UNIQUE,
          Delivery_Status ENUM('Not Dispatched','Delivered','Returned') default 'Not Dispatched',
          Order_Notes tinytext,
          CONSTRAINT fk_customer_orders 
          FOREIGN KEY (Customer_id) REFERENCES Customer(customer_id) ON DELETE CASCADE,
          FOREIGN KEY (Customer_id) REFERENCES Customer(customer_id) ON UPDATE CASCADE
          
          ) ENGINE = InnoDB;
          
          SHOW TABLES;
          DESCRIBE customer;
          DESCRIBE Orders;
          
     
     
     
     
     
     
     



