SELECT services.description, COUNT(customers_services.services_id) FROM services
INNER JOIN customers_services ON services_id = services.id
INNER JOIN customers ON customers.id = customers_services.customers_id
GROUP BY services.description
HAVING COUNT(customers_services.services_id) >= 3;