SELECT s.name, avg(a_s.duration) AS average_assignment_duration, avg(a.duration) AS average_estimated_duration
FROM students AS s
JOIN assignment_submissions AS a_s
ON s.id = a_s.student_id
JOIN assignments AS a
ON a_s.assignment_id = a.id
WHERE s.end_date IS NULL
GROUP BY s.name
HAVING avg(a_s.duration) < avg(a.duration)
ORDER BY average_assignment_duration;
