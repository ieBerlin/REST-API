const updateButton = document.getElementById('modifier-module');
updateButton.addEventListener('click', (event) => {
    event.preventDefault();
    const id = document.getElementById('numero').value;
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
    const baseURL = `http://localhost:3000/api/module/${id}`;
    axios.patch(baseURL, data).then(response => {
        if (response.data.success) {
            return window.location.href = 'http://localhost:3000/html-files/modules/module-modifier.html'
        }
        window.location.href = 'http://localhost:3000/html-files/failled_to_proccess_your_request.html'

    }).catch(_ => {
        window.location.href = 'http://localhost:3000/html-files/failled_to_proccess_your_request.html'

    });
});