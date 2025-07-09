For this project - I am creating a eCommerce System.

// Execute create db ecommerece then schema and one more for inserting the data


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



LOAD DATA LOCAL INFILE "D:\customer.csv"
INTO TABLE customers
FIELDS TERMINATED BY ','
LINES TERMINATED BY "\r\n"
IGNORE 1 LINES;


123 Fake Street London, 456 Mock Avenue Manchester, 789 Pretend Road Birmingham, 10 Fictional Lane Liverpool, 321 Imaginary Drive Leeds, 555 Make-Believe Court Glasgow, 888 Dream Street Bristol, 777 Fantasy Avenue Sheffield, 444 Fictitious Road Newcastle, 666 Unreal Lane Nottingham, 222 Whimsical Drive Cardiff, 999 Illusion Court Belfast, 333 Imagined Street Edinburgh, 111 Pretend Avenue Southampton, 777 Fictional Road Coventry, 555 Make-Believe Lane Bradford, 888 Dream Drive Brighton, 666 Unreal Court Derby, 222 Whimsical Street Cambridge, 999 Illusion Avenue Oxford, 333 Imagined Road York, 111 Pretend Lane Swansea, 777 Fantasy Drive, Plymouth, 555 Fictitious Court, Norwich, 888 Dream Lane, Aberdeen, 666 Unreal Road, Southampton, 222 Whimsical Avenue, Portsmouth, 999 Illusion Drive, Exeter, 333 Imagined Lane, Dundee, 111 Pretend Road, Inverness, 777 Fictional Drive, Blackpool, 555 Make-Believe Avenue, Bath, 888 Dream Street, Luton, 666 Unreal Avenue, Reading, 222 Whimsical Road, Milton Keynes, 999 Illusion Lane, Wolverhampton, 333 Imagined Drive, Stoke-on-Trent, 111 Pretend Court, Coventry, 777 Fantasy Street, Leicester, 555 Fictitious Avenue, Swindon, 888 Dream Lane, Warrington, 666 Unreal Drive, Croydon, 222 Whimsical Court, Slough, 999 Illusion Street, Bournemouth, 333 Imagined Avenue, Peterborough, 111 Pretend Lane, Ipswich, 777 Fictional Road, Colchester, 555 Make-Believe Drive, Chelmsford, 888 Dream Lane, Maidstone, 666 Unreal Street, Canterbury, 222 Whimsical Avenue, Dover, 999 Illusion Road, Folkestone, 333 Imagined Lane, Ashford, 111 Pretend Drive, Margate, 777 Fantasy Street, Ramsgate, 555 Fictitious Avenue, Tunbridge Wells, 888 Dream Lane, Sevenoaks, 666 Unreal Road, Tonbridge, 222 Whimsical Drive, Rochester, 999 Illusion Court, Gillingham, 333 Imagined Street, Dartford, 111 Pretend Avenue, Gravesend, 777 Fictional Lane, Sittingbourne, 555 Make-Believe Drive, Faversham, 888 Dream Street, Whitstable, 666 Unreal Avenue, Herne Bay, 222 Whimsical Road, Broadstairs, 999 Illusion Lane, Deal, 333 Imagined Drive, Sandwich, 111 Pretend Street, Ramsgate, 777 Fantasy Avenue, Canterbury, 555 Fictitious Lane, Folkestone, 888 Dream Road, Ashford, 666 Unreal Drive, Maidstone, 222 Whimsical Court, Tunbridge Wells, 999 Illusion Street, Sevenoaks, 333 Imagined Avenue, Tonbridge, 111 Pretend Lane, Rochester