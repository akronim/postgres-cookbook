SELECT email, COUNT(*) 
FROM person
GROUP BY email
HAVING COUNT(*) > 1;

ALTER TABLE person
ADD CONSTRAINT unique_email_address UNIQUE (email);

ALTER TABLE person
DROP CONSTRAINT unique_email_address;

