-- SELECT s.name AS student, sum(a_s.duration)::float / count(*) AS average_assignment_duration
SELECT s.name AS student, avg(a_s.duration) AS average_assignment_duration
FROM assignment_submissions AS a_s
JOIN students AS s
ON a_s.student_id = s.id
WHERE s.end_date IS NULL
GROUP BY s.name
ORDER BY average_assignment_duration DESC;