-- Selecting values

--select only names include 'Hair' in part_num columns from parts and order by part_num in. 
select * from parts where name like '%Hair%' order by part_num desc;

--from set, select all sets include the word 'Showdown' in name and between 1990-2015
select * from sets where name like '%Showdown%' and year between 1990 and 2015;

--Aliasing the part_categories table as p, show the id and name of the values in that table where the name includes the word 'Bricks'
select p.id, p.name from part_categories as p where p.name like '%Bricks%';




-- Subqueries

-- Select all the ids from the themes table with 'Pirates' or 'Star Wars' in the name. 
-- Then show the names of all the sets where the theme_id matches an id in that subquery.
select name, theme_id from sets
where theme_id in (select id from themes
                	where name in ('Pirates', 'Star Wars'));
                    
-- Select the ids of the values in the inventories table that have more than one version (i.e. version > 1).
-- Then select everything from the inventory_parts table where the inventory_id matches an id in that subquery. 
-- Limit the output to 10 rows.
select * from inventory_parts
where inventory_id in (select id from inventories 
  						        where version > 1) limit 10;




--Manipulate values

--concat '!!!' and upper case from sets
select s.year, s.name, upper(concat(s.name, '!!!')) as new_name from sets s where s.name like '%Batman%';

--if quantity > 1 in inventory_parts table, quantity *2, order by quantity
select *, (quantity *2) as times_two from inventory_parts where quantity > 1 order by quantity limit 20;