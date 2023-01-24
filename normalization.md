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

