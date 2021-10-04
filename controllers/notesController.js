const Note = require('../models/notes');
const User = require('../models/user');

exports.createNote = async (req, res, next) => {
  try {
    const note = await Note.create({ ...req.body, author: req.user.id });
    res.status(200).json({ status: 'success', message: note });
  } catch (err) {
    res.status(400).json({ status: 'failed', message: err });
  }
};

exports.getAllNotes = async (req, res, next) => {
  try {
    const notes = await Note.find().populate('author');
    res.status(200).json({ status: 'success', message: notes });
  } catch (err) {
    res.status(401).json({ status: 'failed', message: err });
  }
};

exports.getOneNote = async (req, res, next) => {
  try {
    const notes = await Note.findOne({ customUrl: req.params.id });
    res.status(200).json({ status: 'success', data: notes });
  } catch (err) {
    res.status(400).json({ status: 'failed', message: err });
  }
};
