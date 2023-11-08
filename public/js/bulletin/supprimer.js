const supprimerButton = document.getElementById('supprimer-bulletin');

supprimerButton.addEventListener('click', (e) => {
    const id = document.getElementById('numero').value;
    const note = document.getElementById('note');
    const module = document.getElementById('module').value
    const data = {
        module: module,
    };
    e.preventDefault();
    if (note.value) {
        const baseURL = `http://localhost:3000/api/bulletin/${id}`;
        axios.delete(baseURL, {
            data: data,
        }).then(response => {
            if (response.data.success) {
                return window.location.href = 'http://localhost:3000/html-files/bulletins/delete-bulletin.html'
            }
            window.location.href = 'http://localhost:3000/html-files/failled_to_proccess_your_request.html'
        }).catch(_ => {
            window.location.href = 'http://localhost:3000/html-files/failled_to_proccess_your_request.html'
        });
    }
});