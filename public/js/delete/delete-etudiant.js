const deleteEtudiant = document.getElementById('supprimer-etudiant')
deleteEtudiant.addEventListener('click', () => {
    const id = document.getElementById('numero').value;
    const baseURL = `http://localhost:3000/api/etudiant/${id}`;
    axios.delete(baseURL).then(response => {
        if (response.data.success) {
            return window.location.href = 'http://localhost:3000/html-files/etudiants/delete-etudiant.html'
        }
        window.location.href = 'http://localhost:3000/html-files/failled_to_proccess_your_request.html'

    }).catch(_ => {
        window.location.href = 'http://localhost:3000/html-files/failled_to_proccess_your_request.html'

    });
});