-- Create Start

-- Adding a new customer to the Customers table
INSERT INTO Customers (FirstName, LastName, username, email, phone_number, registration_date)
VALUES ('Rohimat', 'Mustapha', 'Heemah', 'rohimatmustapha7@gmail.com', '08063068974', NOW());

-- Adding a new product
INSERT INTO Products (vendor_id,product_name, product_description, price, quantity_available, date_added)
VALUES (1,'Fresh Apples', 'Sweet and crunchy apples', 2.99, 100, NOW());

-- Placing a new order
INSERT INTO Orders (quantity_ordered, total_price, order_date)
VALUES (3, 10.99, NOW());

-- Adding a new review
INSERT INTO Customers_Reviews (rating, review_text, review_date)
VALUES (4, 'Great product!', NOW());

--Adding a new category
INSERT INTO Categories (category_name)
VALUES ('Fruits');

-- Adding a new customer to the Customers table
INSERT INTO Customers (FirstName, LastName, username, email, phone_number, registration_date)
VALUES ('Faruk', 'Lawal', 'Fk_wurld', 'faruklawal18@gmail.com', '08036011836', NOW());

-- Adding a new product
INSERT INTO Products (product_name, product_description, price, quantity_available, date_added)
VALUES ('Spinach', 'Green Vegies', 33.22, 100, NOW());


-- Placing a new order
INSERT INTO Orders (quantity_ordered, total_price, order_date)
VALUES (5, 16.99, NOW());

-- Adding a new review
INSERT INTO Customers_Reviews (rating, review_text, review_date)
VALUES (5, 'Great product!', NOW());

--Adding a new category
INSERT INTO Categories (name)
VALUES ('Vegetables');

-- Create End

-- Read Start

-- Retrieving information about a specific customer

SELECT * FROM Customers WHERE FirstName ='Faruk';

-- Retrieving information about a specific product
SELECT * FROM Products WHERE product_name ='Spinach';

-- Find orders by a specific customer
SELECT Orders.order_id, Product.product_name, Ordered.quantity_ordered, Orders.total_price
FROM Orders 
JOIN Products  ON Product.product_id = Product.product_id
WHERE Order.buyer_id = 1;

-- Retrieving information about reviews
SELECT * FROM Customers_Reviews;
-- Read End

-- Update Start

-- Modifying customer information
UPDATE Customers
SET LastName = 'Lawal'
WHERE customer_id = 1;

-- Modifying product information
UPDATE Products
SET price = 3.49
WHERE product_id = 2;

-- Modifying order information
UPDATE Orders
SET quantity_ordered = 5
WHERE order_id = 1; 

-- Modifying Customers_Reviews information
UPDATE Customers_Reviews
SET rating = 5, review_text = 'Excellent product!'
WHERE review_id = 2; 

-- Modifying categories information
UPDATE Categories
SET name = 'Fresh Fruits'
WHERE category_id = 1; 
-- Update End

-- Delete start

-- Deleting a customer
DELETE FROM Customers
WHERE review_id = 1; 

-- Deleting a product
DELETE FROM Products
WHERE review_id = 1; 

-- Deleting an order
DELETE FROM Orders
WHERE review_id = 1; 

-- Deleting a review
DELETE FROM Customers_Reviews
WHERE review_id = 1; 












