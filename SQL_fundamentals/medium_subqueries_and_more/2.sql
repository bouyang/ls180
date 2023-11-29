SELECT name AS "Bids on Items" FROM items
WHERE items.id IN
(SELECT DISTINCT item_id FROM bids);