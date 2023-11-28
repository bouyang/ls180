SELECT customers.* FROM customers
LEFT OUTER JOIN customers_services ON customers.id = customers_services.customers_id
WHERE services_id IS NULL;

SELECT customers.*, services.* FROM customers
LEFT OUTER JOIN customers_services ON customers.id = customers_services.customers_id
FULL OUTER JOIN services ON customers_services.services_id = services.id
WHERE services_id IS NULL;