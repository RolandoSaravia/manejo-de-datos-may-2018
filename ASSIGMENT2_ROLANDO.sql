CREATE TABLE custumers (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    customer_code DECIMAL (14,2) UNIQUE,
);
CREATE TABLE transactions (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    price DECIMAL (14,2), 
    discount DECIMAL (14,2),
    payment_method VARCHAR (15)
    FOREIGN KEY (customers_id) REFERENCES customers (id) 
);
CREATE TABLE transactions_products (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (transactions_id) REFERENCES transactions(id), 
    FOREIGN KEY (products_id) REFERENCES products(id) 
);
CREATE TABLE products (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(25), 
    barcode DECIMAL (14,2) UNIQUE,
    category VARCHAR (15),
);
