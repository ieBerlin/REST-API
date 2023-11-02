const express = require('express');
const app = express();
const enseignantsRoute = require('./routes/enseignants');
const port = 3000;

//  middlewares:
app.use(express.static('./public'));
app.use(express.json());

//routes
app.use('/api/enseignant', enseignantsRoute)

// start app
app.listen(port, () => {
    console.log(`Nodejs is listening on port : ${port}`);
})