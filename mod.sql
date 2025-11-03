SELECT driver_number
FROM Drivers
WHERE MOD(driver_number, 2) <> 0;