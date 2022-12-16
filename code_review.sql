-- Selecting values

--select only names include 'Hair' in part_num columns from parts and order by part_num in. 
select * from parts where name like '%Hair%' order by part_num desc;

--from set, select all sets include the word 'Showdown' in name and between 1990-2015
select * from sets where name like '%Showdown%' and year between 1990 and 2015;

--Aliasing the part_categories table as p, show the id and name of the values in that table where the name includes the word 'Bricks'
select p.id, p.name from part_categories as p where p.name like '%Bricks%';



