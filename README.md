For this project - I am creating a eCommerce System.

//

Objective - Create a simple eCommerce system to manage product, customers, and orders.

Requriements
Database - eCommerceDB
Tables:
    Products: productid(PrimeKey), name, description, price, stock_quantity

    Customers: customerid(primekey), first, last, email, phone, address

    Orders: order_id(primeKey), customerid(forkey), orderdate, status

    OrderItems: order_item_id(primeky), order_id(forkey), productid(forkey), quanity, price


Operations

"Insert" sample data into each table

"Create" queries to list all products, all customers, and all orders.

"Update" product stock when an order is placed

"Use" ORDER BY, GROUP BY, and aggreate functions to generate reports (totals sales by product, total orders by customer).

"Implement" ON DELETE CASCADE for Orders and OrderItems Relation

Learning Outcomes

Working with complex relation
Advanced queries with aggregation and grouping
implmenting referenital actions

