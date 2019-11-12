SELECT t.name AS teacher, s.name AS student, a.name AS assignment, (a_r.completed_at - a_r.started_at) AS duration
FROM assistance_requests AS a_r
JOIN teachers AS t ON a_r.teacher_id = t.id
JOIN students AS s ON a_r.student_id = s.id
JOIN assignments AS a ON a_r.assignment_id = a.id
ORDER BY duration;