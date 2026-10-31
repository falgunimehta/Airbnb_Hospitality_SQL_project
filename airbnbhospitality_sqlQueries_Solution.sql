create database airbnb;
use airbnb;

select * from airbnb1;
select * from airbnb2;


#q1 import data from both the .csv files to create tables, listings and booking details.
show tables;
select * from listing 2;
select * from booking_details 1;

#q2 write a query to show names from airbnb2 table
select name from airbnb2;

#q3 write a query to fetch total listings from the airbnb2 table
select count(id) from airbnb2;

#q4 write a query to fetch total listing_id from the airbnb1 table
select count(listing_id) from airbnb1;

#q5 write a query to fetch host ids from airbnb2 table
select host_id from airbnb2;

#q6 write a query to fetch all unique host name from airbnb2 table
select distinct host_name from airbnb2;

#q7 write a query to show all unique neighbourhood_group from airbnb2 table
select distinct neighbourhood_group  from airbnb2;

#q8 write a query to show all unique neighbourhood from airbnb2 table
select distinct neighbourhood  from airbnb2;

#q9 write a query to fetch unique room_type from airbnb2 tables
select distinct room_type from airbnb2;

#q10 write a query to show all values of brooklyn & manhattan from airbnb2 tables
select * from airbnb2 where neighbourhood_group in ('brooklyn','manhattan');

#q11 write a query to show maximum price from airbnb1 table
select max(price) from airbnb1;

#q12 write a query to show minimum price fron airbnb1 table
select min(price) from airbnb1; 

#q13 write a query to show average price from airbnb1 table
select avg(price) from airbnb1;

#q14 write a query to show minimum value of  minimum_nights from airbnb1 table
select min(minimum_nights) from airbnb1;

#q15 write a query to show maximum value of minimum_nights from airbnb1 table
select max(minimum_nights) from airbnb1;

#q16 write a query to show average availability_365 
select avg(availability_365) from airbnb1;

#q17 write a query to show id , availability_365 and all availability_365 values greater than 300
select listing_id , availability_365 from airbnb1
where availability_365 >300;

#q18 write a query to show count of id where price is in between 300 to 400
select count(listing_id) from airbnb1 
where price between 300 and 400;

#q19 write a query to show count of id  where minimum_nights spend is less than 5
select count(listing_id) from airbnb1 
where minimum_nights <5;

#q20 write a query to show count where minimum_nights spend is greater than 100
select count(listing_id) from airbnb1 
where minimum_nights >100;

#q21 write a query to show all data of airbnb2 & airbnb1
select * from airbnb2 a2 inner join airbnb1 a1 on a2.id =a1.listing_id;

#q22 write a query to show host name and price 
select a2.host_name , a1.price 
from airbnb2 a2 inner join airbnb1 a1 on a2.id = a1.listing_id;

#q23 write a query to show room_type and price
select a2.room_type,a1.price 
from airbnb2 a2 inner join airbnb1 a1 
on a2.id = a1.listing_id;

#q24 write a query to show neighbourhood_group & minimum_nights spend
select a2.neighbourhood_group ,a1.minimum_nights 
from airbnb2 a2 inner join airbnb1 a1 on a2.id = a1.listing_id;

#q25 write a query to show neighbourhood & availability_365
select a2.neighbourhood ,a1.availability_365 
from airbnb2 a2 inner join airbnb1 a1 on a2.id = a1.listing_id;

#q26 write a query to show total price by neighbourhood_group
select a2.neighbourhood_group, sum(a1.price) total_price 
from airbnb2 a2 inner join airbnb1 a1 on a2.id = a1.listing_id 
group by a2.neighbourhood_group;

#q27 write a query to show maximum price by neighbourhood_group
select  a2.neighbourhood_group,max(a1.price) max_price  
from airbnb2 a2 inner join airbnb1 a1 on a2.id = a1.listing_id
group by a2.neighbourhood_group;

#q28 write a query to show maximum night spend by neighbourhood_group
select  a2.neighbourhood_group, max(a1.minimum_nights) max_night
from airbnb2 a2 inner join airbnb1 a1 on a2.id = a1.listing_id 
group by a2.neighbourhood_group;

#q29 write a query to show maximum reviews_per_month spend by neighbourhood
select  a2.neighbourhood ,max(a1.reviews_per_month) max_review  
from airbnb2 a2 inner join airbnb1 a1 on a2.id = a1.listing_id 
group by a2.neighbourhood;

#q30 write a query to show maximum price by room type
select a2.room_type ,max(a1.price) max_price  
from airbnb2 a2 inner join airbnb1 a1 on a2.id = a1.listing_id 
group by a2.room_type;

#q31 write a query to show average number_of_reviews by room_type
select  a2.room_type ,avg(a1.number_of_reviews) average_no_reviews
from airbnb2 a2 inner join airbnb1 a1 on a2.id = a1.listing_id 
group by a2.room_type;

#q32 write a query to show average price by room type
select a2.room_type ,avg(a1.price) average_price 
from airbnb2 a2 inner join airbnb1 a1 on a2.id = a1.listing_id
group by a2.room_type;

