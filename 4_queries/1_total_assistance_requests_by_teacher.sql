SELECT t.name, count(*) FROM assistance_requests AS a_r
JOIN teachers AS t ON a_r.teacher_id = t.id
WHERE t.name = 'Waylon Boehm'
GROUP BY t.name;