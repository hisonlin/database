# Group DB - Car Rental
## Mission Statement
|   |
|--|
|Our mission is to provide reliable car rental service transactions between our customers and staff, through the use of an efficient and user-friendly database system. |

## Mission objectives
|   |
|--|
|- Accurately store and manage customer information| 
|- Properly track rental transactions|
|- To offer competitive rates and promotion with flexible payment options|
|- Upkeeping a fleet of well-maintained vehicles with regular maintenance schedules|
|- Provide exceptional car rental services by actively seeking customer feedback|

## Documents and Forms
|  |
|--|
|1. $19 Cheap Car Rental in Burnaby. (2020). Carrentals.com. https://www.carrentals.com/Burnaby-Car-Rentals-g-cty.d9520.Car-Rental-Deals|
|2. “Vancouver Car Rental - Downtown Vancouver.” Pacific Car Rentals, 2023, https://www.pacificcarrentals.com/Reserve1/?VehicleType=0&PickUpLocation=138&DropOffLocation=138&date1=01%2F25%2F2023&timer1=10%3A00+AM&date2=01%2F26%2F2023&timer2=10%3A00+AM|
|3. “Enterprise Rant-A_Car.(2023).” Canada Rental Car Classes, Enterprise Rent-A-Car, https://www.enterprise.ca/en/car-rental/vehicles/ca.html|
|4. Relative: Relative img/car_rental_insurance.png, Policy Information & Payment, https://www.retalcover.com|
|5. The car rental process, Download Scientific Diagram - ResearchGate, https://www.researchgate.net/figure/The-car-rental-process_fig1_43694716|

## Subject
|   |   |   |   |
|--|--|--|--|
|1. Customer|2. Membership|3. Car|4. Maintainance|
|5. Branch|6. Staff|7. Rental rate|8. Promotion|
|9. Payment|10. Insurance|11. Feedback|12. Order|

### 1. Customer
### (preliminary list of subject)
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
|Customer ID(PK)|000001||Jia Xi|
|First Name|Sam|||
|Last Name|Hill|||
|Address|1234-No.1 Rd Vancouver BC|||
|Contact No.|+1 7788991122|||
|Email|samhill@gmail.com|||
|Date of birth|01 Jan 1990|||
|Driver's License Number|124134543|||

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|customer_id|Customer ID|store the id of a customer|INT AUTO_INCREMENT|Primay Key||
|first_name|First Name|store the first name of a customer|VARCHAR(64)|Candidate Key||
|last_name|Last Name|store the last name of a customer|VARCHAR(64)|Candidate Key||
|address|Address|store the address of a customer|VARCHAR(300)|Candidate Key||
|contact_no|Contact Number|store the contact number of a customer|VARCHAR(20)|Candidate Key||
|email|Email|store the email of a customer|VARCHAR(100)|Candidate Key||
|date_of_birth|Date of birth|store the date of birth of a customer|DATE|Candidate Key||
|drivers_license_no|Driver's License Number|store the driver's license number of a customer|VARCHAR(20)|Alternate Key||

### 2. Membership
### (preliminary list of subject)
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
|Membership No.(PK)|1||Jia Xi|
|Customer ID(FK)|000001||Jia Xi|
|Membership Type|Gold|(Platinum, Gold, Silver, Bronze, Null)||
|Join date|01 Jan 2023|||

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|membership_no|Membership Number|store the id of a member|INT AUTO_INCREMENT|Primay Key||
|customer_id|Customer ID|store the id of a customer|INT|Foreign Key|customer table|
|membership_type|Membership Type|store the type of a membership|ENUM('Platinum', 'Gold', 'Silver', 'Bronze')|Candidate Key||
|join_date|Join Date|store the date of a member apply for membership|DATE|Candidate Key||

### 3. Car
### (preliminary list of subject)
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
|VIN(PK)|10001||Jia Xi|
|Rentel Rate Type(FK)|sport|||
|Make|Porsche|||
|Model|918|||
|Year|2013|||
|License Plate Number|B46 JP2|||
|Fuel Type|disel|||
|Car Color|white|||
|Seats|5|||

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|vin|VIN|store the VIN of a car|VARCHAR(30)|Primary Key||
|rental_rate_type|Rental Rate Type|stores the rental type of a rental|ENUM ('SUV', 'Compact', 'Sedans', 'Trucks', 'Luxury', 'Sports', 'Convertible', 'Van', 'Minivan')|Foreign Key|rental rate table|
|make|Make|store the manufacturer of a car|VARCHAR(30)|||
|model|Model|store the model of a car|VARCHAR(30)|||
|year|Year|store the year of manufacture of a car|VARCHAR(4)|||
|license_plate_no|License Plate Number|store the license plate number of a car|VARCHAR(10)|Alternate Key||
|fuel_type|Fuel Type|store the fuel type of a car|ENUM('Electric', 'Diesel', 'Regular', 'Midgrade', 'Premium')|||
|color|Color|store the color of a car|VARCHAR(20)|||
|seats|Seats|store the amount of seats of a car|ENUM('2', '4', '5', '7', '8')|||

