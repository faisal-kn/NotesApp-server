const express = require('express');
const notesController = require('../controllers/notesController');

const router = express.Router();

router.route('/').post(notesController.createNote).get(notesController.getAllNotes);

router.route('/:id').get(notesController.getOneNote);

module.exports = router;
