const express = require('express');
const notesController = require('../controllers/notesController');
const authController = require('../controllers/authController');

const router = express.Router();

router
  .route('/')
  .post(authController.protect, notesController.createNote)
  .get(authController.protect, notesController.getAllUserNotes);

router
  .route('/publicNotes')
  .get(authController.protect, notesController.getAllPublicNotes);

router
  .route('/:id')
  .get(authController.protect, notesController.getOneNote)
  .delete(authController.protect, notesController.deleteNotes);

module.exports = router;
