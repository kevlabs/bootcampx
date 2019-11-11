SELECT sum(a.duration) AS total_duration
FROM cohorts AS c
JOIN students AS s
ON c.id = s.cohort_id
JOIN assignment_submissions AS a
ON s.id = a.student_id
WHERE c.name = 'FEB12';