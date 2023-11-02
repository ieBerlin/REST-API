const express = require('express');
const router = express.Router();

const {
    rechercheModule,
    supprimerModule,
    modifierModule,
    enregistrerModule,
    afficherLesModules,
} = require('../controllers/modules');
router.route(`/`).get(afficherLesModules).post(enregistrerModule);
router.route('/:id').get(rechercheModule).delete(supprimerModule).patch(modifierModule);

module.exports = router;