const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');

const app = express();
app.use(cors());

const connection = mysql.createConnection({
  host: 'urgentnews-mysql-container',
  user: 'root',
  password: '',
  database: 'newsDB',
});

connection.connect((err) => {
  if (err) {
    console.error('Error connecting to the database:', err);
    return;
  }
  console.log('Connected to the database');
});

app.get('/getUrgentNews', (req, res) => {
  const query = 'SELECT * FROM News ORDER BY created_at DESC LIMIT 10';

  connection.query(query, (error, results) => {
    if (error) {
      console.error('Error executing the query:', error);
      res.status(500).json({ error: 'Internal server error' });
      return;
    }

    res.json(results);
  });
});

app.listen(3000, () => {
  console.log('Backend server is running on port 3000');
});