### 4. Maintainance
### (preliminary list of subject)
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
|Maintainance Order Number(PK)|2342342||Jia Xi|
|VIN(FK)|10001|||
|Maintainance Date|Febuary 2, 2023|||
|Maintainance Type|Engine Repair|||
|Maintainance Description|Engine swap with Imported engine for longevity|||
|Maintainance Cost|$2,234.33|||
|Maintainance Facility Name|ABC Company|||
|Technician Name|TIM Lau|||
|Return Date|Febuary 22, 2023|||

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|maintainance_no|Maintainance Order Number|store the maintainance order number of maintainance for a car|VARCHAR(30)|Primary Key|maintainance company|
|vin|VIN|store the VIN of a car|VARCHAR(30)|Foreign Key|car table|
|maintainance_date|Maintainance Date|store the date of the maintainance|DATE|Candidate Key||
|description|Maintainance Description|store a short description of a maintainance|VARCHAR(500)|Candidate Key||
|cost|Maintainance Cost|store the cost of a maintainance|DECIMAL(8,2)|Candidate Key||
|facility_name|Maintainance Facility Name|store the name of maintainace company of a maintainance|VARCHAR(100)|Candidate Key||
|technician_name|Technician Name|store the name of technician of a maintainance|VARCHAR(100)|Candidate Key||
|return_date|Return Date|store the date of return of a maintainance|DATE|Candidate Key||

### 5. Branch
### (preliminary list of subject)
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
|Branch No.(PK)|001||Haoqi|
|Address|1234 No.2 Rd Vancouver BC|||
|City|Vancouver|||
|Contact No.|7788991100|||

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|branch_no|Branch Number|stores the number of a branch|INT AUTO_INCREMENT|Primary Key||
|address|Address|stores the address of a branch|VARCHAR(200)|Candidate Key||
|city|City|stores the city of a branch|VARCHAR(30)|Candidate Key||
|contact_no|Contact Number|store the contact number of a branch|VARCHAR(20)|Candidate Key||

### 6. Staff
### (preliminary list of subject)
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
|Staff ID(PK)|123456||Haoqi
|Branch No.(FK)|001|||
|First Name|Jim||
|Last Name|Kirk||
|Department|Sales||
|Position|Salesperson||
|Contact Number|6043462944||
|Email|j.kirk@rentacar.ca||
|Hired Date|May 2, 2020||
|Status|Full-time||

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|staff_id|Staff ID|stores the id of a staff|INT AUTO_INCREMENT|Primary Key||
|branch_no|Branch Number|stores the number of a branch|INT|Foreign Key||
|first_name|First Name|stores the first name of a staff|VARCHAR(64)|Candidate Key||
|last_name|Last Name|stores the last name of a staff|VARCHAR(64)|Candidate Key||
|department|Department|stores the department of a staff|VARCHAR(30)|Candidate Key||
|position|Position|stores the position of a staff|VARCHAR(20)|Candidate Key||
|contact_no|Contact Number|stores the contact number of a staff|VARCHAR(20)|Candidate Key||
|email|Email|stores the email of a staff|VARCHAR(100)|Candidate Key||
|hired_date|Hired Date|stores the hired date of a staff|DATE|Candidate Key||
|status|Status|stores the status of a staff|ENUM ("Full-time", "Part time", "Terminated")|Candidate Key||

### 7. Rental Rate
### (preliminary list of subject)
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
|Rental Rate Type(PK)|sport||Haoqi
|Daily Rate|$30||
|Weekly Rate|$200||
|Mothly Rate|$700||

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|rental_rate_type|Rental Rate Type|stores the rental type of a rental|ENUM ('SUV', 'Compact', 'Sedans', 'Trucks', 'Luxury', 'Sports', 'Convertible', 'Van', 'Minivan')|Primary Key||
|daily_rate|Daily Rate|stores the daily rate of a rental|DECIMAL(5,2)|||
|weekly_rate|Weekly Rate|stores the weekly rate of a rental|DECIMAL(5,2)|||
|mothly_rate|Mothly Rate|stores the monthly rate of a rental|DECIMAL(6,2)|||

