const saveButton = document.getElementById('enregistrer-module');
saveButton.addEventListener('click', (event) => {
    event.preventDefault();
    const code_module = document.getElementById("code-module").value
    const designation_module = document.getElementById("designation-module").value
    const coefficient = document.getElementById("coefficient").value
    const volume_horaire = document.getElementById("volume-horaire").value
    const filiere = document.getElementById("filiere").value
    const data = {
        code_module: code_module,
        designation_module: designation_module,
        coefficient: coefficient,
        volume_horaire: volume_horaire,
        filiere: filiere,
    }
    const baseURL = 'http://localhost:3000/api/module/';
    axios.post(baseURL, data).then(response => {
        if (response.data.success) {
            return window.location.href = 'http://localhost:3000/html-files/modules/save-module.html'
        }
        window.location.href = 'http://localhost:3000/html-files/failled_to_proccess_your_request.html'
    }).catch(err => {
        window.location.href = 'http://localhost:3000/html-files/failled_to_proccess_your_request.html'
    });
});