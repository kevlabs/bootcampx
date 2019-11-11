SELECT c.name AS cohort_name, count(*) AS total_submissions
FROM assignment_submissions AS a_s
JOIN students AS s
ON a_s.student_id = s.id
JOIN cohorts AS c
ON c.id = s.cohort_id
GROUP BY c.name
ORDER BY total_submissions DESC;