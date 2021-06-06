SELECT  first_name, 
        last_name, 
        country_of_birth, 
        date_of_birth,
        AGE(NOW(), date_of_birth) as age
FROM person;