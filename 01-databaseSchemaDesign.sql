CREATE DATABASE Agromart;
\c Agromart
-- Customer table
CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    username VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone_number VARCHAR(30) NOT NULL,
    registration_date TIMESTAMP NOT NULL
);

-- Products table
CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,
    vendor_id INT REFERENCES Customers(customer_id),
    product_name VARCHAR(100) NOT NULL,
    product_description TEXT,
    price NUMERIC(10, 2) NOT NULL,
    quantity_available INT NOT NULL,    
    date_added TIMESTAMP NOT NULL
);

-- Orders table
CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    buyer_id INT REFERENCES Customers(customer_id),
    product_id INT REFERENCES Products(product_id),
    quantity_ordered INT NOT NULL,
    total_price NUMERIC(10, 2) NOT NULL,
    order_date TIMESTAMP NOT NULL);

-- Reviews table
CREATE TABLE Customers_Reviews (
    review_id SERIAL PRIMARY KEY,
    product_id INT REFERENCES Products(product_id),
    reviewer_id INT REFERENCES Customers(customer_id),
    rating INT NOT NULL,
    review_text TEXT,
    review_date TIMESTAMP NOT NULL
);
CREATE TABLE Categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

