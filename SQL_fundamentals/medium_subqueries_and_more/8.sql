EXPLAIN
SELECT name FROM bidders
WHERE EXISTS (SELECT 1 FROM bids WHERE bids.bidder_id = bidders.id);

EXPLAIN ANALYZE
SELECT name FROM bidders
WHERE EXISTS (SELECT 1 FROM bids WHERE bids.bidder_id = bidders.id);

-- In the EXPLAIN statement, we see that the cost of the query is for the Join statement 33.38..66.47

-- In the ANALYZE statement, the query is executed and we receive the amount of time it takes for the query to be executed