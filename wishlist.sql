
-- all on sale
select * from products where  on_sale = 't';
-- all less than 20$
select * from products where price < 20;
-- name and price of most expensive
select name, price from products where price = (select max(price) from products);
-- Selects the name and price of the second most expensive product.
SELECT max(price), name FROM products where price < (select max(price) from products);
-- Selects the name and price of the least expensive product.
select name, price from products where price = (select min(price) from products);
-- Selects the names and prices of all products, ordered by price in descending order.
select * from products order by price desc;