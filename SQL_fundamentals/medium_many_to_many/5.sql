SELECT customers.name, string_agg(services.description, ', ') AS services FROM customers
LEFT OUTER JOIN customers_services ON customers_id = customers.id
LEFT OUTER JOIN services ON services.id = customers_services.services_id
GROUP BY customers.id;