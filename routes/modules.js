const express = require('express');
const router = express.Router();

const {
    afficherLesModulesSelonLaFiliere,
    rechercheModuleName,
    rechercheModule,
    supprimerModule,
    modifierModule,
    enregistrerModule,
    afficherLesModules,
} = require('../controllers/modules');
router.route(`/:filiere`).get(afficherLesModulesSelonLaFiliere);
router.route(`/`).get(afficherLesModules).post(enregistrerModule);
router.route('/name/:designation').get(rechercheModuleName);
router.route('/:id').get(rechercheModule).delete(supprimerModule).patch(modifierModule)

module.exports = router;