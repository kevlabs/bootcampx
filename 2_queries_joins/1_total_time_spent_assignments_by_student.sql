SELECT sum(a.duration) as total_duration
FROM assignment_submissions AS a
JOIN students AS s
ON s.id = a.student_id
WHERE s.name = 'Ibrahim Schimmel';