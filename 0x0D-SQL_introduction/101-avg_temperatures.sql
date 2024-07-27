SELECT city, AVG(value) AS avg_temp
FROM download
WHERE unit = 'f'
GROUP BY city
ORDER BY avg_temp DESC;
