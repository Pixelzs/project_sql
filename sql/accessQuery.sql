-- To Access tables
-- To Update/Delete
-- To Sort and Group

-- EXECUTE THIS COMMAND TO UPDATE ORDERITEMS TO HAVE ACCURATE PAID PRICE FOR PRODUCT
UPDATE orderitems AS oi
JOIN products as p
    ON oi.product_id = p.product_id
SET
    oi.price = (p.price * oi.quantity)
WHERE
    oi.price = 0.00;

--
-- View Table Recipt
SELECT
    oi.order_item_id,
    c.first_name,
    c.last_name,
    c.email,
    p.name AS product_name,
    oi.quantity,
    oi.price AS total_order,
    o.order_date,
    o.order_status
FROM
    orderitems AS oi
JOIN
    orders AS o ON oi.order_id = o.order_id
JOIN
    customers AS c ON o.customer_id = c.customer_id
JOIN
    products AS p ON oi.product_id = p.product_id
ORDER BY 
    o.order_date DESC, oi.order_item_id ASC LIMIT 200;


--View Products table that ARE LOW AMOUNT in STOCK == Currently 5 items
SELECT * FROM products WHERE stock_quantity < 500;

-- Calculate total sales revenue == Currently $35,188.67
SELECT SUM(oi.price) AS total_revenue
FROM orderitems AS oi;

-- Calculate top three best selling products
SELECT
    p.product_id,
    p.name AS product_name,
    SUM(oi.quantity) AS total_quantity_ordered
FROM
    products AS p
JOIN
    orderitems AS oi ON p.product_id = oi.product_id
GROUP BY
    p.product_id, p.name
ORDER BY
    total_quantity_ordered DESC
LIMIT 3;

-- Show all purchases by spefic customer
SELECT
    c.first_name,
    c.last_name,
    c.email,
    o.order_id,
    o.order_date,
    p.name AS product_name,
    oi.quantity,
    oi.price
FROM
    customers AS c
JOIN
    orders AS o on c.customer_id = o.customer_id
JOIN
    orderitems AS oi ON o.order_id = oi.order_id
JOIN
    products AS p ON oi.product_id = p.product_id
WHERE
    c.first_name = 'Oswell' AND c.last_name = 'Ayllett'
ORDER BY 
    o.order_date DESC, o.order_id, oi.order_item_id;


--EDIT PRODUCT TABLE WITH REFERENCE TO Category
ALTER TABLE products
ADD COLUMN category_id INT;

ALTER TABLE products
ADD CONSTRAINT fk_category 
FOREIGN KEY (category_id) REFERENCES categories(category_id);

UPDATE products
SET category_id = FLOOR(1+(RAND()*6))
WHERE
    category_id IS NULL;

--SHow total number of products sold in each category
SELECT
    c.category_name,
    SUM(oi.quantity) AS total_products_sold
FROM
    categories AS c
JOIN
    products AS p ON c.category_id = p.category_id
JOIN
    orderitems AS oi ON p.product_id = oi.product_id
GROUP BY
    c.category_name
ORDER BY
    total_products_sold DESC;