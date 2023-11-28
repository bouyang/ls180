SELECT DISTINCT customers.* FROM customers
INNER JOIN customers_services ON customers.id = customers_services.customers_id;