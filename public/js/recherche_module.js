async function rechercheModule() {
    const id = document.getElementById("numero").value;
    const url = 'http://localhost:3000';
    const moduleAPI = '/api/module/';
    const baseURL = url.concat(moduleAPI, id)

    try {
        if (!document.querySelector(".deleted-account-message").hidden) {
            document.querySelector(".deleted-account-message").hidden = true;
        }
        await axios.get(baseURL).then(response => {
            if (response.status === 200) {
                const data = response.data;
                document.getElementById("code-module").value = data["code_module"];
                document.getElementById("designation-module").value = data["designation_module"];
                document.getElementById("coefficient").value = data["coefficient"];
                document.getElementById("volumne-horaire").value = data["volume_horaire"];
                document.getElementById("filiere").value = data["filiere"];
                return;
            }
        })
    } catch (err) {
        if (err.message === 'Request failed with status code 404')
            document.querySelector(".deleted-account-message").hidden = false;
    }


}