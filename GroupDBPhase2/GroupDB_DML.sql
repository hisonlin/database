use carRental;

--customer
insert into customer (first_name, last_name, address, contact_no, email, date_of_birth, drive_license_no) values ('Viv', 'Winear', '88465 Hanson Park', '263-333-1639', 'vwinear0@geocities.jp', '1998-09-30', '2169837');
insert into customer (first_name, last_name, address, contact_no, email, date_of_birth, drive_license_no) values ('Ulises', 'Argabrite', '20 Esker Junction', '754-131-4468', 'uargabrite1@accuweather.com', '1961-07-06', '5598472');
insert into customer (first_name, last_name, address, contact_no, email, date_of_birth, drive_license_no) values ('Bradley', 'Joannidi', '8 Fremont Way', '473-406-6388', 'bjoannidi2@mysql.com', '1966-08-28', '7151020');
insert into customer (first_name, last_name, address, contact_no, email, date_of_birth, drive_license_no) values ('Corrina', 'MacKimm', '9 Green Hill', '827-275-5507', 'cmackimm3@ovh.net', '1968-03-05', '4233357');
insert into customer (first_name, last_name, address, contact_no, email, date_of_birth, drive_license_no) values ('Emmalyn', 'Marritt', '565 Roth Terrace', '491-601-9066', 'emarritt4@icq.com', '1971-06-22', '1574818');
insert into customer (first_name, last_name, address, contact_no, email, date_of_birth, drive_license_no) values ('Kym', 'Dabbes', '5439 Annamark Alley', '256-170-8850', 'kdabbes5@goo.gl', '1958-05-26', '3821161');
insert into customer (first_name, last_name, address, contact_no, email, date_of_birth, drive_license_no) values ('Ailene', 'Valentinuzzi', '872 Texas Pass', '202-184-7860', 'avalentinuzzi6@fastcompany.com', '1997-10-30', '5773166');
insert into customer (first_name, last_name, address, contact_no, email, date_of_birth, drive_license_no) values ('Dyana', 'Aumerle', '33 Eastwood Road', '768-226-8260', 'daumerle7@weebly.com', '1951-06-25', '4630975');
insert into customer (first_name, last_name, address, contact_no, email, date_of_birth, drive_license_no) values ('Michal', 'Binley', '913 Meadow Vale Terrace', '543-926-8094', 'mbinley8@angelfire.com', '1986-06-28', '7139982');
insert into customer (first_name, last_name, address, contact_no, email, date_of_birth, drive_license_no) values ('Barrett', 'Roglieri', '97 Clemons Street', '602-188-8380', 'broglieri9@who.int', '1999-11-06', '0576913');

--membership
insert into membership (customer_id, membership_type, join_date) values (5, 'Platinum', '2021-06-27');
insert into membership (customer_id, membership_type, join_date) values (3, 'Gold', '2017-04-06');
insert into membership (customer_id, membership_type, join_date) values (10, 'Gold', '2019-11-30');
insert into membership (customer_id, membership_type, join_date) values (9, 'Silver', '2015-05-15');
insert into membership (customer_id, membership_type, join_date) values (8, 'Bronze', '2017-10-20');

--rental_rate
insert into rental_rate (rental_rate_type, daily_rate, weekly_rate, monthly_rate) values ('SUV', 39.99, 269.98, 979.98);
insert into rental_rate (rental_rate_type, daily_rate, weekly_rate, monthly_rate) values ('Compact', 29.99, 199.98, 829.98);
insert into rental_rate (rental_rate_type, daily_rate, weekly_rate, monthly_rate) values ('Sedans', 39.99, 269.98, 979.98);
insert into rental_rate (rental_rate_type, daily_rate, weekly_rate, monthly_rate) values ('Trucks', 44.99, 299.98, 1099.98);
insert into rental_rate (rental_rate_type, daily_rate, weekly_rate, monthly_rate) values ('Luxury', 499.99, 3399.98, 13499.98);
insert into rental_rate (rental_rate_type, daily_rate, weekly_rate, monthly_rate) values ('Sports', 499.99, 3399.99, 13499.98);
insert into rental_rate (rental_rate_type, daily_rate, weekly_rate, monthly_rate) values ('Coupe', 49.99, 339.98, 1199.98);
insert into rental_rate (rental_rate_type, daily_rate, weekly_rate, monthly_rate) values ('Van', 49.99, 339.98, 1199.98);
insert into rental_rate (rental_rate_type, daily_rate, weekly_rate, monthly_rate) values ('Minivan', 44.99, 299.98, 1099.98);

--car
insert into car (car_vin, rental_rate_type, make, model, year, license_plate_no, fuel_type, color, seats) values ('2T2BK1BA8EC454424', 'Coupe', 'Lincoln', 'Mark VIII', 2010, 'CQ371F', 'Premium', 'black', 5);
insert into car (car_vin, rental_rate_type, make, model, year, license_plate_no, fuel_type, color, seats) values ('JN1CV6EK8AM181101', 'Luxury', 'BMW', '6 Series', 2019, 'CY295U', 'Premium', 'silver', 5);
insert into car (car_vin, rental_rate_type, make, model, year, license_plate_no, fuel_type, color, seats) values ('JN8AF5MR5DT047963', 'SUV', 'Nissan', 'Pathfinder Armada', 2014, 'SZ414Y', 'Midgrade', 'grey', 7);
insert into car (car_vin, rental_rate_type, make, model, year, license_plate_no, fuel_type, color, seats) values ('1G4GJ5E37CF365011', 'SUV', 'BMW', 'X5', 2016, 'YD566H', 'Premium', 'black', 5);
insert into car (car_vin, rental_rate_type, make, model, year, license_plate_no, fuel_type, color, seats) values ('4USBT33424L973184', 'Compact', 'Suzuki', 'Daewoo Magnus', 2015, 'KQ285V', 'Regular', 'black', 5);
insert into car (car_vin, rental_rate_type, make, model, year, license_plate_no, fuel_type, color, seats) values ('2HNYD18674H577710', 'Sedans', 'Chevrolet', 'Impala', 2019, 'JF476L', 'Regular', 'white', 5);
insert into car (car_vin, rental_rate_type, make, model, year, license_plate_no, fuel_type, color, seats) values ('1C4AJWAGXDL579129', 'Trucks', 'Chevrolet', 'Silverado 1500', 2020, 'DH533N', 'Regular', 'black', 6);
insert into car (car_vin, rental_rate_type, make, model, year, license_plate_no, fuel_type, color, seats) values ('WAU3FAFR4CA156917', 'Sedans', 'Lexus', 'LX', 2017, 'NP864W', 'Regular', 'silver', 5);
insert into car (car_vin, rental_rate_type, make, model, year, license_plate_no, fuel_type, color, seats) values ('1C4SDJCT3EC844127', 'Compact', 'Volkswagen', 'rio', 2021, 'LK284U', 'Regular', 'grey', 5);
insert into car (car_vin, rental_rate_type, make, model, year, license_plate_no, fuel_type, color, seats) values ('JH4CL958X5C196959', 'Trucks', 'Dodge', 'Ram 1500', 2018, 'VG471H', 'Regular', 'silver', 5);