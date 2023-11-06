async function recherchebulletin() {
    const id = document.getElementById("numero").value;
    const url = 'http://localhost:3000';
    const bulletinAPI = '/api/etudiant/';
    const baseURL = url.concat(bulletinAPI, id);
    try {
        if (!document.querySelector(".deleted-account-message").hidden) {
            document.querySelector(".deleted-account-message").hidden = true;
        }
        await axios.get(baseURL).then(response => {
            if (response.status === 200) {
                const data = response.data;
                document.querySelector(`.civilite #${data["civilite"]}`).checked = true;
                document.getElementById("nom-prenom").value = data["nom_prenom"];
                document.getElementById("filiere").value = data["filiere"];
                return;
            }
        })
    } catch (err) {
        if (err.message === 'Request failed with status code 404')
            document.querySelector(".deleted-account-message").hidden = false;
        console.log(err);
    }

}