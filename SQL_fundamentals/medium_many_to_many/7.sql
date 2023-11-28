SELECT SUM(services.price) AS gross FROM services
INNER JOIN customers_services ON customers_services.services_id = services.id;