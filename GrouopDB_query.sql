-- Q1: 
-- Show all orders that have a promotion 

SELECT order_no, promotion_code
    FROM `order`
        WHERE promotion_code IS NOT NULL;

-- Q2:
-- Retrieve the names and contact details of all customers who have a Platinum or Gold membership.

SELECT c.first_name, c.last_name, c.contact_no, c.email, m.membership_type
    FROM customer c
        JOIN membership m 
            ON c.customer_id = m.customer_id
                WHERE m.membership_type IN ('Platinum', 'Gold');

-- Q3:
-- Retrieving all customer's first name and who is a member that had rented a Sedan.  
SELECT c.first_name, m.membership_type, rr.rental_rate_type
    FROM customer c
        JOIN membership m 
            ON c.customer_id = m.customer_id
                JOIN rental_rate rr 
                    ON rr.rental_rate_type = 'Sedans';


-- Q4: 
-- Retrive the sum payment responsible for each staff, sorted by their staff ID

SELECT o.staff_id, SUM(p.amount) 
    FROM `order` o
        JOIN payment p
            ON o.payment_id = p.payment_id
                GROUP BY o.staff_id;


-- Q5: 
-- Retrieve customer’s first name and last name, and insurance policy number who have made purchase of an insurance 

SELECT c.first_name, c.last_name, i.insurance_policy_no
    FROM customer c
        JOIN insurance i 
            ON c.customer_id = i.customer_id;

-- Q6: 
-- Show all customers whoes first name starts with "A" that have rented their car for the purpose of Leisure

SELECT c.first_name, o.renting_purpose
    FROM customer c 
        JOIN `order` o 
            ON c.customer_id = o.customer_id
                WHERE  c.first_name LIKE 'A%'
                AND o.renting_purpose = 'Leisure';

-- Q7: 
-- Show all car types and price for daily rental which greater than $40

SELECT rental_rate_type , daily_rate
    FROM rental_rate
        WHERE daily_rate > 40;

-- Q8: 
-- Retrieve the order with the least payment amount

SELECT o.order_no, p.amount
    FROM `order` o
        JOIN payment p 
            ON o.payment_id = p.payment_id
                WHERE p.amount = (SELECT MIN(amount) FROM payment);

-- Q9: 
-- Show car details which have maintenance in March 2022

SELECT c.*, m.maintenance_date
    FROM car c 
        JOIN maintenance m
	        ON c.car_vin = m.car_vin
                WHERE MONTH(maintenance_date) = 3 
                AND YEAR(maintenance_date) = 2022;

-- Q10: 
-- Show all the staff details work in the branch which located in Burnaby

SELECT s.*, b.city
    FROM staff s
        JOIN branch b
            ON s.branch_no = b.branch_no 
                WHERE city = 'Burnaby';
