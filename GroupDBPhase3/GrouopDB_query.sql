-- Q1: 
-- Show all orders that have a promotion 

SELECT order_no, promotion_code
    FROM `order`
        WHERE promotion_code IS NOT NULL;

-- Q2:
-- Retrieve the names and contact details of all customers who have a Platinum membership.

SELECT c.first_name, c.last_name, c.contact_no, c.email, m.membership_type
    FROM customer c
        JOIN membership m 
            ON c.customer_id = m.customer_id
                WHERE m.membership_type = 'Platinum';

-- Q3:
-- Retrieve the customer’s first name that have completed and provided feedback

SELECT c.first_name, f.feedback_no
    FROM customer c
        JOIN feedback f 
            ON c.customer_id = f.customer_id;

-- Q4: 
-- Retrieve the details of all staff members who are working as “full-time” staff, including their name, position, and hire date.

SELECT first_name, last_name, position, hire_date, status
    FROM staff
        WHERE status = 'Full-time';

-- Q5: 
-- Retrieve customer’s first name and last name, and insurance policy number who have made purchase of an insurance 

SELECT c.first_name, c.last_name, i.insurance_policy_no
    FROM customer c
        JOIN insurance i 
            ON c.customer_id = i.customer_id;

-- Q6: 
-- Show all customer ID that have rented their car for the purpose of Leisure

SELECT DISTINCT customer_id, renting_purpose
    FROM `order` 
        WHERE renting_purpose = 'Leisure';

-- Q7: 
-- Show the most expensive car type and price for daily rental

SELECT rental_rate_type , daily_rate
    FROM rental_rate
        WHERE daily_rate = (SELECT MAX(daily_rate) FROM rental_rate);

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
