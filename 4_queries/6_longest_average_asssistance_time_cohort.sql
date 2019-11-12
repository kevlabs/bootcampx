SELECT c.name AS name, avg(a_r.completed_at - a_r.started_at) AS average_assistance_time
FROM assistance_requests AS a_r
JOIN students AS s ON a_r.student_id = s.id
JOIN cohorts AS c ON c.id = s.cohort_id
GROUP BY c.name
ORDER BY average_assistance_time DESC LIMIT 1;