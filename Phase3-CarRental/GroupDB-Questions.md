# Group DB - Car Rental
# 10 Queries

## 1 (Jia Xi)
|   |
|--|
|Retrieve the names and contact details of all customers who have a Platinum or Gold membership.|
    SELECT c.first_name, c.last_name, c.contact_no, c.email, m.membership_type
        FROM customer c
            JOIN membership m 
                ON c.customer_id = m.customer_id
                    WHERE m.membership_type IN ('Platinum', 'Gold');

Relative: 
Relative img/Query_1.png

## 2 (Muochu)
|   |
|--|
|Retrieve all customer's first name and who is a member that had rented a Sedan.|
    SELECT c.first_name, m.membership_type, rr.rental_rate_type
        FROM customer c
            JOIN membership m 
                ON c.customer_id = m.customer_id
                    JOIN rental_rate rr 
                        ON rr.rental_rate_type = 'Sedans';

Relative: 
Relative img/Query_2.png

## 3 (Rayna)
|   |
|--|
|Retrive the sum payment in 2022 responsible for each staff, sorted by their staff ID|
    SELECT o.staff_id, SUM(p.amount) AS total_payment
	FROM payment p
		JOIN `order` o ON o.payment_id = p.payment_id
			WHERE YEAR(p.date) = 2022
				GROUP BY o.staff_id
					ORDER BY o.staff_id;


Relative: 
Relative img/Query_3.png

## 4 (Jia Xi)
|   |
|--|
|Show all customers whoes first name starts with "K" that have rented their car for the purpose of Leisure|
    SELECT c.first_name, o.renting_purpose
        FROM customer c 
            JOIN `order` o 
                ON c.customer_id = o.customer_id
                    WHERE  c.first_name LIKE 'K%'
                        AND o.renting_purpose = 'Leisure';

Relative: 
Relative img/Query_4.png

## 5 (Muochu)
|   |
|--|
|Show all car types and price for daily rental which greater than $40|
    SELECT rental_rate_type , daily_rate
        FROM rental_rate
            WHERE daily_rate > 40;

Relative: 
Relative img/Query_5.png

## 6 (Rayna)
|   |
|--|
|Show car details which have maintenance in March 2022|
    SELECT c.*, m.maintenance_date
        FROM car c 
            JOIN maintenance m
	            ON c.car_vin = m.car_vin
                    WHERE MONTH(maintenance_date) = 3 
                        AND YEAR(maintenance_date) = 2022;

Relative: 
Relative img/Query_6.png

## 7 (Jia Xi)
|   |
|--|
|Find all the customers who do not have a membership.|
    SELECT c.first_name, c.last_name
        FROM customer c
            LEFT JOIN membership m 
                ON c.customer_id = m.customer_id
                    WHERE m.customer_id IS NULL;

Relative: 
Relative img/Query_7.png

## 8 (Muochu)
|   |
|--|
|Show all orders that have a promotion|
    SELECT order_no, promotion_code
        FROM `order`
            WHERE promotion_code IS NOT NULL;

Relative: 
Relative img/Query_8.png

## 9 (Rayna)
|   |
|--|
|show the customer id ,first name, last name for the customer who share the same first name|
    SELECT c1.customer_id, c1.first_name, c1.last_name
        FROM customer c1
            JOIN customer c2 
                ON c1.first_name = c2.first_name 
                    AND c1.customer_id <> c2.customer_id;

Relative: 
Relative img/Query_9.png

## 10 (ALL)
|   |
|--|
|Find the total number of terminated staff members for each department|
    WITH terminated_staff AS (
        SELECT department, COUNT(*) AS staff_terminated 
            FROM staff 
                 WHERE status = 'Terminated' 
                    GROUP BY department)
                        SELECT department, staff_terminated 
                            FROM terminated_staff;

Relative: 
Relative img/Query_10.png
