SELECT devices.name, count(parts.part_number)
FROM devices LEFT JOIN parts
ON devices.id = parts.device_id
GROUP BY devices.name;