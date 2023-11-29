SELECT name FROM bidders

WHERE EXISTS (SELECT 1 FROM bids WHERE bids.bidder_id = bidders.id);