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

--promotion
insert into promotion (promotion_code, name , description , start_date, end_date, status ) values ('SpecialPromotionEaster22', 'Special Promotion for Easter 2022', 'Easter Promotion, 10% off all rentals', '2022-04-01', '20229-04-18', 'expired');
insert into promotion (promotion_code, name , description , start_date, end_date, status ) values ('ChristmasBonus22', 'Christmas Promotion Bonus', 'Christmas 2022, 10% off all rentals', '2022-12-12', '2022-12-27', 'active');
insert into promotion (promotion_code, name , description , start_date, end_date, status ) values ('BlackFriday22', 'Black Friday 2022 Promotion', 'BlackFriday 2022, 20% off all rentals', '2023-11-01', '2023-11-22', 'active');
insert into promotion (promotion_code, name , description , start_date, end_date, status ) values ('SpecialPromotionEaster23', 'Special Promotion for Easter 2023', 'Easter Promotion, 10% off all rentals', '2022-09-02', '2022-09-17', 'expired');
insert into promotion (promotion_code, name , description , start_date, end_date, status ) values ('SPECIAL30', 'VIP exclusive promotion ', '30% off all rentals and free to add 2nd driver', '2022-02-27', '2022-10-19', 'discontinued');
insert into promotion (promotion_code, name , description , start_date, end_date, status ) values ('BUY1GET1', 'New Year Promotion', 'New Year promotion, free on second car', '2022-11-01', '2022-11-22', 'expired');
insert into promotion (promotion_code, name , description , start_date, end_date, status ) values ('SpecialPromotionEaster21', 'Special Promotion for Easter 2021', 'Easter Promotion, 10% off all rentals', '2021-04-01', '2021-04-20', 'active');
insert into promotion (promotion_code, name , description , start_date, end_date, status ) values ('TAXFREE', 'Tax free on all car rentals', 'Tax free for all car rentals on October 31st, 2022', '2022-10-31', '2022-10-31', 'expired');
insert into promotion (promotion_code, name , description , start_date, end_date, status ) values ('BlackFriday23', 'BlackFriday23', 'BlackFriday 2023, 20% off all rental', '2023-11-01', '2023-11-17', 'active');
insert into promotion (promotion_code, name , description , start_date, end_date, status ) values ('BlackFriday21', 'BlackFriday21', 'BlackFriday 2022, 20% off all rental', '2021-11-01', '2021-11-22', 'expired');

--payment  
insert into payment (payment_id, customer_id, method , date , amount , receipt_no) values ('VADE0B248932', 10, 'credit card', '2022-06-27', 332.08, 108934849);
insert into payment (payment_id, customer_id, method , date , amount , receipt_no) values ('ACRAF23DB3C4', 4, 'cash', '2022-09-03', 851.89, 100106280);
insert into payment (payment_id, customer_id, method , date , amount , receipt_no) values ('LQB02EF57690', 5, 'debit card', '2022-06-26', 295.03, 103052157);
insert into payment (payment_id, customer_id, method , date , amount , receipt_no) values ('NDNUMH6Y38ZM', 7, 'credit card', '2022-04-05', 681.91, 109558205);
insert into payment (payment_id, customer_id, method , date , amount , receipt_no) values ('9FQQ645IW2PS', 1, 'cash', '2022-11-05', 961.37, 101818892);
insert into payment (payment_id, customer_id, method , date , amount , receipt_no) values ('GS9PO0MTRAEA', 3, 'cheque', '2022-11-19', 1013.12, 101508055);
insert into payment (payment_id, customer_id, method , date , amount , receipt_no) values ('J4P46Q6GKPKG', 4, 'credit card', '2022-06-15', 32700.96, 108908133);
insert into payment (payment_id, customer_id, method , date , amount , receipt_no) values ('WCF8NNGBIPXA', 9, 'debit card', '2022-12-11', 20518.37, 105622975);
insert into payment (payment_id, customer_id, method , date , amount , receipt_no) values ('CUC75K29YJTQ', 2, 'cheque', '2022-05-14', 6179.64, 106872334);
insert into payment (payment_id, customer_id, method , date , amount , receipt_no) values ('T8XM0FWRMI29', 6, 'cheque', '2023-01-23', 76456.51, 106310910);

