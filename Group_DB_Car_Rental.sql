-- You can execute via the command line type C:\temp\cstp1201week4\staffDDL.sql | mysql -u root -p
-- You can also use the source function from INSIDE mysql source type C:\temp\cstp1201week4\staffDDL.sql | mysql -u root -p

DROP DATABASE IF EXISTS carRental;

CREATE DATABASE carRental;

USE carRental;

CREATE TABLE customer (
    customer_id VARCHAR(32) PRIMARY KEY NOT NULL,
    membership_no_FK VARCHAR(32),
    blacklist_no_FK VARCHAR(32),
    first_name VARCHAR(32) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
    date_of_birth date NOT NULL,
    home_address VARCHAR(300) NOT NULL,
    contact_no VARCHAR(64) NOT NULL,
    drive_license_no VARCHAR(32) NOT NULL
);

INSERT INTO customer (
    customer_id, 
    membership_no_FK, 
    blacklist_no_FK, 
    first_name, 
    last_name, 
    date_of_birth, 
    home_address,
    contact_no,
    drive_license_no) VALUES (
        '12345678',
        '00001',
        NULL,
        'Hison',
        'Lin',
        '1990/08/09',
        '1234 No.1 Road Vancouver BC V9B 0G5',
        '7788991122',
        '124134543'
    );

CREATE TABLE membership (
    membership_no INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(32) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
    date_of_birth date NOT NULL,
    home_address VARCHAR(300) NOT NULL,
    contact_no VARCHAR(64) NOT NULL,
    join_date date NOT NULL
);

INSERT INTO membership (
    first_name, 
    last_name, 
    date_of_birth, 
    home_address,
    contact_no,
    join_date) VALUES (
        'Hison',
        'Lin',
        '1990/08/09',
        '1234 No.1 Road Vancouver BC V9B 0G5',
        '7788991122',
        '2022/12/30'
    );

CREATE TABLE blacklist (
    blacklist_no INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(32) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
    date_of_birth date NOT NULL,
    home_address VARCHAR(300) NOT NULL,
    contact_no VARCHAR(64) NOT NULL,
    blacklist_date date NOT NULL
);

INSERT INTO blacklist (
    first_name, 
    last_name, 
    date_of_birth, 
    home_address,
    contact_no,
    blacklist_date) VALUES (
        'Tom',
        'Li',
        '1989/05/17',
        '1234 No.2 Road Vancouver BC V8A 1G6',
        '7788990011',
        '2022/12/30'
    );

CREATE TABLE branch (
    branch_no INT AUTO_INCREMENT PRIMARY KEY,
    branch_address VARCHAR(300) NOT NULL,
    contact_no VARCHAR(64) NOT NULL,
    branch_manager VARCHAR(100) NOT NULL
);

INSERT INTO branch (  
    branch_address, 
    contact_no, 
    branch_manager) VALUES (
        '1234 No.5 Road Vancouver BC V9A 0G6',
        '7788991234',
        'Sam Hill'
    );