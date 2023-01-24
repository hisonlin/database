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
|Membership No.(FK)|000001|||
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
<<<<<<< HEAD
|membership_no|Membership Number|store the number of a member|VARCHAR(20)|Foreign Key|membership table|
=======
|membership_no|Membership Number|store the number of a member|VARCHAR(20)|Foreign Key||
>>>>>>> f55251339ea004659b3c78afa175bd6f07d8f138
|first_name|First Name|store the first name of a customer|VARCHAR(64)|Candidate Key||
|last_name|Last Name|store the last name of a customer|VARCHAR(64)|Candidate Key||
|address|Address|store the address of a customer|VARCHAR(200)|Candidate Key||
|contact_no|Contact Number|store the contact number of a customer|VARCHAR(20)|Candidate Key||
|email|Email|store the email of a customer|VARCHAR(100)|Candidate Key||
|date_of_birth|Date of birth|store the date of birth of a customer|DATE|Candidate Key||
|drivers_license_no|Driver's License Number|store the driver's license number of a customer|VARCHAR(20)|Alternate Key||

### 2. Membership
### (preliminary list of subject)
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
|Membership No.(PK)|1||Jia Xi|
|Membership Type|Gold|(Platinum, Gold, Silver, Bronze, Null)||
|First Name|Sam|||
|Last Name|Hill|||
|Address|1234-No.1 Rd Vancouver BC|||
|Contact No.|+1 7788991122|||
|Email|samhill@gmail.com|||
|Date of birth|01 Jan 1990|||
|Join date|01 Jan 2023|||

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|membership_no|Membership Number|store the id of a member|INT AUTO_INCREMENT|Primay Key||
|membership_type|Membership Type|store the type of a membership|ENUM('Platinum', 'Gold', 'Silver', 'Bronze')|||
|first_name|First Name|store the first name of a member|VARCHAR(64)|Candidate Key||
|last_name|Last Name|store the last name of a member|VARCHAR(64)|Candidate Key||
|address|Address|store the address of a customer|VARCHAR(200)|Candidate Key||
|contact_no|Contact Number|store the contact number of a customer|VARCHAR(20)|Candidate Key||
|email|Email|store the email of a customer|VARCHAR(100)|Candidate Key||
|date_of_birth|Date of birth|store the date of birth of a customer|DATE|Candidate Key||
|join_date|Join Date|store the date of a member apply for membership|DATE|Candidate Key||

### 3. Car
### (preliminary list of subject)
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
|VIN(PK)|10001||Jia Xi|
|Maintainance Order No(FK)|2342342|||
|Make|Porsche|||
|Model|918|||
|Year|2013|||
|License Plate Number|B46 JP2|||
|Car Type|sport|||
|Fuel Type|disel|||
|Car Color|white|||
|Seats|5|||

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|vin|VIN|store the VIN of a car|VARCHAR(30)|Primary Key||
|latest_maintainance_no|Latest Maintainance Order Number|store the maintainance order number of the latest maintainance for a car|VARCHAR(30)|Foreign Key|maintainance table|
|make|Make|store the manufacturer of a car|VARCHAR(30)|||
|model|Model|store the model of a car|VARCHAR(30)|||
|year|Year|store the year of manufacture of a car|VARCHAR(4)|||
|license_plate_no|License Plate Number|store the license plate number of a car|VARCHAR(20)|Alternate Key||
|car_type|Car Type|store the type of a car|ENUM ('SUV', 'Compact', 'Sedans', 'Trucks', 'Luxury', 'Sports', 'Convertible', 'Van', 'Minivan')|||
|fuel_type|Fuel Type|store the fuel type of a car|ENUM('Electric', 'Diesel', 'Regular', 'Midgrade', 'Premium')|||
|car_color|Car Color|store the color of a car|VARCHAR(20)|||
|seats|Seats|store the amountof seats of a car|VARCHAR(2)|||

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
|maintainance_date|Maintainance Date|store the date of the maintainance|DATE|||
|maintainance_type|Maintainance Type|store the type of the maintainance|VARCHAR(100)|||
|maintainance_description|Maintainance Description|store a short description of a maintainance|VARCHAR(500)|||
|maintainance_cost|Maintainance Cost|store the cost of a maintainance|DECIMAL(8,2)|||
|maintainance_facility_name|Maintainance Facility Name|store the name of maintainace company of a maintainance|VARCHAR(100)|||
|technician_name|Technician Name|store the name of technician of a maintainance|VARCHAR(100)|||
|return_date|Return Date|store the date of return of a maintainance|DATE|||

