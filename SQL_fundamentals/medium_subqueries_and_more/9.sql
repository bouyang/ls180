EXPLAIN ANALYZE
SELECT MAX(bid_counts.count) FROM
  (SELECT COUNT(bidder_id) FROM bids GROUP BY bidder_id) AS bid_counts;

EXPLAIN ANALYZE
SELECT COUNT(bidder_id) AS max_bid FROM bids
  GROUP BY bidder_id
  ORDER BY max_bid DESC
  LIMIT 1;

-- The statement with the subqueries is more efficient (0.176 + 0.118 ms vs 0.303 + 0.167 ms)
-- The statement with the subqueries allows the first SELECT statement to be performed on a smaller set which was
-- determined by the second SELECT statement