### 8. Promotion
### (preliminary list of subject)
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
|Promotion Code(PK)|12345678||'Haoqi'
|Promotion Name|Black Friday|'Holiday Sale'|
|Promotion Description|50% off||
|Promotion Start Date|11-11-2020||
|Promotion End Date|12-1-2020||
|Promotion Status| active|'active, expired, or discontinued'|

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|promotion_code|Promotion Code|stores the promotion code of a promotion|VARCHAR(20)|Primary Key||
|name|Promotion Name|stores the name of a promotion|VARCHAR(50)|Candidate Key||
|description|Promotion Description|stores the description of a promotion|VARCHAR(100)|Candidate Key||
|start_date|Promotion Start Date|stores the start date of a promotion|DATE|Candidate Key||
|end_date|Promotion End Date|stores the end date of a promotion|DATE|Candidate Key||
|status|Promotion Status|stores the status of a promotion|ENUM ("active", "expired", "discontinued")|Candidate Key||

### 9. Payment
### (preliminary list of subject)
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
|Payment ID(PK)|B43434||Muochu|
|Customer ID(FK)|000001|||
|Payment Method|Credit Card|||
|Payment Date|08-13-2022|||
|Payment Amount|$345.33|||
|Payment Receipt Number|32536235|||

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|payment_id|Payment ID|stores the id of a payment|VARCHAR(20)|Primary Key|transation company|
|customer_id|Customer ID|store the id of a customer|INT|Foreign Key|customer table|
|payment_method|Payment Method|stores the payment method used during transaction|ENUM('credit card', 'debit card', 'cash', 'cheque')|Candidate Key||
|payment_date|Payment Date|stores the date of payment made|DATE|Candidate Key||
|payment_amount|Payment Amount|stores the total amount from transaction|DECIMAL(8,2)|Candidate Key||
|payment_receipt_no|Payment Receipt Number|stores payment receipt number|VARCHAR(20)|Alternate Key||

### 10. Insurance
### (preliminary list of subject)
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
|Insurance Number(PK)|593054043||Muochu|
|Customer ID(FK)|1|||
|VIN(FK)|10001|||
|Insurance Provider|AllState|Dropdown menu for Companies||
|Insurance Type|Comprehension|||
|Policy Start Date|January 17, 2023|||
|Policy End date|January 20, 2023|||
|Insured Amount|$10,000|||
|Premium|$170.00 CAD|||
|Deductible|$1,000|||
|Coverage Limit|$5,000|||
|Previous Claim|None|Dropdown menu for 'Yes' or 'None'||

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|insurance_no|Insurance Number|stores the insurance policy number purchased by the customer|VARCHAR(20)|Primary Key|insurance company|
|customer_id|Customer ID|stores the id of a customer|INT|Foreign Key|customer table|
|vin|VIN|stores the VIN(Vehicle Insurance Number) of the car|VARCHAR(30)|Foreign Key|car table|
|insurance_provider|Insurance Provider|store the name of the insurance provider|VARCHAR(50)|Candidate Key||
|insurance_type|Insurance Type|stores the specfic type of coverage(e.g. liability, collision, comprehension, etc.)|ENUM('Liability', 'Collision', 'Comprehension', 'Personal Accident Insurance', 'Personal Effect Coverage', 'Loss of Use Coverage', 'Towing and Labor Coverage', 'Roadside Assistance')|Candidate Key||
|policy_start_date|Policy Start Date|stores the start date for the insured coverage|DATE|Candidate Key||
|policy_end_date|Policy End date|stores the end date for the insured coverage|DATE|Candidate Key||
|insured_amount|Insured Amount|stores the total insurance coverage amount|VARCHAR(20)|Candidate Key||
|premium|Premium|stores the premium cost of the insurance coverage|DECIMAL(7,2)|Candidate Key||
|deductible|Deductible|stores the amount the customer must pay out-of pocket as deductible before the insurance policy begins|VARCHAR(20)|Candidate Key||
|prev_claim|Previous Claim|stores any previous made insurance claim|ENUM ("YES", "NONE")|Candidate Key||

