const express = require('express');
const router = express.Router();

const {
    createUser,
    updateUser,
    deleteUser,
    rechercheUser,
    getAllUsers,
} = require('../controllers/users.js');
router.route('/').get(getAllUsers).post(createUser);
router.route('/:id').patch(updateUser).delete(deleteUser);
router.route('/:email/:password').get(rechercheUser);

module.exports = router;