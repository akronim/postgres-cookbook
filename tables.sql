-- >>> without constraints
CREATE TABLE person (
    id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(6),
    date_of_birth DATE
);

-- >>> with constraints
CREATE TABLE person (
    id BIGSERIAL NOT NULL PRIMARY KEY, -- autoincrement
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(6) NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(150)
);


-- >>> insert data
INSERT INTO person (
    first_name,
    last_name,
    gender,
    date_of_birth,
    email
) 
VALUES 
('Anne', 'Smith', 'FEMALE', DATE '1988-01-09', NULL),
('Jake', 'Jones', 'MALE', DATE '1990-01-10', 'jake@gmail.com');

