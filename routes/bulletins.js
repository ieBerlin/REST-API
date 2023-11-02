const express = require('express');
const router = express.Router();

const {
    rechercheBulletin,
    supprimerBulletin,
    modifierBulletin,
    enregistrerBulletin,
    afficherLesBulletins,
} = require('../controllers/bulletins');
router.route(`/`).get(afficherLesBulletins).post(enregistrerBulletin);
router.route('/:id').get(rechercheBulletin).delete(supprimerBulletin).patch(modifierBulletin);

module.exports = router;