const express = require('express');
const app = express();
const enseignantsRoute = require('./routes/enseignants');
const etudiantsRoute = require('./routes/etudiants');
const moduleRoute = require('./routes/modules');

const port = 3000;

//  middlewares:
app.use(express.static('./public'));
app.use(express.json());

//routes
app.use('/api/enseignant', enseignantsRoute)
app.use('/api/etudiant', etudiantsRoute)
app.use('/api/module', moduleRoute)


// start app
app.listen(port, () => {
    console.log(`Nodejs is listening on port : ${port}`);
})