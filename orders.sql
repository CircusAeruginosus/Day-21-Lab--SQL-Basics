-- //Problem 1 - Create a table called orders that records order_id, person_id, product_name, product_price, and quantity//
CREATE TABLE orders (
order_id SERIAL PRIMARY KEY,
person_id INTEGER,
product_name VARCHAR(30),
product_price NUMERIC,
quantity INTEGER
);

-- //Problem 2 - Add 5 orders to the orders table (make orders for at least 2 different people; person_id should be different for different people//
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES
 (1, 'pizza', 9.99, 2),
 (2, 'lasagna', 12.99, 1),
 (3, 'ravioli', 8.99, 3),
 (4, 'spaghetti', 10.99, 1),
 (5, 'tiramisu', 5.99, 2);

--  //Problem 3 - Select all the records from the orders table//
 SELECT * FROM orders

--  //Problem 4 - Calculate the total number of products ordered//
SELECT SUM(quantity) FROM orders;

-- //Problem 5 - Calculate the total order price//
SELECT SUM(product_price * quantity) FROM orders;

-- //Problem 6 - Calculate the total order price by a single person_id//
SELECT SUM(product_price * quantity) FROM orders
WHERE person_id = 1.2;
