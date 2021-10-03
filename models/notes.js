const mongoose = require('mongoose');
const { nanoid } = require('nanoid');

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
    default: nanoid(),
  },
  willexpireAt: {
    type: Date,
    default: new Date(Date.now() + 2 * 24 * 60 * 60 * 1000),
    expires: 172800,
  },
  pasteTitle: {
    type: String,
    required:[true,'A paste must have a title']
  },
});

const Note = mongoose.model('Note', notesSchema);

module.exports = Note;
