const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT DISTINCT c.name as cohort, t.name as teacher
FROM assistance_requests AS a_r
JOIN teachers AS t ON a_r.teacher_id = t.id
JOIN students AS s ON a_r.student_id = s.id
JOIN cohorts AS c ON c.id = s.cohort_id
WHERE c.name = $1
ORDER BY t.name;
`, [process.argv[2] || 'JUL02'])
  .then(res => {
    console.log(res.rows);
  })
  .catch(err => console.error('query error', err.stack));