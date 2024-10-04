-- Comments in SQL Start with dash-dash --
products_db=# INSERT INTO products (name, price, can_be_returned) VALUES ('chair', 44.00, false);
INSERT 0 1 --added a chair with price of 44.00 and false value for can_be_returned (INSERT 0 1 means 1 inserted to table)
products_db=# INSERT INTO products (name, price, can_be_returned) VALUES ('stool', 25.99, true); --added a stool with price of 25.99 and true value for can_be_returned
products_db=# INSERT INTO products (name, price, can_be_returned) VALUES ('table', 124.00, false); --added a table with price of 124.00 and false value for can_be_returned
products_db=# SELECT * FROM products -- lists table and all VALUES
products_db=# SELECT name FROM products; -- lists only name column
products_db=# SELECT name, price FROM products; -- lists name and price columns
products_db=# INSERT INTO products (name, price, can_be_returned) VALUES ('lamp', 30.00, true); --added a lamp with price of 30.00 and true value for can_be_returned
products_db=# SELECT FROM products WHERE can_be_returned = true; -- lists only products that can be returned
products_db=# SELECT FROM products WHERE price < 44.00; -- lists only products that are less than 44.00
products_db=# SELECT FROM products WHERE price BETWEEN 22.50 AND 99.99; -- lists only products that are between 22.50 and 99.99
products_db=# UPDATE products SET price = price - 20; -- subtracts 20 from all products
products_db=# DELETE FROM products WHERE price < 25; -- deletes all products that are less than 25
products_db=# UPDATE products SET price = price + 20; -- adds 20 to all products
products_db=# UPDATE products SET can_be_returned = true; -- changes all products to true for can_be_returned
products_db=# INSERT INTO products (name, price, can_be_returned) VALUES ('vanity', 250.00, true); -- added a vanity with price of 250.00 and true value for can_be_returned
