SELECT state, MAX(value) AS max_temp
FROM download
WHERE unit = 'f'
GROUP BY state
ORDER BY state;
