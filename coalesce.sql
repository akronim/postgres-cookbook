SELECT COALESCE(null, 1) AS number;

SELECT COALESCE(null, null, null, 1, 10) AS number;

SELECT COALESCE(email, '..... Email not provided') FROM person;