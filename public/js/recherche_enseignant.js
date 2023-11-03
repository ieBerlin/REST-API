async function rechercheEnseignant() {
    const id = document.getElementById("numero").value;
    const url = 'http://localhost:3000';
    const enseignantAPI = '/api/enseignant/';
    const baseURL = url.concat(enseignantAPI, id)

    try {
        if (!document.querySelector(".deleted-account-message").hidden) {
            document.querySelector(".deleted-account-message").hidden = true;
        }
        await axios.get(baseURL).then(response => {
            if (response.status === 200) {
                const data = response.data;
                document.querySelector(`.civilite #${data["civilite"]}`).checked = true;
                document.getElementById("nom-prenom").value = data["nom_prenom"];
                document.getElementById("adresse").value = data["adresse"];
                document.getElementById("date-de-naissance").value = data["date_naissance"];
                document.getElementById("lieu-de-naissance").value = data["lieu_naissance"];
                document.getElementById("pays").value = data["pays"];
                document.getElementById("grade").value = data["grade"];
                document.getElementById("specialite").value = data["specialite"];

                if (!data["image"] == '') {
                    const image_path = `${data["image"].replace(/\s+/g, "")}`;
                    document.getElementById(
                        "selectedImage"
                    ).src = url.concat(`/images/${image_path}`);

                } else {
                    const image_path = `${data["image"].replace(/\s+/g, "")}`;
                    document.getElementById(
                        "selectedImage"
                    ).src = url.concat(`/images/person.png`);
                }

                return;
            }
        })
    } catch (err) {
        if (err.message === 'Request failed with status code 404')
            document.querySelector(".deleted-account-message").hidden = false;
        console.log(err)
    }


}