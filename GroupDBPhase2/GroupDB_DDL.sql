DROP DATABASE IF EXISTS carRental;

CREATE DATABASE carRental;

USE carRental;

--We remove Foreign Key membership_no
CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(64) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
    address VARCHAR(300) NOT NULL,
    contact_no VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    date_of_birth date NOT NULL,
    drive_license_no VARCHAR(20) NOT NULL
);

--We add customer_id from customer table as Foreign Key, that include all the membership details such as name, address, email etc.
CREATE TABLE membership (
    membership_no INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    membership_type ENUM('Platinum', 'Gold', 'Silver', 'Bronze') NOT NULL,
    join_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

--We change the Primary Key name to rental_rate_type
CREATE TABLE rental_rate (
    rental_rate_type ENUM ('SUV', 'Compact', 'Sedans', 'Trucks', 'Luxury', 'Sports', 'Coupe', 'Van', 'Minivan') PRIMARY KEY,
    daily_rate DECIMAL(5,2) NOT NULL,
    weekly_rate DECIMAL(6,2) NOT NULL,
    monthly_rate DECIMAL(7,2) NOT NULL
);

--We change the Primary Key name to car_vin
--We add rental_rate_type from rental_rate table as Foreign Key and remove Foreign Key latest_maintenance_no
--We change seats data type to ENUM
CREATE TABLE car (
    car_vin VARCHAR(50) PRIMARY KEY,
    rental_rate_type ENUM ('SUV', 'Compact', 'Sedans', 'Trucks', 'Luxury', 'Sports', 'Coupe', 'Van', 'Minivan') NOT NULL,
    make VARCHAR(30) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year VARCHAR(4) NOT NULL,
    license_plate_no VARCHAR(10) NOT NULL,
    fuel_type ENUM('Electric', 'Diesel', 'Regular', 'Midgrade', 'Premium') NOT NULL,
    color VARCHAR(20) NOT NULL,
    seats VARCHAR(1) NOT NULL,
    FOREIGN KEY (rental_rate_type) REFERENCES rental_rate(rental_rate_type)
);

--We remove maintenance_type field since its similar to description
CREATE TABLE maintenance (
    maintenance_no VARCHAR(30) PRIMARY KEY,
    car_vin VARCHAR(50) NOT NULL,
    maintenance_date DATE NOT NULL,
    description VARCHAR(500) NOT NULL,
    cost DECIMAL(8,2) NOT NULL,
    facility_name VARCHAR(100) NOT NULL,
    technician_name VARCHAR(100) NOT NULL,
    return_date DATE NOT NULL,
    FOREIGN KEY (car_vin) REFERENCES car(car_vin)
);

--We remove Foreign Key manager_ID
CREATE TABLE branch (
    branch_no INT AUTO_INCREMENT PRIMARY KEY,
    address VARCHAR(200) NOT NULL,
    city VARCHAR(30) NOT NULL,
    contact_no VARCHAR(20) NOT NULL
);

--We add branch_no from branch table as Foreign Key
CREATE TABLE staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    branch_no INT NOT NULL,
    first_name VARCHAR(64) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
    department VARCHAR(30) NOT NULL,
    position VARCHAR(20) NOT NULL,
    contact_no VARCHAR(20) NOT NULL,
    email VARCHAR(3) NOT NULL,
    hire_date DATE NOT NULL,
    status ENUM ("Full-time", "Part time", "Terminated") NOT NULL,
    FOREIGN KEY (branch_no) REFERENCES branch(branch_no)
);


CREATE TABLE promotion (
    promotion_code VARCHAR(50)PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(100) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status ENUM ("active", "expired", "discontinued") NOT NULL
);

--We remove cc_no, cc_holder_name, cc_expire_date, cc_security_code, cc_billing_address fields
--We add customer_id from customer table as Foreign Key
--We change method data type to Enum
CREATE TABLE payment (
    payment_id VARCHAR(40) PRIMARY KEY,
    customer_id INT NOT NULL,
    method ENUM('credit card', 'debit card', 'cash', 'cheque') NOT NULL,
    date DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    receipt_no VARCHAR(50) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

--We change the Primary Key name to insurance_policy_no
--We remove coverage_limit field
--We change prev_claim data type to BOOLEAN
CREATE TABLE insurance (
    insurance_policy_no VARCHAR(20) PRIMARY KEY NOT NULL,
    customer_id INT NOT NULL,
    car_vin VARCHAR(70) NOT NULL,
    insurance_provider VARCHAR(50) NOT NULL,
    insurance_type ENUM('Liability', 'Collision', 'Comprehension', 'Personal Accident Insurance', 'Personal Effect Coverage', 'Loss of Use Coverage', 'Towing and Labor Coverage', 'Roadside Assistance') NOT NULL,
    policy_start_date DATE NOT NULL,
    policy_end_date DATE NOT NULL,
    insured_amount VARCHAR(40) NOT NULL,
    premium DECIMAL(10,2) NOT NULL,
    deductible VARCHAR(40) NOT NULL,
    prev_claim BOOLEAN NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (car_vin) REFERENCES car(car_vin)
);

--We change rating data type to ENUM
CREATE TABLE feedback (
    feedback_no INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    customer_id INT NOT NULL,
    rating ENUM ("5*", "4*", "3*", "2*", "1*") NOT NULL,
    comment VARCHAR(500),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

--We change the Primary Key name to order_id
--We add membership_no from membership table as Foreign Key
--We remove Foregin Key rental_type since we can find out now at Foregin Key car_vin from car table
--We combine date and time together
CREATE TABLE `order` (
    order_no INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    customer_id INT NOT NULL,
    membership_no INT,
    car_vin VARCHAR(50) NOT NULL,
    branch_no_pickup INT NOT NULL,
    branch_no_return INT NOT NULL,
    staff_id INT NOT NULL,
    promotion_code VARCHAR(20),
    insurance_policy_no VARCHAR(20),
    payment_id VARCHAR(40) NOT NULL,
    feedback_no INT,
    pick_up_date DATETIME NOT NULL,
    return_date DATETIME NOT NULL,
    renting_purpose VARCHAR(30) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (membership_no) REFERENCES membership(membership_no),
    FOREIGN KEY (car_vin) REFERENCES car(car_vin),
    FOREIGN KEY (branch_no_pickup) REFERENCES branch(branch_no),
    FOREIGN KEY (branch_no_return) REFERENCES branch(branch_no),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
    FOREIGN KEY (promotion_code) REFERENCES promotion(promotion_code),
    FOREIGN KEY (insurance_policy_no) REFERENCES insurance(insurance_policy_no),
    FOREIGN KEY (payment_id) REFERENCES payment(payment_id),
    FOREIGN KEY (feedback_no) REFERENCES feedback(feedback_no)
);