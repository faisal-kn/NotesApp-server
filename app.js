const express = require('express');
const cookieParser = require('cookie-parser');
const userRouter = require('./routes/userRoutes');

const app = express();

app.use(express.json());

app.use('/api/users', userRouter);

app.use('*', (req, res, next) => {
    console.log(req);
  res.status(401).json({ status: 'failed', error: 'Invalid request' });
});

module.exports = app;
