SELECT a.id, a.name, a.day, a.chapter, count(*) AS total_requests
FROM assistance_requests AS a_r
JOIN assignments AS a ON a_r.assignment_id = a.id
GROUP BY a.id, a.name, a.day, a.chapter
ORDER BY total_requests DESC;