SELECT SUM(services.price) FROM services
INNER JOIN customers_services ON services_id = services.id
WHERE services.price > 100;

SELECT SUM(services.price) FROM services
CROSS JOIN customers
WHERE services.price > 100;