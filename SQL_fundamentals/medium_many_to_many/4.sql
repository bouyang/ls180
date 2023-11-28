SELECT services.description FROM customers_services
RIGHT OUTER JOIN services ON customers_services.services_id = services.id
WHERE customers_services.services_id IS NULL;