CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoice;
DROP TABLE IF EXISTS car;
DROP TABLE IF EXISTS cust;
DROP TABLE IF EXISTS salesperson;

CREATE TABLE cust (
    cust_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    phone VARCHAR(50),
    email VARCHAR(50),
    address VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    zipcode VARCHAR(10)
);

CREATE TABLE car (
    vin VARCHAR(50) PRIMARY KEY,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    car_year YEAR,
    color_id VARCHAR(50)
);

CREATE TABLE salesperson (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    staff_name VARCHAR(50),
    store VARCHAR(12)
);

CREATE TABLE invoice (
    inv_num INT AUTO_INCREMENT PRIMARY KEY,
    inv_date DATE NOT NULL,
    car_id VARCHAR(50),
    cust_id INT,
    staff_id INT,
    CONSTRAINT fk_car_id FOREIGN KEY (car_id) REFERENCES car(vin),
    CONSTRAINT fk_cust_id FOREIGN KEY (cust_id) REFERENCES cust(cust_id),
    CONSTRAINT fk_salesperson_id FOREIGN KEY (staff_id) REFERENCES salesperson(staff_id),
    CONSTRAINT unique_invoice_number UNIQUE (inv_num)
);
