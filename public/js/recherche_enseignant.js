function rechercheEnseignant() {

    const id = document.getElementById("numero").value;
    if (id) {
        fetch(`../../back-end/fetch-page/enseignant.php?id=${id}`)
            .then((response) => {
                const data = response.json();
                return data;
            })
            .then((data) => {
                {
                    if (!document.querySelector(".deleted-account-message").hidden) {
                        document.querySelector(".deleted-account-message").hidden = true;
                    }
                    document.querySelector(
                        `.civilite #${data["civilite"]}`
                    ).checked = true;
                    document.getElementById("nom-prenom").value = data["nom_prenom"];
                    document.getElementsByTagName("textarea")[0].value = data["adresse"];
                    document.getElementById("date-de-naissance").value = data["date_naissance"];
                    document.getElementById("lieu-de-naissance").value = data["lieu_naissance"];
                    document.getElementById("pays").value = data["pays"];
                    document.getElementById("grade").value = data["grade"];
                    document.getElementById("specialite").value = data["specialite"];
                    document.getElementById("nationalite").value = data["nationalite"];

                    const image_path = `${data["image"].replace(/\s+/g, "")}`;
                    document.getElementById(
                        "selectedImage"
                    ).src = `http://localhost/tp-03%20-%20Copy/images/${image_path}`;
                }
            })
            .catch((e) => {
                document.querySelector(".deleted-account-message").hidden = false;
            });
    }
}