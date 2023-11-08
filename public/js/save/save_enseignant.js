const saveButton = document.getElementById('enregistrer-enseignant');
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
    const date_de_naissance = document.getElementById("date-de-naissance").value
    const lieu_de_naissance = document.getElementById("lieu-de-naissance").value
    const pays = document.getElementById("pays").value
    const grade = document.getElementById("grade").value
    const specialite = document.getElementById("specialite").value
    const imageOriginPath = document.getElementById('image-input').value;
    const start = imageOriginPath.lastIndexOf('\\') + 1
    const newString = imageOriginPath.slice(start, imageOriginPath.length)
    const image = newString;

    const data = {
        civilite: civilite,
        nom_prenom: nom_prenom,
        adresse: adresse,
        date_naissance: date_de_naissance,
        lieu_naissance: lieu_de_naissance,
        pays: pays,
        grade: grade,
        specialite: specialite,
        image: image,
    }
    const baseURL = 'http://localhost:3000/api/enseignant/';
    axios.post(baseURL, data).then(response => {
        if (response.data.success) {
            return window.location.href = 'http://localhost:3000/html-files/enseignants/save-enseignant.html'
        }
        console.log(response);
        window.location.href = 'http://localhost:3000/html-files/failled_to_proccess_your_request.html'
    }).catch(err => {
        console.log(err);
        window.location.href = 'http://localhost:3000/html-files/failled_to_proccess_your_request.html'

    });
});