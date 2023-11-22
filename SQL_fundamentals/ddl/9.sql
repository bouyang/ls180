CREATE TABLE moons (
  id serial PRIMARY KEY,
  designation int NOT NULL,
  semi_major_axis numeric CHECK (semi_major_axis > 0.0)
  mass numeric CHECK (mass > 0.0)
);