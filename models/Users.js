const moongoose = require('mongoose');

const userSchema = new moongoose.Schema({
  username: {
    type: String,
    required: [true, 'A username is required'],
  },
  email: {
    type: String,
    required: [true, 'A email is required'],
    unique: [true, 'This email address already exists in our database .'],
    lowercase: true,
  },
  password: {
    type: String,
    required: [true, 'A password is required'],
    minlength: 8,
  },
  confirmPassword: {
    type: String,
    required: [true, 'Confirm the password'],
    validate: {
      validator: function (pass) {
        return this.password === pass;
      },
      message: 'Password do not match .Please enter again',
    },
  },
  passwordCreatedAt: {
    type: Date,
    default: Date.now(),
  },
  active: {
    type: Boolean,
    default: true,
    select: false,
  },
});

const User = mongoose.model('User', userSchema);

module.exports = User;
