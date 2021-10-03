const Note = require('../models/notes');

exports.createNote = async (req, res, next) => {
  try {
    const note = await Note.create(req.body);
    res.status(200).json({ status: 'success', message: note });
  } catch (err) {
    res.send(401).json({ status: 'failed', message: err });
  }
};

exports.getAllNotes = async (req, res, next) => {
  try {
    const notes = await Note.find();
    res.status(200).json({ status: 'success', message: notes });
  } catch (err) {
    res.send(401).json({ status: 'failed', message: err });
  }
};

exports.getOneNote = async (req, res, next) => {
  try {
    const notes = await Note.findOne({ customUrl: req.params.id });
    res.status(200).json({ status: 'success', data: notes });
  } catch (err) {
    res.send(400).json({ status: 'failed', message: err });
  }
};
