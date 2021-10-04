const express = require('express');
const notesController = require('../controllers/notesController');
const authController = require('../controllers/authController');

const router = express.Router();

router
  .route('/')
  .post(authController.protect, notesController.createNote)
  .get(authController.protect, notesController.getAllNotes);

router.route('/:id').get(authController.protect, notesController.getOneNote);

module.exports = router;
