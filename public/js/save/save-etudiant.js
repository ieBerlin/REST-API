const saveButton = document.getElementById('enregistrer-etudiant');
saveButton.addEventListener('click', (event) => {
    event.preventDefault();

    const radioButtons = document.getElementsByName("civilite");
    let civilite = undefined;
    for (let i = 0; i < radioButtons.length; i++) {
        if (radioButtons[i].checked) {
            civilite = radioButtons[i].value;
            break;
        }
    }
    const nom_prenom = document.getElementById("nom-prenom").value
    const adresse = document.getElementById("adresse").value
    const no_postal = document.getElementById("no-postal").value
    const localite = document.getElementById("localite").value
    let platformes = 'empty';
    const platformeArray = [];
    let postObject = document.getElementsByName('platformes[]');
    for (var i = 0; i < postObject.length; i++) {
        if (postObject[i].checked) {
            platformeArray.push(postObject[i].value)
        }
    }
    platformes = platformeArray.join(', ')
    let applications = 'empty';
    const applicationArray = [];
    postObject = document.getElementById('applications');
    for (var option = 0; option < postObject.options.length; option++) {
        if (postObject.options[option].selected) {
            applicationArray.push(postObject.options[option].value)
        }
    }
    applications = applicationArray.join(', ')
    const pays = document.getElementById("pays").value
    const filiere = document.getElementById("filiere").value
    const imageOriginPath = document.getElementById('image-input').value;
    const start = imageOriginPath.lastIndexOf('\\') + 1
    const newString = imageOriginPath.slice(start, imageOriginPath.length)
    const image = newString;
    console.log(image);
    const data = {
        civilite: civilite,
        nom_prenom: nom_prenom,
        adresse: adresse,
        no_postal: no_postal,
        localite: localite,
        pays: pays,
        platformes: platformes,
        applications: applications,
        filiere: filiere,
        image: image,
    }
    const baseURL = 'http://localhost:3000/api/etudiant/';
    axios.post(baseURL, data).then(response => {
        if (response.data.success) {
            return window.location.href = 'http://localhost:3000/html-files/etudiants/save-etudiant.html'
        }
        window.location.href = 'http://localhost:3000/html-files/failled_to_proccess_your_request.html'

    }).catch(_ => {
        window.location.href = 'http://localhost:3000/html-files/failled_to_proccess_your_request.html'

    });
});