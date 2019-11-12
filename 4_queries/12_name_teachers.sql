SELECT DISTINCT t.name, c.name
FROM assistance_requests AS a_r
JOIN teachers AS t ON a_r.teacher_id = t.id
JOIN students AS s ON a_r.student_id = s.id
JOIN cohorts AS c ON c.id = s.cohort_id
WHERE c.name = 'JUL02'
ORDER BY t.name;