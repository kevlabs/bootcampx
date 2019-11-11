SELECT a.day, count(*) AS total_assignments 
FROM assignments AS a
--JOIN assignment_submissions AS a_s
--ON a.id = a_s.assignment_id
GROUP BY a.day
ORDER BY  a.day;