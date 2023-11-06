async function rechercheEtudiant() {
    const id = document.getElementById("numero").value;
    const url = 'http://localhost:3000';
    const etudiantAPI = '/api/etudiant/';
    const baseURL = url.concat(etudiantAPI, id)

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
                document.getElementById("no-postal").value = data["no_postal"];
                document.getElementById("localite").value = data["localite"];
                document.getElementById("pays").value = data["pays"];
                document.getElementById("filiere").value = data["filiere"];

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



                for (let platforme of data["platformes"].split(",")) {
                    if (platforme != "empty") {
                        document.getElementById(platforme.trim()).checked = true;
                    }
                }
                const arr = data["applications"].split(",");
                let applications = [];
                for (var application of arr) {
                    applications.push(application.trim());
                }

                const select_multiple = document.querySelectorAll(
                    "#applications option"
                );
                for (const option of select_multiple) {
                    if (applications.includes(option.value.trim())) {
                        option.selected = true;
                    }
                }
                return;

            }
        })
    } catch (err) {
        if (err.message === 'Request failed with status code 404')
            document.querySelector(".deleted-account-message").hidden = false;
        console.log(err);
    }


}