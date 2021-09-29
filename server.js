const dotenv = require('dotenv');
const mongoose = require('mongoose');
const morgan = require('morgan');

dotenv.config({ path: './config.env' });

const app = require('./app');

morgan('tiny');

const DB = process.env.DATABASE.replace(
  '<password>',
  process.env.DATABASE_PASSWORD
);

mongoose
  .connect(DB, {
    useNewUrlParser: true,
    useUnifiedTopology: true,
  })
  .then((_) => {
    console.log('database successfully connected');
  });

const port = process.env.PORT || 3000;

const server = app.listen(port, '127.0.0.1', () => {
  console.log(`listening to request on port ${port}`);
});