### 5. Branch
### (preliminary list of subject)
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
|Branch No.(PK)|001||Haoqi|
|Branch Manager ID(FK)|100023423|||
|Address|1234 No.2 Rd Vancouver BC|||
|City|Vancouver|||
|Contact No.|7788991100|||

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|branch_no.|Branch Number|stores the number of a branch|INT AUTO_INCREMENT|Primary Key||
|manage_id|Branch Manager ID|The manager of the branch|VARCHAR(20)|Foreign Key|staff table|
|address|Address|stores the address of a branch|VARCHAR(200)|CK||
|city|City|stores the city of a branch|VARCHAR(30)|CK||
|contact_no|Contact Number|store the contact number of a branch|VARCHAR(20)|CK||

### 6. Staff
### (preliminary list of subject)
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
|Staff ID(PK)|123456||Haoqi
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
<<<<<<< HEAD
|staff_id|Staff ID|stores the id of a staffINT(6)|Primary Key||
|first_name|First Name|stores the first name of a staff|VARCHAR(64)|CK||
|last_name|Last Name|stores the last name of a staff|VARCHAR(64)|CK||
|department|Department|stores the department of a staff|VARCHAR(20)|CK||
|position|Position|stores the position of a staff|VARCHAR(20)|CK||
|contact_no|Contact Number|stores the contact number of a staff|INT(20)|CK||
|email|Email|stores the email of a staff|VARCHAR(50)|CK||
|hired_date|Hired Date|stores the hired date of a staff|DATE|CK||
|status|Status|stores the status of a staff|ENUM ("Full-time", "Part time", "Terminated"|CK||
=======
|staff_id||stores the ID number of the staff member facilitating the transaction|VARCHAR(20)|||
|||||||
|||||||
|||||||
>>>>>>> f55251339ea004659b3c78afa175bd6f07d8f138

### 7. Rental Rate
### (preliminary list of subject)
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
<<<<<<< HEAD
|Rental Type(PK)|sport||Haoqi
|Daily Rate|$30||
|Weekly Rate|$200||
|Mothly Rate|$700||
=======
|Rental_Type(PK)|sport||Haoqi
|Daily_Rate|$30||
|Weekly_Rate|$200||
|Mothly_Rate|$700||
>>>>>>> f55251339ea004659b3c78afa175bd6f07d8f138

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|rental_type||stores the rental type of a rental|ENUM ('SUV', 'Compact', 'Sedans', 'Trucks', 'Luxury', 'Sports', 'Convertible', 'Van', 'Minivan')|Primary Key||
|daily_rate|Daily Rate|stores the daily rate of a rental|DECIMAL(5,2)|CK||
|weekly_rate|Weekly Rate|stores the weekly rate of a rental|DECIMAL(5,2)|CK||
|mothly_rate|Mothly Rate|stores the monthly rate of a rental|DECIMAL(5,2)|CK||

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
|promotion_code|Promotion Code|stores the promotion code of a promotion|INT(8)|Primary Key||
|Promotion_Name|Promotion Name|stores the name of a promotion|VARCHAR(30)|CK||
|promotion_description|Promotion Description|stores the description of a promotion|VARCHAR(30)|CK||
|promotion_start_date|Promotion Start Date|stores the start date of a promotion|DATE|CK||
|promotion_end_date|Promotion End Date|stores the end date of a promotion|DATE|CK||
|promotion_Status|Promotion Status|stores the status of a promotion|ENUM ("active", "expired", "discontinued")|CK||

### 9. Payment
### (preliminary list of subject)
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
|Payment ID(PK)|B43434||Muochu|
|Payment Method|Visa|||
|Credit Card Number|2343 2342 4645 2342|||
|Credit Card Holder Name|Big Bob|||
|Credit Card Expiration Date|08-12-2027|||
|Credit Card Security Code|522|||
|Credit Card Billing Address|123 Tree Avenue, Vancouver BC v7p 3g2|||
|Payment Date|08-13-2022|||
|Payment Amount|$345.33|||
|Payment Receipt Number|32536235|||


### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
<<<<<<< HEAD
|payment_id|Payment ID|stores the id of a payment|VARCHAR(20)|Primary Key|transation company|
=======
|payment_id|Payment ID|stores the id of a payment|VARCHAR(20)|Primary Key||
>>>>>>> f55251339ea004659b3c78afa175bd6f07d8f138
|payment_method|Payment Method|stores the payment method used during transaction|VARCHAR(64)|Candidate Key||
|cc_no|Credit Card Number|stores the credit card number|VARCHAR(20)|Candidate Key||
|cc_holder_name|Credit Card Holder Name|stores the credit card holder name|VARCHAR(64)|Candidate Key||
|cc_expire_date|Credit Card Expiration Date|stores the credit card expiration date|DATE|Candidate Key||
|cc_security_code|Credit Card Security Code|stores the credit card security code|VARCHAR(10)|Candidate Key||
|cc_billing_address|Credit Card Billing Address|stores the credit card billing address|VARCHAR(200)|Candidate Key||
|payment_date|Payment Date|stores the date of payment made|DATE|Candidate Key||
|payment_amount|Payment Amount|stores the total amount from transaction|VARCHAR(20)|Candidate Key||
|payment_receipt_no|Payment Receipt Number|stores payment receipt number|VARCHAR(20)|Alternate Key||
<<<<<<< HEAD
=======

>>>>>>> f55251339ea004659b3c78afa175bd6f07d8f138

### 10. Insurance
### (preliminary list of subject)
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
<<<<<<< HEAD
|Policy Number(PK)|593054043||Muochu|
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
=======
|Policy Number(PK)|593054043||Muochu
|Customer ID(FK)|1||
|VIN(FK)|10001||
|Insurance Provider|AllState|Dropdown menu for Companies|
|Insurance Type|Comprehension||
|Policy Start Date|January 17, 2023||
|Policy End date|January 20, 2023||
|Insured Amount|$10,000||
|Premium|$170.00 CAD||
|Deductible|$1,000||
|Coverage Limit|$5,000||
|Previous Claim|None|Dropdown menu for 'Yes' or 'None'|
>>>>>>> f55251339ea004659b3c78afa175bd6f07d8f138

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
<<<<<<< HEAD
|policy_no|Policy Number|stores the insurance policy number purchased by the customer|VARCHAR(20)|Primary Key|insurance company|
|customer_id|Customer ID|stores the id of a customer|VARCHAR(20)|Foreign Key|customer table|
|vin|VIN|stores the VIN(Vehicle Insurance Number) of the car|VARCHAR(30)|Foreign Key|car table|
=======
|policy_no|Policy Number|stores the insurance policy number purchased by the customer|VARCHAR(20)|Primary Key||
|customer_id|Customer ID|stores the id of a customer|VARCHAR(20)|Foeign Key||
|vin|VIN|stores the VIN(Vehicle Insurance Number) of the car|VARCHAR(30)|Candidate Key||
>>>>>>> f55251339ea004659b3c78afa175bd6f07d8f138
|insurance_provider|Insurance Provider|store the name of the insurance provider|VARCHAR(30)|Candidate Key||
|insurance_type|Insurance Type|stores the specfic type of coverage(e.g. liability, collision, comprehension, etc.)|ENUM('Liability', 'Collision', 'Comprehension', 'Personal Accident Insurance', 'Personal Effect Coverage', 'Loss of Use Coverage', 'Towing and Labor Coverage', 'Roadside Assistance')|Candidate Key||
|policy_start_date|Policy Start Date|stores the start date for the insured coverage|DATE|Candidate Key||
|policy_end_date|Policy End date|stores the end date for the insured coverage|DATE|Candidate Key||
|insured_amount|Insured Amount|stores the total insurance coverage amount|VARCHAR(20)|Candidate Key||
|premium|Premium|stores the premium cost of the insurance coverage|VARCHAR(20)|Candidate Key||
|deductible|Deductible|stores the amount the customer must pay out-of pocket as deductible before the insurance policy begins|VARCHAR(20)|Candidate Key||
|coverage_limit|Coverage Limit|stores the coverage limit of the insurance|VARCHAR(20)|Candidate Key||
|prev_claim|Previous Claim|stores any previous made insurance claim|VARCHAR(30)|Candidate Key||

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
<<<<<<< HEAD
|customer_id|Customer ID|stores the id of a customer|VARCHAR(20)|Foreign Key|customer table|
=======
|customer_id|Customer ID|stores the id of a customer|VARCHAR(20)|Foreign Key||
>>>>>>> f55251339ea004659b3c78afa175bd6f07d8f138
|feedback_rating|stores the rating of the customer's feedback|Feedback Rating|VARCHAR(10)|Candidate Key||
|feedback_comment|stores the comment given by the customer's feedback|Feedback comment|VARCHAR(200)|Candidate Key||

### 12. Order
### (preliminary list of subject)       
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
<<<<<<< HEAD
|Rental Order Number(PK)|2394324||Muochu|
|Customer_ID(FK)|124134543|||
|VIN(FK)|10001|||
|Pick-Up Branch ID(FK)|2342342||
|Return Branch ID(FK)|2342342|||
|Staff ID(FK)|1001231936|||
|Rental Type(FK)|sport|||
|Promotion Code(FK)|0001|||
|Policy Number(FK)|593054043|||
|Payment ID (FK)|B43434|||
|Feedback No(FK)||||
|Pick-up Date|January 20, 2023|||
|Pick-up Time|13:00|||
|Return Date|January 21, 2023|||
|Return Time|13:00|||
|Payment Amount|$100|||
|Renting Purpose|Leisure|||
=======
|Rental Order Number(PK)|2394324||Muochu
|Customer_ID(FK)|124134543||
|VIN(FK)|10001||
|Pick-Up Branch ID(FK)|2342342|
|Return Branch ID(FK)|2342342||
|Staff ID(FK)|1001231936||
|Rental Type(FK)|sport||
|Promotion Code(FK)|0001||
|Policy Number(FK)|593054043||
|Payment ID (FK)|B43434||
|Feedback No(FK)|||
|Pick-up Date|January 20, 2023||
|Pick-up Time|13:00||
|Return Date|January 21, 2023||
|Return Time|13:00||
|Payment Amount|$100||
|Renting Purpose|Leisure||
>>>>>>> f55251339ea004659b3c78afa175bd6f07d8f138

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|rental_order_no|Rental Order Number|stores the rental order number|INT AUTO_INCREMENT|Primary Key||
<<<<<<< HEAD
|customer_id|Customer_ID|stores the id of a customer|VARCHAR(20)|Foreign Key|customer table|
|vin|VIN|stores the VIN(Vehicle Identification Number) of the vehicle|VARCHAR(30)|Foreign Key|car table|
|return_branch|Return Branch|stores the branch name for the car return|VARCHAR(64)|Foreign Key|branch table|
|staff_id|Staff ID|stores the ID number of the staff member facilitating the transaction|VARCHAR(20)|Foreign Key|staff table|
|rental_type|Rental Type|stores the type of car rental||Foreign Key|rental rate table|
|promotion_code|Promotion Code|stores the promotion code used during transaction|VARCHAR(20)|Foreign Key|promotion table|
|policy_no|Policy Number|stores the insurance policy number purchased by the customer|VARCHAR(20)|Foreign Key|insurance table|
|payment_id|Payment ID|stores the id of a payment|VARCHAR(20)|Foreign Key|payment table|
|feedback_no|Feedback Number|stores the id of the feedback|VARCHAR(20)|Foreign Key|feedback table|
=======
|customer_id|Customer_ID|stores the id of a customer|VARCHAR(20)|Foreign Key||
|vin|VIN|stores the VIN(Vehicle Identification Number) of the vehicle|VARCHAR(30)|Foreign Key||
|pick_up_branch|Pick-Up Branch|stores the branch name for the car pick-up|VARCHAR(64)|Foreign Key||
|return_branch|Return Branch|stores the branch name for the car return|VARCHAR(64)|Foreign Key||
|staff_id|Staff ID|stores the ID number of the staff member facilitating the transaction|VARCHAR(20)|||
|rental_type|Rental Type|stores the type of car rental||Foreign Key||
|promotion_code|Promotion Code|stores the promotion code used during transaction|VARCHAR(20)|Foreign Key||
|policy_no|Policy Number|stores the insurance policy number purchased by the customer|VARCHAR(20)|Foreign Key||
|payment_id|Payment ID|stores the id of a payment|VARCHAR(20)|Foreign Key||
|feedback_no|Feedback Number|stores the id of the feedback|VARCHAR(20)|Foreign Key||
>>>>>>> f55251339ea004659b3c78afa175bd6f07d8f138
|pick_up_date|Pick-up Date|stores the date of the car pick up|DATE|Candidate Key||
|pick_up_time|Pick-up time||TIME|stores the time of the car pick up|Candidate Key||
|return_date|Return Date|stores the date of the car return|DATE|Candidate Key||
|return_time|Return time|stores the time of the car return|TIME|Candidate Key||
|payment_amount|Payment Amount|stores the|stores the total amount from transaction|VARCHAR(20)|Candidate Key||
|renting_purpose|Renting Purpose|stores the purpose of the car rental|VARCHAR(30)|Candidate Key||

<<<<<<< HEAD
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
|order_no|customer_first_name|customer_last_name|customer_address|customer_contact_no|customer_email|customer_data_of_birth|drivers_license_no|membership|car_make|car_model|car_year|license_plate_no|VIN|latest_maintainance|rental_date|rental_time|pickup_branch|return_date|return_time|return_branch|staff|rental_rate|promotion|insurance|payment|payment_amount|purpose|feedback|
|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|
|1|Hison|Lin|1234 Main Street Vancouver BC V5P 0H5|7788990011|hison@gmail.com|1990/08/09|123456789|Gold|Honda|Civic|2018|AB1234C|987654321|Engine Repair|2022/12/30|13:00|Vancouver|2023/01/10|13:00|Burnaby|Tom Li|$30/day|10% off|Basic|Visa|$200|liesure|5*|

## Second Normal Form (Primary keys) Functional Dependencies
#### *Separate rental order table into customer table and car table
#### *They both have information related to order details and each other
#### *Appoint primary key and foreign key for both tables 

### Customer:
|customer_first_name|customer_last_name|customer_address|customer_contact_no|customer_email|customer_data_of_birth|drivers_license_no|membership|feedback|rental_date|rental_time|pickup_branch|return_date|return_time|return_branch|staff|rental_rate|promotion|insurance|payment|payment_amount|purpose|customer_id(PK)|Vin(FK)|
|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|
|Hison|Lin|1234 Main Street Vancouver BC V5P 0H5|7788990011|hison@gmail.com|1990/08/09|123456789|Gold|5*|2022/12/30|13:00|Vancouver|2023/01/10|13:00|Burnaby|Tom Li|$30/day|10% off|Basic|Visa|$200|liesure|1|987654321|

### Car:
|VIN(PK)|car_make|car_model|car_year|license_plate_no|latest_maintainance|rental_date|rental_time|pickup_branch|return_date|return_time|return_branch|staff|rental_rate|promotion|insurance|payment|payment_amount|purpose|customer_id(FK)
|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|
|Honda|Civic|2018|AB1234C|987654321|Engine Repair|2022/12/30|13:00|Vancouver|2023/01/10|13:00|Burnaby|Tom Li|$30/day|10% off|Basic|Visa|$200|liesure|1|

## Third Normal Form
### 1. Customer
|customer_id(PK)|membership_no(FK)|first_name|last_name|address|contact_no|email|date_of_birth|driveers_license_no|
|--|--|--|--|--|--|--|--|--|

### 2. Membership
|membership_no(PK)|membership_type|first_name|last_name|address|contact_no|email|date_of_birth|join_date|
|--|--|--|--|--|--|--|--|--|

### 3. Car
|vin(PK)|latest_maintainance_no|make|model|year|license_plate_no|car_type|fuel_type|car_color|seats|
|--|--|--|--|--|--|--|--|--|--|

### 4. Maintainance
|maintainance_no(PK)|vin(FK)|maintainance_date|maintainance_type|maintainance_description|maintainance_cost|maintainance_facility_name|technician_name|return_date|
|--|--|--|--|--|--|--|--|--|

### 5. Branch
|branch_no(PK)|branch_manager_id(FK)|address|city|contact_no|
|--|--|--|--|--|

### 6. Staff
|staff_id(PK)|first_name|last_name|department|position|contact_no|email|hired_date|status|
|--|--|--|--|--|--|--|--|--|

### 7. Rental Rate
|rental_type(PK)|daily_rate|weekly_rate|monthly_rate|
|--|--|--|--|

### 8. Promotion
|promotion_code(PK)|promotion_name|promotion_description|promotion_start_date|promotion_end_date|promotion_status|
|--|--|--|--|--|--|

### 9. Payment
|payment_id(PK)|payment_method|credit_card_no|credit_card_holder_name|credit_card_expiration_date|credit_card_security_code|credit_card_billing_address|payment_date|payment_amount|payment_receipt_number|
|--|--|--|--|--|--|--|--|--|--|

### 10. Insurance
|policy_no(PK)|customer_id(FK)|vin(FK)|insurance_provider|insurance_type|policy_start_date|policy_end_date|insured_amount|premium|deductible|coverage_limit||previous_claim|
|--|--|--|--|--|--|--|--|--|--|--|--|--|

### 11. Feedback
|feedback_no(PK)|customer_id(FK)|feedback_rating|feedback_comment|
|--|--|--|--|

### 12. Order
|retnal_order_no(PK)|customer_id(FK)|vin(FK)|pickup_branch_id(FK)|return_branch_id(FK)|staff_id(FK)|rental_type(FK)|promotion_code(FK)|insurance(FK)|payment(FK)|feedback(FK)|pick_up_date|pick_up_time|return_date|return_time|payment_amount|renting_purpose|
|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|
=======

>>>>>>> f55251339ea004659b3c78afa175bd6f07d8f138
