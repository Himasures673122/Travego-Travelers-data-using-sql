create database Travego;
use travego;
create table passanger(passanger_id int,passanger_name varchar(20),category varchar(20),gender varchar(20),boarding_city varchar(20),destination_city varchar(20),distance int,bus_type varchar(20));
insert into  passanger values(1,'Sejal','AC','F','Bengaluru','Chennai',350,'Sleeper'),
								  (2,'Anmol','Non-AC','M','Mumbai','Hyderabad',700,'Sitting'),
								  (3,'Pallavi','AC','F','Panaji','Bengaluru',600,'Sleeper'),
                                  (4,'Khusboo','AC','F','Chennai','Mumbai',1500,'Sleeper'),
                                  (5,'Udit','Non-AC','M','Trivandrum','Panaji',1000,'Sleeper'),
                                  (6,'Ankur','AC','M','Nagpur','Hyderabad',500,'Sitting'),
                                  (7,'Hemant','Non-AC','M','Panaji','Mumbai',700,'Sleeper'),
                                  (8,'Manish','Non-AC','M','Hyderabad','Bengaluru',500,'Sitting'),
                                  (9,'Piyush','AC','M','Pune','Nagpur',700,'Sitting');
create table price(id int,bust_type varchar(20),distance int,price int);
insert into price values(1,'Sleeper',350,770),
						(2,'Sleeper',500,1100),
                        (3,'Sleeper',600,1320),
                        (4,'Sleeper',700,1540),
                        (5,'Sleeper',1000,2200),
                        (6,'Sleeper',1200,2640),
                        (7,'Sleeper',1500,2700),
                        (8,'Sitting',500,620),
                        (9,'Sitting',600,744),
                        (10,'Sitting',700,868),
                        (11,'Sitting',1000,1240),
                        (12,'Sitting',1200,1488),
                        (13,'Sitting',1500,1860);
		--- TASK 2
--- How many female passengers traveled a minimum distance of 600KMs?
select * from passanger;
select count(*) from passanger where gender='F' and distance>600;
--- Writeaquerytodisplaythepassengerdetailswhosetraveldistanceisgreaterthan500andwhoaretravelinginasleeperbus.
select * from passanger where distance>500 and bus_type="sleeper";
--- Selectpassengernameswhosenamesstartwiththecharacter'S'.
select * from passanger where passanger_name like  "S%";
--- Calculate the price charged for each passenger,displayingthePassengername,BoardingCity,DestinationCity,Bustype,andPrice in the output.
select * from price;
select * from passanger;
select p.passanger_name,p.boarding_city,p.destination_city,p.bus_type,t.price
 from passanger p left join price t on p.passanger_id=t.id;
--- What are the passengername(s)and the ticket price for those who traveled 1000KMs Sitting in a bus
select p.passanger_name,p.boarding_city,p.destination_city,p.bus_type,p.distance,t.price
 from passanger p left join price t on p.passanger_id=t.id where p.distance>1000 and p.bus_type='sleeper';
 --- What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to Panaji?
 select p.passanger_name,p.boarding_city,p.destination_city,p.bus_type,p.distance,t.price
 from passanger p left join price t on p.passanger_id=t.id where p.passanger_name = 'Pallavi'
AND p.boarding_city = 'Bangalore'
AND p.destination_city = 'Panaji';
--- Alter the column category with the value"Non-AC"where the Bus_Type is sleeper
update passanger set category="Non-AC" where bus_type="Sleeper";
--- Delete an entry from the table where the passenger name is Piyush and commit this change in the database
delete from passanger where passanger_name="piyush";
--- Truncate the table passenger and comment on the number of rows in the table
truncate table passanger;
--- Delete the table passenger from the database.
drop  table passanger;
 
 
 




