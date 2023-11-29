CREATE DATABASE auction;

CREATE TABLE bidders (
  id serial PRIMARY KEY,
  name text NOT NULL
);

CREATE TABLE items (
  id serial PRIMARY KEY,
  name text NOT NULL,
  initial_price DECIMAL(6,2) NOT NULL CHECK(initial_price BETWEEN 0.01 AND 1000.00),
  sales_price DECIMAL(6,2) CHECK(sales_price BETWEEN 0.01 AND 1000.00)
);

CREATE TABLE bids (
  id serial PRIMARY KEY,
  bidder_id integer NOT NULL REFERENCES bidders(id) ON DELETE CASCADE,
  item_id integer NOT NULL REFERENCES items(id) ON DELETE CASCADE,
  amount DECIMAL(6,2) NOT NULL CHECK(amount BETWEEN 0.01 AND 1000.00)
);

CREATE INDEX ON bids (bidder_id, item_id);

\copy bidders FROM '/Users/ouyang/Documents/Launch School/LS180/SQL_fundamentals/medium_subqueries_and_more/bidders.csv' WITH HEADER CSV

\copy items FROM '/Users/ouyang/Documents/Launch School/LS180/SQL_fundamentals/medium_subqueries_and_more/items.csv' WITH HEADER CSV

\copy bids FROM '/Users/ouyang/Documents/Launch School/LS180/SQL_fundamentals/medium_subqueries_and_more/bids.csv' WITH HEADER CSV