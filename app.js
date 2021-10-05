const express = require('express');
const cookieParser = require('cookie-parser');
const morgan = require('morgan');
const cors = require('cors');

const userRouter = require('./routes/userRoutes');
const noteRouter = require('./routes/noteRoute');

const app = express();

app.use(express.json());
app.enable('trust-proxy');

app.use(cookieParser());

app.use(
  cors({
    origin: true,
    credentials: true,
  })
);

app.use(morgan('dev'));

app.use((req, res, next) => {
  console.log(req.cookie);
  next();
});

app.use('/api/users', userRouter);
app.use('/api/notes', noteRouter);

app.use('*', (req, res, next) => {
  res.status(401).json({ status: 'failed', error: 'Invalid request' });
});

module.exports = app;
