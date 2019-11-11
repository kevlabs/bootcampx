SELECT s.name, s.start_date, c.name, c.start_date
FROM students AS s
JOIN cohorts AS c
ON s.cohort_id = c.id
WHERE s.start_date <> c.start_date
ORDER BY c.name;