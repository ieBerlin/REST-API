const saveButton = document.getElementById('enregistrer-bulletin');
saveButton.addEventListener('click', (event) => {
    event.preventDefault();
    const id = document.getElementById('numero').value;
    const radioButtons = document.getElementsByName("civilite");
    let civilite = undefined;
    for (let i = 0; i < radioButtons.length; i++) {
        if (radioButtons[i].checked) {
            civilite = radioButtons[i].value;
            break;
        }
    }
    const filiere = document.getElementById("filiere").value
    const designation_module = document.getElementById("module").value
    const coefficient = document.getElementById("coefficient").value
    const code_module = document.getElementById("code-module").value
    const note = document.getElementById("note").value

    const data = {
        num_etudiant: id,
        filiere: filiere,
        nom_module: designation_module,
        coefficient: coefficient,
        code_module: code_module,
        note: note,
    }
    const baseURL = 'http://localhost:3000/api/bulletin/';
    axios.post(baseURL, data).then(response => {
        if (response.data.success) {
            return window.location.href = 'http://localhost:3000/html-files/bulletins/save-bulletin.html'
        }
        console.log(response);
        // window.location.href = 'http://localhost:3000/html-files/failled_to_proccess_your_request.html'

    }).catch(response => {
        console.log(response);
        // window.location.href = 'http://localhost:3000/html-files/failled_to_proccess_your_request.html'

    });
});