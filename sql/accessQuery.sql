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