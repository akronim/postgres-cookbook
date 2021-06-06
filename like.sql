SELECT * FROM person
WHERE email LIKE '%.com';

SELECT * FROM person
WHERE email LIKE '%@google.%';

SELECT * FROM person
WHERE email LIKE '________@%';

SELECT * FROM person
--WHERE country_of_birth LIKE 'C%';
WHERE country_of_birth ILIKE 'c%';