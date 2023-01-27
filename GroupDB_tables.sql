-- You can execute via the command line type C:\temp\cstp1201week4\staffDDL.sql | mysql -u root -p
-- You can also use the source function from INSIDE mysql source type C:\temp\cstp1201week4\staffDDL.sql | mysql -u root -p
-- ALTER TABLE customer ADD gender VARCHAR(10);
-- ALTER TABLE customer DROP COLUME gender;
-- UPDATE customer SET customer_id = '123456', contact_no = '7788925633' WHERE first_name = 'Hison' OR last_name = 'Lin'
-- DELETE FROM customer WHERE customer_id = '123456' AND first_name = 'Hison'
DROP DATABASE IF EXISTS carRental;

CREATE DATABASE carRental;

USE carRental;

CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(64) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
     `address` VARCHAR(300) NOT NULL,
    contact_no VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    date_of_birth date NOT NULL,
    drive_license_no VARCHAR(20) NOT NULL
);

CREATE TABLE membership (
    membership_no INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    membership_type ENUM('Platinum', 'Gold', 'Silver', 'Bronze') NOT NULL,
    join_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE `rental_rate` (
    rental_rate_type ENUM ('SUV', 'Compact', 'Sedans', 'Trucks', 'Luxury', 'Sports', 'Convertible', 'Van', 'Minivan') PRIMARY KEY,
    daily_rate DECIMAL(5,2) NOT NULL,
    weekly_rate DECIMAL(5,2) NOT NULL,
    monthly_rate DECIMAL(5,2) NOT NULL
);

CREATE TABLE `car` (
    vin VARCHAR(30) PRIMARY KEY,
    rental_rate_type ENUM ('SUV', 'Compact', 'Sedans', 'Trucks', 'Luxury', 'Sports', 'Convertible', 'Van', 'Minivan') NOT NULL,
    maintainance_no VARCHAR(30),
    make VARCHAR(30) NOT NULL,
    model VARCHAR(30) NOT NULL,
    `year` VARCHAR(4) NOT NULL,
    license_plate_no VARCHAR(10) NOT NULL,
    fuel_type ENUM('Electric', 'Diesel', 'Regular', 'Midgrade', 'Premium') NOT NULL,
    color VARCHAR(20) NOT NULL,
    seats ENUM('2', '4', '5', '7', '8') NOT NULL,
    FOREIGN KEY (rental_rate_type) REFERENCES rental_rate(rental_rate_type)
);

CREATE TABLE `maintainance` (
    maintainance_no VARCHAR(30) PRIMARY KEY,
    vin VARCHAR(30) NOT NULL,
    maintainance_date DATE NOT NULL,
    `description` VARCHAR(500) NOT NULL,
    cost DECIMAL(8,2) NOT NULL,
    facility_name VARCHAR(100) NOT NULL,
    technician_name VARCHAR(100) NOT NULL,
    return_date DATE NOT NULL,
    FOREIGN KEY (vin) REFERENCES car(vin)
);

CREATE TABLE `branch` (
    branch_no INT AUTO_INCREMENT PRIMARY KEY,
    `address` VARCHAR(200) NOT NULL,
    city VARCHAR(30) NOT NULL,
    contact_no VARCHAR(20) NOT NULL
);

CREATE TABLE `staff` (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    branch_no INT NOT NULL,
    first_name VARCHAR(64) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
    department VARCHAR(30) NOT NULL,
    position VARCHAR(20) NOT NULL,
    contact_no VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    hire_date DATE NOT NULL,
    `status` ENUM ("Full-time", "Part time", "Terminated") NOT NULL,
    FOREIGN KEY (branch_no) REFERENCES branch(branch_no)
);

CREATE TABLE `promotion` (
    promotion_code VARCHAR(20)PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL,
    `description` VARCHAR(100) NOT NULL,
    `start_date` DATE NOT NULL,
    end_date DATE NOT NULL,
    `status` ENUM ("active", "expired", "discontinued") NOT NULL
);

CREATE TABLE `payment` (
    payment_id VARCHAR(20) PRIMARY KEY,
    customer_id INT NOT NULL,
    payment_method ENUM('credit card', 'debit card', 'cash', 'cheque') NOT NULL,
    payemnt_date DATE NOT NULL,
    payment_amount DECIMAL(8,2) NOT NULL,
    payment_receipt_no VARCHAR(20) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE `insurance` (
    insurance_no VARCHAR(20) PRIMARY KEY NOT NULL,
    customer_id INT NOT NULL,
    vin VARCHAR(30) NOT NULL,
    insurance_provider VARCHAR(50) NOT NULL,
    insurance_type ENUM('Liability', 'Collision', 'Comprehension', 'Personal Accident Insurance', 'Personal Effect Coverage', 'Loss of Use Coverage', 'Towing and Labor Coverage', 'Roadside Assistance') NOT NULL,
    policy_start_date DATE NOT NULL,
    policy_end_date DATE NOT NULL,
    insured_amount VARCHAR(20) NOT NULL,
    premium DECIMAL(7,2) NOT NULL,
    deductible VARCHAR(20) NOT NULL,
    prev_claim ENUM ("YES", "NONE") NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (vin) REFERENCES car(vin)
);

CREATE TABLE `feedback` (
    feedback_no INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    customer_id INT NOT NULL,
    feedback_rating ENUM ("5*", "4*", "3*", "2*", "1*") NOT NULL,
    feedback_comment VARCHAR(500),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE `order` (
    order_no INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    customer_id INT NOT NULL,
    membership_no INT,
    vin VARCHAR(30) NOT NULL,
    branch_no_pickup INT NOT NULL,
    branch_no_return INT NOT NULL,
    staff_id INT NOT NULL,
    rental_rate_type ENUM ('SUV', 'Compact', 'Sedans', 'Trucks', 'Luxury', 'Sports', 'Convertible', 'Van', 'Minivan') NOT NULL,
    promotion_code VARCHAR(20),
    insurance_no VARCHAR(20),
    payment_id VARCHAR(20) NOT NULL,
    feedback_no INT,
    pick_up_date DATE NOT NULL,
    pick_up_time TIME NOT NULL,
    return_date DATE NOT NULL,
    return_time TIME NOT NULL,
    renting_purpose VARCHAR(30) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (membership_no) REFERENCES membership(membership_no),
    FOREIGN KEY (vin) REFERENCES car(vin),
    FOREIGN KEY (branch_no_pickup) REFERENCES branch(branch_no),
    FOREIGN KEY (branch_no_return) REFERENCES branch(branch_no),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
    FOREIGN KEY (rental_rate_type) REFERENCES rental_rate(rental_rate_type),
    FOREIGN KEY (promotion_code) REFERENCES promotion(promotion_code),
    FOREIGN KEY (insurance_no) REFERENCES insurance(insurance_no),
    FOREIGN KEY (payment_id) REFERENCES payment(payment_id),
    FOREIGN KEY (feedback_no) REFERENCES feedback(feedback_no)
);