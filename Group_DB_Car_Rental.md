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
|Employee ID|1001231936||
|Staff Name|Jim Kirk||
|Position|Salesperson||
|Email|j.kirk@rentacar.ca||
|Department|Sales||
|Contact Number|+1 6043462944||
|Hired Date|May 2, 2020||

### 6. Car
|Field Name|Example of Data|Comments|
|--|--|--|

### 7. Rental Rate
|Field Name|Example of Data|Comments|
|--|--|--|

### 8. Discount
|Field Name|Example of Data|Comments|
|--|--|--|

### 9. Payment
|Field Name|Example of Data|Comments|
|--|--|--|

### 10. Order       
|Field Name|Example of Data|Comments|
|--|--|--|
|Rental Order Number(PK)|2394324||
|Pick-Up Branch ID(FK)|2342342|
|Return Branch ID(FK)|2342342||
|Employee ID(FK)|1001231936||
|Pick-up Date|January 20, 2023||
|Pick-up Time|13:00||
|Return Date|January 21, 2023||
|Return Time|13:00||
|Rental Duration|1 Day||
|Rental Rate|$80 per day||
|Payment Method|Visa Credit||
|Renting Purpose|Leisure||
|Customer_ID|124134543||
|Additional Service|Child Service||

### 11. Insurance
|Field Name|Example of Data|Comments|
|--|--|--|
|Insurance Type|Collision||
|Policy Number|593054043||
|Policy Start Date|January 17, 2023||
|Policy End date|January 20, 2023||
|Insured Amount|$10,000||
|Insurance Provider|AllState|Dropdown menu for Companies|
|Premium|$170.00 CAD||
|Deductible|$1,000||
|Coverage Limit|$5,000||
|Previous Claim|None|Dropdown menu for 'Yes' or 'None'|
|Rental Order Number|2394324||

### 12. Repair
|Field Name|Example of Data|Comments|
|--|--|--|
|Repair Order Number|2342342||
|License Plate Number|B46 JP2||
|Car Make/Model|Porsche 918||
|Repair Date|Febuary 2, 2023||
|Return Date|Febuary 22, 2023||
|Repair Type|Engine Repair||
|Repair Description|Engine swap with Imported engine for longevity||
|Repair Cost|$2,234.33||
|Warranty|Lifetime||
|Repair Facility ID|349534345||
|Rental Order Number|12414124||
|Technician Name|Carl Smith||
|Technician ID|B4543045||







### Monospaced

    SELECT *
        FROM flight
            WHERE arrival_airport = 'YVR';

When I am connecting to the database I use the following command `mysql -u root -p airport_system`.

You can learn more about markdown [here](http://markdowntutorial.com)