SELECT s.name, count(*) FROM assistance_requests AS a_r
JOIN students AS s ON a_r.student_id = s.id
WHERE s.name = 'Elliot Dickinson'
GROUP BY s.name;