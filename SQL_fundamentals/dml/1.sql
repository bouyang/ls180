CREATE DATABASE workshop;

CREATE TABLE devices (
  id serial PRIMARY KEY,
  name text NOT NULL,
  create_at timestamp DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE parts (
  id serial PRIMARY KEY,
  part_number int UNIQUE NOT NULL,
  device_id int REFERENCES devices (id)
);