### 11. Feedback
### (preliminary list of subject)
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
|Feedback No.(PK)|0001||Muochu|
|Customer ID(FK)|000001|||
|Feedback Rating|5*|||
|Feedback comment|NULL|||

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|feedback_no|Feedback No.|stores the id of the feedback|INT AUTO_INCREMENT|Primary Key||
|customer_id|Customer ID|stores the id of a customer|INT|Foreign Key|customer table|
|feedback_rating|stores the rating of the customer's feedback|Feedback Rating|ENUM ("5*", "4*", "3*", "2*", "1*")|Candidate Key||
|feedback_comment|stores the comment given by the customer's feedback|Feedback comment|VARCHAR(500)|Candidate Key||

### 12. Order
### (preliminary list of subject)       
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
|Order Number(PK)|2394324||Muochu|
|Customer_ID(FK)|124134543|||
|Membership No.(FK)|000001|can be NULL||
|VIN(FK)|10001|||
|Pick-Up Branch ID(FK)|2342342||
|Return Branch ID(FK)|2342342|||
|Staff ID(FK)|1001231936|||
|Rental Type(FK)|sport|||
|Promotion Code(FK)|0001|can be NULL||
|Insurance Number(FK)|593054043|can be NULL||
|Payment ID (FK)|B43434|||
|Feedback No(FK)|0001|can be NUll||
|Pick-up Date|January 20, 2023|||
|Pick-up Time|13:00|||
|Return Date|January 21, 2023|||
|Return Time|13:00|||
|Payment Amount|$100|||
|Renting Purpose|Leisure|||

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|order_no|Order Number|stores the rental order number|INT AUTO_INCREMENT|Primary Key||
|customer_id|Customer_ID|stores the id of a customer|INT|Foreign Key|customer table|
|membership_no|Membership Number|store the number of a member|INT|Foreign Key|membership table|
|vin|VIN|stores the VIN(Vehicle Identification Number) of the vehicle|VARCHAR(30)|Foreign Key|car table|
|branch_no_pickup|Prick-Up Branch|store the branch id fro the car pickup|INT|Foreign Key|branch table|
|branch_no_return|Return Branch|stores the branch id for the car return|INT|Foreign Key|branch table|
|staff_id|Staff ID|stores the ID number of the staff member facilitating the transaction|INT|Foreign Key|staff table|
|rental_rate_type|Rental Rate Type|stores the type of car rental|ENUM ('SUV', 'Compact', 'Sedans', 'Trucks', 'Luxury', 'Sports', 'Convertible', 'Van', 'Minivan')|Foreign Key|rental rate table|
|promotion_code|Promotion Code|stores the promotion code used during transaction|VARCHAR(20)|Foreign Key|promotion table|
|insurance_no|Policy Number|stores the insurance policy number purchased by the customer|VARCHAR(20)|Foreign Key|insurance table|
|payment_id|Payment ID|stores the id of a payment|VARCHAR(20)|Foreign Key|payment table|
|feedback_no|Feedback Number|stores the id of the feedback|INT|Foreign Key|feedback table|
|pick_up_date|Pick-up Date|stores the date of the car pick up|DATE|Candidate Key||
|pick_up_time|Pick-up time|stores the time of the car pick up|TIME|Candidate Key||
|return_date|Return Date|stores the date of the car return|DATE|Candidate Key||
|return_time|Return time|stores the time of the car return|TIME|Candidate Key||
|renting_purpose|Renting Purpose|stores the purpose of the car rental|VARCHAR(30)|Candidate Key||

## ERD
Relative: 
Relative img/ERD_Car_Rental.png

## Normalization
### Rental Order Table
|order_no|customer_name|customer_address|customer_contact_no|customer_email|customer_data_of_birth|drivers_license_no|membership|car|license_plate_no|VIN|latest_maintainance|rental_start|pickup_branch|rental_end|return_branch|staff|rental_rate|promotion|insurance|payment|payment_amount|purpose|feedback|
|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|
|1|Hison Lin|1234 Main Street Vancouver BC V5P 0H5|7788990011|hison@gmail.com|1990/08/09|123456789|Gold|2018 Honda Civic|AB1234C|987654321|Engine Repair|2022/12/30 13:00|Vancouver|2023/01/10 13:00|Burnaby|Tom Li|$30/day|10% off|Basic|Visa|$200|liesure|5*|

