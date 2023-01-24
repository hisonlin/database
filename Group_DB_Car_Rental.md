# Group DB - Car Rental

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
|Customer ID(PK)|000001||Jia Xi
|Membership No.(FK)|000001||
|First Name|Sam||
|Last Name|Hill||
|Address|1234-No.1 Rd Vancouver BC||
|Contact No.|+1 7788991122||
|Email|samhill@gmail.com||
|Date of birth|01 Jan 1990||
|Driver's License Number|124134543||

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|customer_id|Customer ID|store the id of a customer|INT AUTO_INCREMENT|Primay Key||
|membership_no|Membership Number|store the number of a member|VARCHAR(20)|Foreign Key||
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
|Membership No.(PK)|1||Jia Xi
|Membership Type|Gold|(Platinum, Gold, Silver, Bronze, Null)|
|First Name|Sam||
|Last Name|Hill||
|Address|1234-No.1 Rd Vancouver BC||
|Contact No.|+1 7788991122||
|Email|samhill@gmail.com||
|Date of birth|01 Jan 1990||
|Join date|01 Jan 2023||

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
|VIN(PK)|10001||Jia Xi
|Maintainance Order No(FK)|2342342||
|Make|Porsche||
|Model|918||
|Year|2013||
|License Plate Number|B46 JP2||
|Car Type|sport||
|Fuel Type|disel||
|Car Color|white||

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|vin|VIN|store the VIN of a car|VARCHAR(30)|Primary Key||
|latest_maintainance_no|Latest Maintainance Order Number|store the maintainance order number of the latest maintainance for a car|VARCHAR(30)|Foreign Key||
|make|Make|store the manufacturer of a car|VARCHAR(30)|||
|model|Model|store the model of a car|VARCHAR(30)|||
|year|Year|store the year of manufacture of a car|VARCHAR(4)|||
|license_plate_no|License Plate Number|store the license plate number of a car|VARCHAR(20)|Alternate Key||
|car_type|Car Type|store the type of a car|ENUM ('SUV', 'Compact', 'Sedans', 'Trucks', 'Luxury', 'Sports', 'Convertible', 'Van', 'Minivan')|||
|fuel_type|Fuel Type|store the fuel type of a car|ENUM('Electric', 'Diesel', 'Regular', 'Midgrade', 'Premium')|||
|car_color|Car Color|store the color of a car|VARCHAR(20)|||

### 4. Maintainance
### (preliminary list of subject)
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
|Maintainance Order Number(PK)|2342342||Jia Xi
|VIN(FK)|10001||
|Maintainance Date|Febuary 2, 2023||
|Maintainance Type|Engine Repair||
|Maintainance Description|Engine swap with Imported engine for longevity||
|Maintainance Cost|$2,234.33||
|Maintainance Facility Name|ABC Company||
|Technician Name|TIM Lau||
|Return Date|Febuary 22, 2023||

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|maintainance_no|Maintainance Order Number|store the maintainance order number of maintainance for a car|VARCHAR(30)|Primary Key||
|vin|VIN|store the VIN of a car|VARCHAR(30)|Foreign Key||
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
|Branch No.(PK)|01||Haoqi
|Branch Manager ID(FK)|100023423||
|Address|1234 No.2 Rd Vancouver BC||
|City|Vancouver||
|Contact No.|+1 7788991100||

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|||||||
|||||||
|||||||
|||||||

### 6. Staff
### (preliminary list of subject)
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
|Staff ID(PK)|1001231936||Haoqi
|First Name|Jim||
|Last Name|Kirk||
|Department|Sales||
|Position|Salesperson||
|Contact Number|+1 6043462944||
|Email|j.kirk@rentacar.ca||
|Hired Date|May 2, 2020||
|Status|Full-time||

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|||||||
|||||||
|||||||
|||||||

### 7. Rental Rate
### (preliminary list of subject)
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
|Car_Type(PK)|sport||Haoqi
|Daily_Rate|$30||
|Weekly_Rate|$200||
|Mothly_Rate|$700||

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|||||||
|||||||
|||||||
|||||||

### 8. Promotion
### (preliminary list of subject)
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
|Promotion Code(PK)|0001||Haoqi
|Promotion Name|Black Friday|'Holiday Sale'|
|Promotion Description|50% off||
|Promotion Start Date|11-11-2020||
|Promotion End Date|12-1-2020||
|Promotion Status| active|active, expired, or discontinued|

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|||||||
|||||||
|||||||
|||||||

