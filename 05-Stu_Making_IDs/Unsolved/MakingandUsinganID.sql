DROP TABLE IF EXISTS banks;

CREATE TABLE banks (
	bank_id SERIAL PRIMARY KEY,
	bank_name VARCHAR(50),
	bank_routing_number BIGINT
);

INSERT INTO banks
	(bank_name, bank_routing_number)
VALUES
	('Bank of America', 198491827),
	('Wells Fargo', 629873495),
	('JPMorgan Chase', 2340903984),
	('Citigroup', 890123900),
	('TD Bank', 905192010),
	('Capital One', 184619239),
	('Capital One', 184619239);

SELECT * FROM banks;

-- (3)

SELECT bank_id, bank_name, bank_routing_number
FROM banks
WHERE bank_name = 'Capital One';

DELETE FROM banks
WHERE bank_id = 7;

SELECT * FROM banks;

-- (4)

INSERT INTO banks
	(bank_name, bank_routing_number)
VALUES
	('Bank of George Washington', 12345678),
	('George Washington Credit Union', 87654321);

SELECT * FROM banks;

-- (5)
UPDATE banks
SET bank_name = 'PNC Bank'
WHERE bank_name = 'Citigroup';

SELECT * FROM banks;

-- (6)

UPDATE banks
SET bank_routing_number = 1995826182
WHERE bank_name = 'Wells Fargo';

SELECT * FROM banks;

-- Bonus

ALTER TABLE banks
ADD COLUMN mortgage_lending BOOLEAN default TRUE;

--ALTER TABLE banks
--ADD mortgage_lending BOOLEAN;

--ALTER TABLE banks
--ALTER mortgage_lending SET DEFAULT TRUE;

SELECT * FROM banks;

