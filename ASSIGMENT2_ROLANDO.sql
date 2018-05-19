CREATE TABLE costumers (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    code_costumer DECIMAL (14,2) UNIQUE, 
    name_id INT NOT NULL, 
    FOREIGN KEY (name_id) REFERENCES transaction_(id) 
);
CREATE TABLE transaction_ (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    date_transaction DATE,
    cash DECIMAL (14,2), 
    	User_id INT NOT NULL, 
    FOREIGN KEY (transaction_id) REFERENCES transaction_product(id) 
);
CREATE TABLE transaction_product (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (transactions_id) REFERENCES transactions(id), 
    FOREIGN KEY (products_id) REFERENCES products(id) 
);
CREATE TABLE products (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    price DECIMAL (14,2),
    name VARCHAR(25) UNIQUE, 
    code_product DECIMAL (14,2),
    user_id INT NOT NULL, 
    FOREIGN KEY (user_id) REFERENCES transaction_product(id) 
);