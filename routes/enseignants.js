const express = require('express');
const router = express.Router();

const {
    rechercheEnseignant,
    supprimerEnseignant,
    modifierEnseignant,
    enregistrerEnseignant,
    afficherLesEnseignants,
} = require('../controllers/enseignants');
router.route(`/`).get(afficherLesEnseignants).post(enregistrerEnseignant);
router.route('/:id').get(rechercheEnseignant).delete(supprimerEnseignant).patch(modifierEnseignant);

module.exports = router;