const Note = require('../models/notes');

exports.createNote = async (req, res, next) => {
  const note = await Note.create(req.body);
  res.status(200).json({ status: 'success', message: note });
};
