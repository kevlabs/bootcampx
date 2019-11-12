SELECT avg(total_duration) AS average_total_duration
FROM (SELECT c.name AS name, sum(a_r.completed_at - a_r.started_at) AS total_duration
FROM assistance_requests AS a_r
JOIN students AS s ON a_r.student_id = s.id
JOIN cohorts AS c ON c.id = s.cohort_id
GROUP BY c.name
ORDER BY total_duration ASC) AS total_table;