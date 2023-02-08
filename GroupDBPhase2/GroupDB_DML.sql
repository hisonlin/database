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

--maintenance
insert into maintenance (maintenance_no, car_vin, maintenance_date, description, cost, facility_name, technician_name, return_date) values (27354495, '2T2BK1BA8EC454424', '2022-10-12', 'Oil Change: Replacing the engine oil and oil filter', 443.03, 'Daniel-Nitzsche', 'Cassandre Gilbane', '2022-03-09');
insert into maintenance (maintenance_no, car_vin, maintenance_date, description, cost, facility_name, technician_name, return_date) values (47196826, 'JN1CV6EK8AM181101', '2022-02-12', 'Tire Rotation: Moving the tires to different positions on the vehicle to ensure even wear', 202.69, 'Satterfield, Harris and Lehner', 'Tadd Trevan', '2022-06-05');
insert into maintenance (maintenance_no, car_vin, maintenance_date, description, cost, facility_name, technician_name, return_date) values (51779840, 'JN8AF5MR5DT047963', '2022-09-02', 'Brake Inspection: Checking the brake system', 245.80, 'Runolfsdottir-Bogan', 'Timothea Fellos', '2022-10-11');
insert into maintenance (maintenance_no, car_vin, maintenance_date, description, cost, facility_name, technician_name, return_date) values (80952188, '1G4GJ5E37CF365011', '2023-01-19', 'Battery Maintenance: Cleaning the battery terminals, checking the battery charge', 444.45, 'Mertz, Wiza and Terry', 'Philbert Seville', '2022-07-23');
insert into maintenance (maintenance_no, car_vin, maintenance_date, description, cost, facility_name, technician_name, return_date) values (11240925, '4USBT33424L973184', '2022-12-17', 'Engine Tune-Up: Adjusting or replacing spark plugs, air filters', 182.34, 'Schroeder-Nader', 'Schuyler Bover', '2022-10-12');

--branch
insert into branch (address, city, contact_no) values ('33 Vernon Point', 'Vancouver', '203-116-9130');
insert into branch (address, city, contact_no) values ('05 Anthes Circle', 'Burnaby', '963-545-1998');
insert into branch (address, city, contact_no) values ('191 Hagan Avenue', 'Richmond', '757-801-7338');
insert into branch (address, city, contact_no) values ('3877 Sutteridge Parkway', 'Vancouver', '198-766-7184');
insert into branch (address, city, contact_no) values ('8 Lunder Way', 'Vancouver', '520-325-4443');

--staff
insert into staff (branch_no, first_name, last_name, department , position , contact_no, email, hire_date , status ) values (2, 'Giles', 'Temblett', 'Sales', 'Supervisor', '360-713-5817', 'gtemblett0@addtoany.com', '2022-12-09', 'Terminated');
insert into staff (branch_no, first_name, last_name, department , position , contact_no, email, hire_date , status ) values (5, 'Chaim', 'Bagnal', 'Sales', 'Agent', '735-119-0752', 'cbagnal1@sphinn.com', '2022-10-06', 'Full-time');
insert into staff (branch_no, first_name, last_name, department , position , contact_no, email, hire_date , status ) values (5, 'Roy', 'Aron', 'Sales', 'Agent', '354-325-6039', 'raron2@aol.com', '2022-06-25', 'Part time');
insert into staff (branch_no, first_name, last_name, department , position , contact_no, email, hire_date , status ) values (5, 'Dita', 'Thurlby', 'Sales', 'Agent', '634-591-1380', 'dthurlby3@a8.net', '2022-08-09', 'Part time');
insert into staff (branch_no, first_name, last_name, department , position , contact_no, email, hire_date , status ) values (5, 'Rozanna', 'Recke', 'Sales', 'Agent', '583-356-0656', 'rrecke4@indiatimes.com', '2022-06-05', 'Terminated');
insert into staff (branch_no, first_name, last_name, department , position , contact_no, email, hire_date , status ) values (1, 'Renate', 'Kerner', 'Sales', 'Agent', '243-754-3681', 'rkerner5@ucsd.edu', '2022-11-12', 'Full-time');
insert into staff (branch_no, first_name, last_name, department , position , contact_no, email, hire_date , status ) values (3, 'Madge', 'Firth', 'Sales', 'Agent', '991-725-2529', 'mfirth6@msn.com', '2022-08-16', 'Terminated');
insert into staff (branch_no, first_name, last_name, department , position , contact_no, email, hire_date , status ) values (2, 'Fina', 'Ramsden', 'Sales', 'Agent', '359-781-6887', 'framsden7@hexun.com', '2022-08-01', 'Full-time');
insert into staff (branch_no, first_name, last_name, department , position , contact_no, email, hire_date , status ) values (2, 'Noll', 'Whitman', 'Sales', 'Supervisor', '530-478-6885', 'nwhitman8@indiegogo.com', '2022-09-14', 'Part time');
insert into staff (branch_no, first_name, last_name, department , position , contact_no, email, hire_date , status ) values (4, 'Franzen', 'Conyer', 'Sales', 'Supervisor', '902-924-4956', 'fconyer9@multiply.com', '2023-01-08', 'Part time');