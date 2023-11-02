const express = require('express');
const router = express.Router();

const {
    rechercheEtudiant,
    supprimerEtudiant,
    modifierEtudiant,
    enregistrerEtudiant,
    afficherLesEtudiants,
} = require('../controllers/etudiants');
router.route(`/`).get(afficherLesEtudiants).post(enregistrerEtudiant);
router.route('/:id').get(rechercheEtudiant).delete(supprimerEtudiant).patch(modifierEtudiant);

module.exports = router;