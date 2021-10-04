const mongoose = require('mongoose');

const notesSchema = new mongoose.Schema({
  note: {
    type: String,
    required: [true, 'A note is required'],
  },
  creationTime: {
    type: Date,
    default: Date.now(),
  },
  customUrl: {
    type: String,
    unique: [true, 'Your url should be unique'],
  },
  willexpireAt: {
    type: Date,
    default: new Date(Date.now() + 2 * 24 * 60 * 60 * 1000),
    expires: 172800,
  },
  pasteTitle: {
    type: String,
    required: [true, 'A paste must have a title'],
  },
  author: {
    type: mongoose.Schema.ObjectId,
    ref: 'User',
    required: [true, 'A booking must have a user'],
  },
  noteType: {
    type: String,
    enum: ['public', 'private'],
    required: [true, 'A note should have its type'],
  },
});

const Note = mongoose.model('Note', notesSchema);

module.exports = Note;
