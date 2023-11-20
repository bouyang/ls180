ALTER TABLE birds
ADD CONSTRAINT check_age CHECK (age > 0);

INSERT INTO birds
(age) VALUES
(-1);