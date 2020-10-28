DROP TABLE IF EXISTS payments;
DROP TABLE IF EXISTS banks;

-- (1) (2)

CREATE TABLE payments (
	payment_id SERIAL PRIMARY KEY,
	bank_number BIGINT,
	bank_routing_number BIGINT,
	customer_id INT
);

CREATE TABLE banks (
	bank_id SERIAL PRIMARY KEY,
	bank_name VARCHAR(60),
	bank_routing_number BIGINT
);

SELECT * FROM payments;
SELECT * FROM banks;

-- (3)

SELECT * FROM payments
INNER JOIN banks ON payments.bank_routing_number = banks.bank_routing_number;


-- SELECT payments.payment_id,
-- 	payments.bank_number,
-- 	payments.bank_routing_number,
-- 	payments.customer_id,
-- 	banks.bank_id

-- #SELECT * FROM payments WHERE payments.bank_routing_number = banks.bank_routing_number;
