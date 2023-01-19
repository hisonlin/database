# Group DB - Car Rental

## Subject
|   |   |   |   |
|--|--|--|--|
|1. Customer|2. Membership|3. Blacklist|4. Branch|
|5. Staff|6. Car|7. Rental rate|8. Discount|
|9. Payment|10. Order|11. Insurance|12. Repair|

## Field
### 1. Customer
|Field Name|Example of Data|Comments|
|--|--|--|
|Customer_ID(PK)|000001||
|Membership_No.(FK)|000001||
|Blacklist_No.(FK)|Null||
|First_Name|Sam||
|Last_Name|Hill||
|Middle_Name|Null||
|Date_of_birth|01 Jan 1990||
|Address|1234-No.1 Rd Vancouver BC||
|Postal_Code|A1B 0C1||
|Contact_No.|+1 7788991122||
|Driver's License Number|124134543||

### 2. Membership
|Field Name|Example of Data|Comments|
|--|--|--|
|Membership_No.(PK)|000001||
|First_Name|Sam||
|Last_Name|Hill||
|Middle_Name|Null||
|Date_of_birth|01 Jan 1990||
|Address|1234-No.1 Rd Vancouver BC||
|Postal_Code|A1B 0C1||
|Contact_No.|+1 7788991122||
|Join_date|01 Jan 2023||

### 3. Blacklist
|Field Name|Example of Data|Comments|
|--|--|--|
|Blacklist_No.(PK)|000001||
|Order_no.(FK)|000001|The order made customer become blacklist|
|First_Name|Sam||
|Last_Name|Hill||
|Middle_Name|Null||
|Date_of_birth|01 Jan 1990||
|Address|1234-No.1 Rd Vancouver BC||
|Postal_Code|A1B 0C1||
|Contact_No.|+1 7788991122||

### 4. Branch
|Field Name|Example of Data|Comments|
|--|--|--|
|Branch_no.|01||
|Address|1234 No.2 Rd Vancouver BC||
|Postal_Code|A1B 0C2||
|City|Vancouver||
|Contact_No.|+1 7788991100||
|Branch_Manager|Tom Li||

### 5. Staff
|Field Name|Example of Data|Comments|
|--|--|--|
|Employee ID(PK)|1001231936||
|Staff Name|Jim Kirk||
|Position|Salesperson||
|Email|j.kirk@rentacar.ca||
|Department|Sales||
|Contact Number|+1 6043462944||
|Hired Date|May 2, 2020||

### 6. Car
|Field Name|Example of Data|Comments|
|--|--|--|
|VIN(PK)|10001||
|Maintainance Order Number(FK)|2342342||
|License Plate Number|B46 JP2||
|Make/Model|Porsche 918||
|Year|2013||
|Car Type|sport||
|Fuel type|disel||
|Number of seats|4||
|Number of doors|2|'couple'|
|Car color|white||

### 7. Rental Rate
|Field Name|Example of Data|Comments|
|--|--|--|
|Base rental rate|$40|Per day|
|Additional driver fee|Null||
|Mileage fee|Unlimited||
|Fuel surcharge|$10||
|Young driver surcharge|Null|Apply for drivers under 25|
|One-way rental fee|Null||
|Child seat fee|$10||
|GPS rental fee|Null||
|Pickup and drop-off fees|$20||
|Extra hour fee|Null||
|Government or military rates|Null||
|Membership or loyalty program rates|Null||

### 8. Discount
|Field Name|Example of Data|Comments|
|--|--|--|
|Discount code(PK)|0001||
|Discount name|Black Friday|'Holiday Sale'|
|Discount description|50% off||
|Discount start date|11-11-2020||
|Discount end date|12-1-2020||
|Discount status| active|active, expired, or discontinued|

### 9. Payment
|Field Name|Example of Data|Comments|
|--|--|--|
|Transaction ID(PK)|B43434||
|Payment method|credit card|'credit card, debit card, cash, check'|
|Credit card type|visa||
|Credit card expiration date|08-12-2027||
|Credit card billing address|123 Tree Avenue, Vancouver BC v7p 3g2||
|Credit card security code|522||
|Credit card holder name|Big Bob||
|Credit card number|2343 2342 4645 2342||
|Payment status|Confirmed||
|Payment date|08-13-2022||
|Payment amount|$345.33||
|Payment receipt number|32536235||
|Refund status if any|Null||
|Payment plan if any|Null||
|Payment processing fee if any|Null||
|Payment gateway transaction ID|DFSEFF232||

### 10. Order       
|Field Name|Example of Data|Comments|
|--|--|--|
|Rental Order Number(PK)|2394324||
|Customer_ID(FK)|124134543||
|Pick-Up Branch ID(FK)|2342342|
|Return Branch ID(FK)|2342342||
|Employee ID(FK)|1001231936||
|Transaction ID(FK)|B43434||
|Insurance|593054043||
|Pick-up Date|January 20, 2023||
|Pick-up Time|13:00||
|Return Date|January 21, 2023||
|Return Time|13:00||
|Rental Duration|1 Day||
|Total|$100||
|Renting Purpose|Leisure||

### 11. Insurance
|Field Name|Example of Data|Comments|
|--|--|--|
|Policy Number(PK)|593054043||
|Rental Order Number(FK)|2394324||
|VIN(FK)|10001||
|Insurance Type|Collision||
|Policy Start Date|January 17, 2023||
|Policy End date|January 20, 2023||
|Insured Amount|$10,000||
|Insurance Provider|AllState|Dropdown menu for Companies|
|Premium|$170.00 CAD||
|Deductible|$1,000||
|Coverage Limit|$5,000||
|Previous Claim|None|Dropdown menu for 'Yes' or 'None'|


### 12. Maintainance
|Field Name|Example of Data|Comments|
|--|--|--|
|Maintainance Order Number(PK)|2342342||
|VIN(FK)|10001||
|Rental Order Number(FK)|12414124|can be NULL|
|Repair Date|Febuary 2, 2023||
|Return Date|Febuary 22, 2023||
|Repair Type|Engine Repair||
|Repair Description|Engine swap with Imported engine for longevity||
|Repair Cost|$2,234.33||
|Warranty|Lifetime||
|Repair Facility ID|349534345||
|Technician Name|Carl Smith||
|Technician ID|B4543045||
