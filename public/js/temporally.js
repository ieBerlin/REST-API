function rechercheEtudiant() {
    const id = document.getElementById("numero").value;
    if (id) {
        fetch(`href`).then(
                (response) => {
                    const data = response.json();
                    return data;
                }
            ).then(data => {
                    {
                        if (!document.querySelector(".deleted-account-message").hidden) {
                            document.querySelector(".deleted-account-message").hidden = true;
                        }
                        document.querySelector(`.civilite #${data["civilite"]}`).checked = true;
                        document.getElementById("nom-prenom").value = data["nom_prenom"];
                        document.getElementsByTagName("textarea")[0].value = data["adresse"];
                        document.getElementById("no-postal").value = data["no_postal"];
                        document.getElementById("localite").value = data["localite"];
                        document.getElementById("pays").value = data["pays"];
                        document.getElementById("filiere").value = data["filiere"];

                        const image_path = `${data["image"].replace(/\s+/g, "")}`;
                        document.getElementById(
                            "selectedImage"
                        ).src = `http://localhost/tp-03%20-%20Copy/images/${image_path}`;
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


                    }
                }

            )
            .catch((e) => {

            });
    }
}

document.querySelector(".deleted-account-message").hidden = false;