## Frist Normal Form (modify column contains multiple values)
#### *Separate customer_name into customer_first_name and customer_last_name
#### *Separate car into car_make, car_model and car_year
#### *Separate rental_start into pickup _date and pickup_time
#### *Separate rental_end into return_date and return_time
|order_no|customer_first_name|customer_last_name|customer_address|customer_contact_no|customer_email|customer_data_of_birth|drivers_license_no|membership|car_make|car_model|car_year|license_plate_no|VIN|latest_maintainance|pick_up_date|pisk_u[_time|pick_up_branch|return_date|return_time|return_branch|staff|rental_rate|promotion|insurance|payment|payment_amount|purpose|feedback|
|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|
|1|Hison|Lin|1234 Main Street Vancouver BC V5P 0H5|7788990011|hison@gmail.com|1990/08/09|123456789|Gold|Honda|Civic|2018|AB1234C|987654321|Engine Repair|2022/12/30|13:00|Vancouver|2023/01/10|13:00|Burnaby|Tom Li|$30/day|10% off|Basic|Visa|$200|liesure|5*|

## Second Normal Form (Primary keys) Functional Dependencies
#### *Separate rental order table into customer table and car table
#### *They both have information related to order details and each other
#### *Appoint primary key and foreign key for both tables 

### Customer:
|customer_first_name|customer_last_name|customer_address|customer_contact_no|customer_email|customer_data_of_birth|drivers_license_no|membership|feedback|order_no|pick_up_date|pick_up_time|pick_up_branch|return_date|return_time|return_branch|staff|rental_rate|promotion|insurance|payment|payment_amount|purpose|customer_id(PK)|Vin(FK)|
|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|
|Hison|Lin|1234 Main Street Vancouver BC V5P 0H5|7788990011|hison@gmail.com|1990/08/09|123456789|Gold|5*|1|2022/12/30|13:00|Vancouver|2023/01/10|13:00|Burnaby|Tom Li|$30/day|10% off|Basic|Visa|$200|liesure|1|987654321|

### Car:
|VIN(PK)|car_make|car_model|car_year|license_plate_no|latest_maintainance|order_no|pick_up_date|pick_up_time|pick_up_branch|return_date|return_time|return_branch|staff|rental_rate|promotion|insurance|payment|payment_amount|purpose|customer_id(FK)|
|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|
|Honda|Civic|2018|AB1234C|987654321|Engine Repair|1|2022/12/30|13:00|Vancouver|2023/01/10|13:00|Burnaby|Tom Li|$30/day|10% off|Basic|Visa|$200|liesure|1|

## Third Normal Form
### 1. Customer
|customer_id(PK)|membership_no(FK)|first_name|last_name|address|contact_no|email|date_of_birth|driveers_license_no|
|--|--|--|--|--|--|--|--|--|

### 2. Membership
|membership_no(PK)|customer_id(FK)|membership_type|join_date|
|--|--|--|--|

### 3. Car
|vin(PK)|rental_rate_type(FK)|make|model|year|license_plate_no|fuel_type|color|seats|
|--|--|--|--|--|--|--|--|--|

### 4. Maintainance
|maintainance_no(PK)|vin(FK)|maintainance_date|description|cost|facility_name|technician_name|return_date|
|--|--|--|--|--|--|--|--|

### 5. Branch
|branch_no(PK)|address|city|contact_no|
|--|--|--|--|

### 6. Staff
|staff_id(PK)|branch_no(FK)|first_name|last_name|department|position|contact_no|email|hired_date|status|
|--|--|--|--|--|--|--|--|--|--|

### 7. Rental Rate
|rental_rate_type(PK)|daily_rate|weekly_rate|monthly_rate|
|--|--|--|--|

### 8. Promotion
|promotion_code(PK)|name|description|start_date|end_date|status|
|--|--|--|--|--|--|

### 9. Payment
|payment_id(PK)|customer_id|payment_method|payment_date|payment_amount|payment_receipt_number|
|--|--|--|--|--|--|

### 10. Insurance
|policy_no(PK)|customer_id(FK)|vin(FK)|insurance_provider|insurance_type|policy_start_date|policy_end_date|insured_amount|premium|deductible|prev_claim|
|--|--|--|--|--|--|--|--|--|--|--|

### 11. Feedback
|feedback_no(PK)|customer_id(FK)|feedback_rating|feedback_comment|
|--|--|--|--|

### 12. Order
|rental_order_no(PK)|customer_id(FK)|membership_no(FK)|vin(FK)|branch_no_pickup(FK)|branch_no_return(FK)|staff_id(FK)|rental_rate_type(FK)|promotion_code(FK)|insurance_no(FK)|payment(FK)|feedback(FK)|pick_up_date|pick_up_time|return_date|return_time|renting_purpose|
|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|
