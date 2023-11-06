const deleteEtudiant = document.getElementById('supprimer-enseignant')
deleteEtudiant.addEventListener('click', () => {
    const id = document.getElementById('numero').value;
    const baseURL = `http://localhost:3000/api/enseignant/${id}`;
    axios.delete(baseURL).then(response => {
        if (response.data.success) {
            return window.location.href = 'http://localhost:3000/html-files/enseignants/delete-enseignant.html'
        }
        window.location.href = 'http://localhost:3000/html-files/failled_to_proccess_your_request.html'

    }).catch(_ => {
        window.location.href = 'http://localhost:3000/html-files/failled_to_proccess_your_request.html'

    });
});