--insurance
insert into insurance (insurance_policy_no, customer_id, car_vin, insurance_provider, insurance_type, policy_start_date, policy_end_date, insured_amount, premium , deductible , prev_claim) values (8762248, 1, '2T2BK1BA8EC454424', 'O''Conner LLC', 'Roadside Assistance', '2022-12-01', '2022-12-14', 500000.00, 254.18, 500.00, false);
insert into insurance (insurance_policy_no, customer_id, car_vin, insurance_provider, insurance_type, policy_start_date, policy_end_date, insured_amount, premium , deductible , prev_claim) values (6896492, 2, 'JN1CV6EK8AM181101', 'Stracke Group', 'Towing and Labor Coverage', '2022-09-16', '2022-11-14', 1000000.00, 484.22, 500.00, true);
insert into insurance (insurance_policy_no, customer_id, car_vin, insurance_provider, insurance_type, policy_start_date, policy_end_date, insured_amount, premium , deductible , prev_claim) values (4474856, 3, 'JN8AF5MR5DT047963', 'Ebert-Olson', 'Personal Effect Coverage', '2022-12-12', '2022-07-24', 800000.0, 254.43, 500.00, true);
insert into insurance (insurance_policy_no, customer_id, car_vin, insurance_provider, insurance_type, policy_start_date, policy_end_date, insured_amount, premium , deductible , prev_claim) values (7922411, 6, '1G4GJ5E37CF365011', 'Mraz, Kiehn and Price', 'Personal Effect Coverage', '2023-01-16', '2022-03-14', 1000000.00, 2354.63, 500.00, false);
insert into insurance (insurance_policy_no, customer_id, car_vin, insurance_provider, insurance_type, policy_start_date, policy_end_date, insured_amount, premium , deductible , prev_claim) values (3670288, 4, '4USBT33424L973184', 'Mayert Inc', 'Roadside Assistance', '2022-02-20', '2022-05-13', 1000000.00, 6034.98, 500.00, false);
insert into insurance (insurance_policy_no, customer_id, car_vin, insurance_provider, insurance_type, policy_start_date, policy_end_date, insured_amount, premium , deductible , prev_claim) values (8441512, 7, '2HNYD18674H577710', 'Rice Group', 'Personal Accident Insurance', '2022-08-10', '2022-02-09', 500000.00, 3865.98, 1000.00, true);
insert into insurance (insurance_policy_no, customer_id, car_vin, insurance_provider, insurance_type, policy_start_date, policy_end_date, insured_amount, premium , deductible , prev_claim) values (5216758, 5, '1C4AJWAGXDL579129', 'Bernhard Group', 'Liability', '2022-08-10', '2022-06-16', 800000.00, 264.95, 1000.00, false);
insert into insurance (insurance_policy_no, customer_id, car_vin, insurance_provider, insurance_type, policy_start_date, policy_end_date, insured_amount, premium , deductible , prev_claim) values (8341623, 8, 'WAU3FAFR4CA156917', 'Stroman, Fritsch and Aufderhar', 'Towing and Labor Coverage', '2022-04-14', '2022-02-27', 5000000.00, 3754.54, 500.00, false);
insert into insurance (insurance_policy_no, customer_id, car_vin, insurance_provider, insurance_type, policy_start_date, policy_end_date, insured_amount, premium , deductible , prev_claim) values (9253139, 10, '1C4SDJCT3EC844127', 'Rosenbaum, O''Connell and Fahey', 'Collision', '2022-05-23', '2022-07-15', 100000.00, 317.44, 500.00, true);
insert into insurance (insurance_policy_no, customer_id, car_vin, insurance_provider, insurance_type, policy_start_date, policy_end_date, insured_amount, premium , deductible , prev_claim) values (7120323, 9, 'JH4CL958X5C196959', 'Nitzsche Inc', 'Liability', '2022-05-02', '2022-04-14', 100000.00, 112.83, 1000.00, false);

--feedback
insert into feedback (customer_id, rating, comment) values (7, '4*', "The car was in excellent condition and met all my needs for my trip.");
insert into feedback (customer_id, rating, comment) values (10, '5*', "I appreciate the convenient and easy rental process.");
insert into feedback (customer_id, rating, comment) values (3, '4*', "I was impressed with the variety of vehicles available and the competitive pricing.");
insert into feedback (customer_id, rating, comment) values (6, '1*', "Never come again!");
insert into feedback (customer_id, rating, comment) values (2, '2*', "Bad experience!");

