const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT s.id, s.name, c.name AS cohort
FROM students s
JOIN cohorts c ON s.cohort_id = c.id
WHERE c.name LIKE '%${process.argv[2] || ''}%'
LIMIT ${Number(process.argv[3]) || 5};
`)
  .then(res => {
    console.log(res.rows);
  })
  .catch(err => console.error('query error', err.stack));