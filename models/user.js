const mongoose = require('mongoose');
const bcrypt = require('bcrypt');

const userSchema = new mongoose.Schema({
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
    select: false,
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

userSchema.pre('save', async function (next) {
  if (!this.isModified('password')) return;
  this.password = await bcrypt.hash(this.password, 10);
  this.confirmPassword = undefined;
  next();
});

userSchema.pre(/^find/, function (next) {
  this.find({ active: true });
  next();
});

userSchema.methods.checkPassword = async function (
  candidatePassword,
  userPassword
) {
  return await bcrypt.compare(candidatePassword, userPassword);
};

const User = mongoose.model('User', userSchema);

module.exports = User;
