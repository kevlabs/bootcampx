SELECT t.name AS teacher, c.name AS cohort, count(*) AS total_assistances
FROM assistance_requests AS a_r
JOIN teachers AS t ON a_r.teacher_id = t.id
JOIN students AS s ON a_r.student_id = s.id
JOIN cohorts AS c ON c.id = s.cohort_id
WHERE c.name = 'JUL02'
GROUP BY t.name, c.name
ORDER BY t.name;