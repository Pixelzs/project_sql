-- Active: 1750669047062@@127.0.0.1@3306@e_commerece_db
CREATE TABLE IF NOT EXISTS products(
    product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(100) NOT NULL,
    price DECIMAL(19, 4) NOT NULL,
    stock_quantity INT NOT NULL
);


CREATE TABLE IF NOT EXISTS customers(
    customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20) NOT NULL,
    customer_address VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS orders(
    order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    CONSTRAINT fk_customer FOREIGN KEY(customer_id)
    REFERENCES customers(customer_id),
    order_date DATETIME NOT NULL,
    order_status VARCHAR(50) NOT NULL
);
CREATE TABLE IF NOT EXISTS orderItems(
    order_item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    CONSTRAINT fk_order FOREIGN KEY(order_id)
    REFERENCES Orders(order_id),
    product_id INT NOT NULL,
    CONSTRAINT fk_product FOREIGN KEY(product_id)
    REFERENCES products(product_id),
    quantity INT NOT NULL,
    price DECIMAL(19, 4) NOT NULL DEFAULT 0.00
);