#q33 write a query to show average night spend by room type
select a2.room_type ,avg(a1.minimum_nights) average_nights 
from airbnb2 a2 inner join airbnb1 a1 on a2.id = a1.listing_id
group by a2.room_type;

#q34 write a query to show average price by room type but average price is less than 100
select a2.room_type ,avg(a1.price) average_price 
from airbnb2 a2 inner join airbnb1 a1 on a2.id = a1.listing_id  
group by a2.room_type 
having average_price <100 ;

#q35 write a query to show average night by neighbourhood and average_nights is greater than 5
select a2.neighbourhood , avg(a1.minimum_nights) average_nights 
from airbnb2 a2 inner join airbnb1 a1 on a2.id = a1.listing_id 
group by a2.neighbourhood 
having average_nights > 5;

#q36 write a query to show all data from listings where price is greater than 200 using sub-query.
select * from airbnb2 where id in (select id from airbnb1 where price  > 200);

#q37 write a query to show all values from booking_details table where host id is 314941 using sub-query.
select * from airbnb1 where listing_id in ( select listing_id from airbnb2 where host_id = 314941);

#q38 find all pairs of id having the same host id, each pair coming once only.
select distinct a2.id , a22.host_id from airbnb2 a2, airbnb2 a22
where  a2.host_id = a22.host_id and a2.id  <> a22.id 
order by host_id;

#q39 write an sql query to show fetch all records that have the term cozy in name 
select * from airbnb2 where name like '%cozy%';

#q40 write an sql query to show price, host id, neighbourhood_group of manhattan neighbourhood_group
select a2.id , a2.host_name , a2.neighbourhood_group ,a1.price 
from airbnb2 a2 inner join airbnb1 a1 on a2.id = a1.listing_id
where a2.neighbourhood_group ='manhattan';


#q41 write a query to show id , host name, neighbourhood and price but only for upper west side & williamsburg neighbourhood, also make sure price is greater than 100
select a2.id , a2.host_name , a2.neighbourhood ,a1.price 
from airbnb2 a2 inner join airbnb1 a1 on a2.id = a1.listing_id
where a2.neighbourhood in ('upper west side','williamsburg') and a1.price >100;

#q42 write a query to show id , host name, neighbourhood and price for host name elise and neighbourhood is bedford-stuyvesant
select a2.id , a2.host_name , a2.neighbourhood, a1.price 
from airbnb2 a2 inner join airbnb1 a1 on a2.id = a1.listing_id
where a2.host_name = 'elise' and a2.neighbourhood = 'bedford-stuyvesant'; 

#q43 write a query to show host_name, availability_365,minimum_nights only for 100+ availability_365 and minimum_nights
select a2.id , a2.host_name ,a1.availability_365, a1.minimum_nights 
from airbnb2 a2 inner join airbnb1 a1 on a2.id = a1.listing_id
where a1.availability_365  >100 and a1.minimum_nights > 100;

#q44 write query to show to fetch id , host_name , number_of_reviews, and reviews_per_month but show only that records where number of reviews are 500+ and review per month is 5+
select a2.id , a2.host_name ,a1.number_of_reviews,a1.reviews_per_month
from airbnb2 a2 inner join airbnb1 a1 on a2.id = a1.listing_id
where a1.number_of_reviews  >500 and a1.reviews_per_month > 5;

#q45 write a query to show neighbourhood_group which have  most  total number of review 
select a2.neighbourhood_group, sum(a1.number_of_reviews) total_review
from airbnb2 a2 inner join airbnb1 a1 on a2.id = a1.listing_id
group by a2.neighbourhood_group order by total_review desc limit 1;

#q46 write a query to show host name which have most cheaper total price 
select a2.host_name, sum(a1.price) total_price
from airbnb2 a2 inner join airbnb1 a1 on a2.id = a1.listing_id
group by a2.host_name 
order by total_price asc limit 1;


#q47 write a query to show host name which have most costly total price 
select a2.host_name, sum(a1.price) total_price
from airbnb2 a2 inner join airbnb1 a1 on a2.id = a1.listing_id
group by a2.host_name
order by total_price desc limit 1;

#q48 write a query to show host name which have max price using sub-query
select a2.host_name ,a1.price
from airbnb2 a2 inner join airbnb1 a1 on a2.id = a1.listing_id
where a1.price in (select max(price) from airbnb1);

#q49 write a query to show neighbourhood_group where price is less than 100
select a2.neighbourhood_group , a1.price 
from airbnb2 a2 inner join airbnb1 a1 on a2.id = a1.listing_id
where a2.id in (select id from airbnb1 where price <100);

#q50 write a query to find max price, average availability_365 for each room type and order in ascending by maximum price
select a2.room_type ,a2.neighbourhood_group , max(a1.price)maximum_price , avg(a1.availability_365) average
from airbnb2 a2 inner join airbnb1 a1 on a2.id = a1.listing_id
group by a2.room_type,a2.neighbourhood_group 
order by maximum_price asc;


