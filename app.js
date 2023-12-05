const express = require('express');
const app = express();
const etudiantsRoute = require('./routes/etudiants');
const enseignantsRoute = require('./routes/enseignants');
const moduleRoute = require('./routes/modules');
const bulletinRoute = require('./routes/bulletins');
const userRoute = require('./routes/users.js');
const port = 3000

//  middlewares:
app.use(express.static('./public'));
app.use(express.json());

//routes
app.use('/api/enseignant', enseignantsRoute)
app.use('/api/etudiant', etudiantsRoute)
app.use('/api/module', moduleRoute)
app.use('/api/bulletin', bulletinRoute)
app.use('/api/user', userRoute)

// start app
app.listen(port, () => {
    console.log(`Nodejs is listening on port : ${port}`);
})