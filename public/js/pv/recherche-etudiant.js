async function rechercheEtudiant() {
    const id = document.getElementById("numero").value;
    const url = 'http://localhost:3000';
    const etudiantAPI = '/api/etudiant/';
    const baseURL1 = url.concat(etudiantAPI, id)
    axios.get(baseURL1).then(async response => {
        document.getElementById("error-occured").hidden = true;
        if (response.status === 200) {
            const data = response.data;
            document.getElementById("nom-prenom").value = data["nom_prenom"];
            const id = document.getElementById("numero").value;
            const bulletinAPI = '/api/bulletin/';
            const baseURL2 = url.concat(bulletinAPI, id)
            try {
                await axios.get(baseURL2).then(response => {
                    document.getElementById("table-module").hidden = false;
                    const data = response.data;
                    let sommeCoef = 0;
                    let notes = 0;
                    for (var module of data) {
                        sommeCoef += module['coefficient'];
                        notes += module['note'] * module['coefficient'];
                    }
                    document.getElementById('moyenne-etudiant').textContent = Number(notes) / Number(sommeCoef);
                    afficherLesNotesEtudiant(response.data);
                }).catch(err => console.log(err));
            } catch (error) {
                document.getElementById("table-module").hidden = true;
                document.getElementById("filiere").hidden = true;
                document.getElementById("error-occured").hidden = false;

            }
            return;
        }
    }).catch(err => {
        tableResetInnerHTML();
        document.getElementById("table-module").hidden = true;
        document.getElementById("filiere").hidden = true;
        document.getElementById("error-occured").hidden = false;
    })
}