### 9. Payment
### (preliminary list of subject)
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
|Payment ID(PK)|B43434||Muochu
|Payment Method|Visa||
|Credit Card Number|2343 2342 4645 2342||
|Credit Card Holder Name|Big Bob||
|Credit Card Expiration Date|08-12-2027||
|Credit Card Security Code|522||
|Credit Card Billing Address|123 Tree Avenue, Vancouver BC v7p 3g2||
|Payment Date|08-13-2022||
|Payment Amount|$345.33||
|Payment Receipt Number|32536235||


### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|payment_id|Payment ID|stores the id of a payment|INT AUTO_INCREMENT|Primary Key||
|payment_method|Payment Method|stores the payment method used during transaction|VARCHAR(64)|Candidate Key||
|cc_no|Credit Card Number|stores the credit card number|VARCHAR(20)|Candidate Key||
|cc_holder_name|Credit Card Holder Name|stores the credit card holder name|VARCHAR(64)|Candidate Key||
|cc_expire_date|Credit Card Expiration Date|stores the credit card expiration date|DATE|Candidate Key||
|cc_security_code|Credit Card Security Code|stores the credit card security code|VARCHAR(10)|Candidate Key||
|cc_billing_address|Credit Card Billing Address|stores the credit card billing address|VARCHAR(200)|Candidate Key||
|payment_date|Payment Date|stores the date of payment made|DATE|Candidate Key||
|payment_amount|Payment Amount|stores the total amount from transaction|VARCHAR(20)|Candidate Key||
|payment_receipt_no|Payment Receipt Number|stores payment receipt number|VARCHAR(20)|Alternate Key||


### 10. Insurance
### (preliminary list of subject)
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
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

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|policy_no|Policy Number|stores the insurance policy number purchased by the customer|INT AUTO_INCREMENT|Primary Key||
|customer_id|Customer ID|stores the id of a customer|INT AUTO_INCREMENT|Foeign Key||
|vin|VIN|stores the VIN(Vehicle Insurance Number) of the car|VARCHAR(30)|Candidate Key||
|insurance_provider|Insurance Provider|store the name of the insurance provider|VARCHAR(30)|Candidate Key||
|insurance_type|Insurance Type|stores the specfic type of coverage(e.g. liability, collision, comprehension, etc.)|VARCHAR(30)|Candidate Key||
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
|Feedback No.(PK)|0001||Muochu
|Customer ID(FK)|000001||
|Feedback Rating|5*||
|Feedback comment|NULL||

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|feedback_no|Feedback No.|stores the id of the feedback|INT AUTO_INCREMENT|Primary Key||
|customer_id|Customer ID|stores the id of a customer|INT AUTO_INCREMENT|Foreign Key||
|feedback_rating|stores the rating of the customer's feedback|Feedback Rating|VARCHAR(10)|Candidate Key||
|feedback_comment|stores the comment given by the customer's feedback|Feedback comment|VARCHAR(200)|Candidate Key||

### 12. Order
### (preliminary list of subject)       
|Field Name|Example of Data|Comments|Person In Charge|
|--|--|--|--|
|Rental Order Number(PK)|2394324||Muochu
|Customer_ID(FK)|124134543||
|VIN(FK)|10001||
|Pick-Up Branch ID(FK)|2342342|
|Return Branch ID(FK)|2342342||
|Staff ID(FK)|1001231936||
|Rental Rate(FK)|sport||
|Promotion Code(FK)|0001||
|Insurance(FK)|593054043||
|Payment(FK)|B43434||
|Feedback(FK)|||
|Pick-up Date|January 20, 2023||
|Pick-up Time|13:00||
|Return Date|January 21, 2023||
|Return Time|13:00||
|Total|$100||
|Renting Purpose|Leisure||

### (preliminary list of field)
|Field Name(database)|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|rental_order_no|Rental Order Number|||||
|customer_id|Customer_ID|||||
|||||||
|||||||
|||||||
|||||||
|||||||
|||||||
|||||||
|||||||
|||||||
|||||||
|||||||
|||||||
|||||||
|||||||
|||||||
|||||||

