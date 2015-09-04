
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
-- Selects the average price of all products.
select avg(price) from products;
-- Selects the sum of the price of all products.
select sum(price) from products;
-- Selects the sum of the price of all products whose prices is less than £20
select sum(price) from products where price < 20;
-- Selects the id of the user with your name.
select id from users where name = 'Tyrone Compton';
-- Selects the names of all users whose names start with the letter "J".
select name from users where name like 'j%';
-- Selects the number of users whose first names are "Spencer".
select id from users where name like 'spencer%';
-- Selects the number of users who want a "Teddy Bear".
select id from products where name = 'Teddy Bear';
-- Selects the number of users who want a "Teddy Bear".
select count(user_id) from wishlists where product_id = (select id from products where name = 'Teddy Bear');
-- Selects the count of items on the wishlish of the user with your name.
select count(user_id) from wishlists where user_id = (select id from users where name = 'Tyrone Compton');
-- Selects the count and name of all products on the wishlist, ordered by count in descending order.

-- Selects the count and name of all products that are not on sale on the wishlist, ordered by count in descending order.

-- Inserts a user with the name "Jonathan Anderson" into the users table. Ensure the created_at column is set to the current time.
insert into users(id, created_at, name) values(15, current_timestamp, "Jonathan Anderson");
-- Inserts a wishlist entry for the user with the name "Jonathan Anderson" for the product "The Ruby Programming Language".
insert into wishlists(id, created_at, user_id, product_id) values(78, current_timestamp, 15, 4);
-- Updates the name of the "Jonathan Anderson" user to be "Jon Anderson".
update users set name='Jon Anderson' where name = 'Jonathan Anderson';
-- Deletes the user with the name "Jon Anderson".
delete from users where name = 'Jon Anderson';
-- Deletes the wishlist item for the user you just deleted.
delete from wishlists where user_id = 15;







