DROP TABLE IF EXISTS customer;

CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY, 
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50),
	gender CHAR(7),
	age INT,
	address VARCHAR(100),
	city VARCHAR(100),
	state CHAR(2),
	zip_code CHAR(5)
);

SELECT * FROM customer;

SELECT * FROM customer WHERE gender='Female';
SELECT * FROM customer WHERE gender='Male' AND state='NJ';
SELECT * FROM customer WHERE gender='Male' AND (state='NJ' OR state='OH');
SELECT * FROM customer WHERE gender='Female' AND state='MD' AND age < 30;
