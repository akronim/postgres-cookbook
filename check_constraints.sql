ALTER TABLE person
ADD CONSTRAINT gender_constraint 
    CHECK (gender <> 'hello');
