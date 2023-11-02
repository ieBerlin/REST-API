function rechercheModule() {
    const id = document.getElementById("numero").value;
    if (id) {
        fetch(`../../back-end/fetch-page/module.php?id=${id}`)
            .then((response) => {
                const data = response.json();
                return data;
            })
            .then((data) => {
                {
                    if (!document.querySelector(".deleted-account-message").hidden) {
                        document.querySelector(".deleted-account-message").hidden = true;
                    }
                    document.getElementById("code-module").value = data["code_module"];
                    document.getElementById("designation-module").value = data["designation_module"];
                    document.getElementById("coefficient").value = data["coefficient"];
                    document.getElementById("volumne-horaire").value = data["volume_horaire"];
                    document.getElementById("filiere").value = data["filiere"];
                }
            })
            .catch((_) => {
                document.querySelector(".deleted-account-message").hidden = false;
            });
    }
}