--order
insert into order (customer_id, membership_no, car_vin, branch_no_pickup, branch_no_return , staff_id, promotion_code, insurance_policy_no, payment_id, feedback_no, pick_up_date, pick_up_time, return_date, return_time, renting_purpose) values (1, 'NULL', '2T2BK1BA8EC454424', 1, 1, 'NULL', 8762248, '9FQQ645IW2PS', 'NULL' );
insert into order (customer_id, membership_no, car_vin, branch_no_pickup, branch_no_return , staff_id, promotion_code, insurance_policy_no, payment_id, feedback_no, pick_up_date, pick_up_time, return_date, return_time, renting_purpose) values (3, 2, 'JN8AF5MR5DT047963', 2, 2, 1, 'NULL', 4474856, 'GS9PO0MTRAEA', 3);
insert into order (customer_id, membership_no, car_vin, branch_no_pickup, branch_no_return , staff_id, promotion_code, insurance_policy_no, payment_id, feedback_no, pick_up_date, pick_up_time, return_date, return_time, renting_purpose) values (5, 1, '1C4AJWAGXDL579129', 4, 4, 10, 'NULL', 5216758, 'LQB02EF57690', 'NULL' );
insert into order (customer_id, membership_no, car_vin, branch_no_pickup, branch_no_return , staff_id, promotion_code, insurance_policy_no, payment_id, feedback_no, pick_up_date, pick_up_time, return_date, return_time, renting_purpose) values (7, 'NULL', '2HNYD18674H577710', 5, 5, 2,'NULL', 8441512, 'NDNUMH6Y38ZM', 1 );
insert into order (customer_id, membership_no, car_vin, branch_no_pickup, branch_no_return , staff_id, promotion_code, insurance_policy_no, payment_id, feedback_no, pick_up_date, pick_up_time, return_date, return_time, renting_purpose) values (9, 4, 'JH4CL958X5C196959', 2, 2, 8, 'NULL', 7120323, 'WCF8NNGBIPXA', 'NULL');
insert into order (customer_id, membership_no, car_vin, branch_no_pickup, branch_no_return , staff_id, promotion_code, insurance_policy_no, payment_id, feedback_no, pick_up_date, pick_up_time, return_date, return_time, renting_purpose) values (2, 'NULL', 'JN1CV6EK8AM181101', 3, 2, 7, 'NULL', 6896492, 'CUC75K29YJTQ', 5 );
insert into order (customer_id, membership_no, car_vin, branch_no_pickup, branch_no_return , staff_id, promotion_code, insurance_policy_no, payment_id, feedback_no, pick_up_date, pick_up_time, return_date, return_time, renting_purpose) values (4, 'NULL', '4USBT33424L973184', 1, 1, 6, 'NULL', 3670288, 'ACRAF23DB3C4', 'NULL' );
insert into order (customer_id, membership_no, car_vin, branch_no_pickup, branch_no_return , staff_id, promotion_code, insurance_policy_no, payment_id, feedback_no, pick_up_date, pick_up_time, return_date, return_time, renting_purpose) values (6, 'NULL', '1G4GJ5E37CF365011', 2, 3, 1, 'NULL', 7922411, 'T8XM0FWRMI29', 4);
insert into order (customer_id, membership_no, car_vin, branch_no_pickup, branch_no_return , staff_id, promotion_code, insurance_policy_no, payment_id, feedback_no, pick_up_date, pick_up_time, return_date, return_time, renting_purpose) values (8, 5, 'WAU3FAFR4CA156917', 1, 1, 6, 'NULL', 8341623, 'J4P46Q6GKPKG', 'NULL');
insert into order (customer_id, membership_no, car_vin, branch_no_pickup, branch_no_return , staff_id, promotion_code, insurance_policy_no, payment_id, feedback_no, pick_up_date, pick_up_time, return_date, return_time, renting_purpose) values (10, 3, '1C4SDJCT3EC844127', 5, 5, 2, 'NULL', 9253139, 'VADE0B248932', 2);


