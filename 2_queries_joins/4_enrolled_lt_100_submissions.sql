SELECT s.name AS student_name, count(*) AS total_submissions
FROM assignment_submissions AS a
JOIN students AS s
ON s.id = a.student_id
WHERE s.end_date IS NULL
GROUP BY s.name
HAVING count(*) < 100
ORDER BY total_submissions ASC;