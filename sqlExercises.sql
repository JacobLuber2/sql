-- find all products
select * from bestbuy.products;
-- find all products that cost $1400
SELECT * FROM  bestbuy.products
WHERE products.Price = 1400.00;

-- find all products that cost $11.99 or $13.99
Select * from products where price = 11.99 or price = 13.99;
-- find all products that do NOT cost 11.99 - using NOT
select * from products where not price = 11.99;

-- find all products and sort them by price from greatest to least
select * from products order by price asc;


-- find all employees who don't have a middle initial
select * from employees where middleinitial is null;
-- find distinct product prices
select distinct products.price from products;
-- find all employees whose first name starts with the letter ‘j’
select * from employees where firstname like 'j%';

-- find all Macbooks
select * from products where name = 'macbook';


-- find all products that are on sale
select * from products where OnSale = true;

-- find the average price of all products
SELECT AVG(products.price) FROM bestbuy.products;

-- find all Geek Squad employees who don't have a middle initial
select * from employees where title = 'Geek Squad' and MiddleInitial is null;
-- find all products from the products table whose stock level is in the range 
select * from products where StockLevel between 500 and 1200