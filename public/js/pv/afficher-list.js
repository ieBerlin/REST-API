window.onload = async() => {
    const baseURL = 'http://localhost:3000/api/etudiant/';
    var tableBody = document.querySelector("#bulletin-table tbody");
    let moyenneGenerale = 0;
    let moyenneMax = 0;
    let count = 0;
    let moyenneMin;
    let etudiantArray = [];

    const etudiants = {
        id: 0,
        name: 0,
        nom_module: 0,
        code_module: 0,
        coefficient: 0,
        note: 0,
    }
    await axios.get(baseURL).then(async response => {
        if (response.status === 200) {
            const data = response.data;
            for (var etudiant of data) {
                count++;
                newRow = tableBody.insertRow();
                var cell1 = newRow.insertCell(0);
                cell1.innerHTML = etudiant['nom_prenom']
                var cell2 = newRow.insertCell(1);
                cell2.innerHTML = etudiant['filiere']
                const id = etudiant['id'];
                const toutURL = 'http://localhost:3000/api/bulletin/';
                const URL = toutURL.concat(id)
                try {
                    await axios.get(URL).then(response => {
                        const data = response.data;
                        let sommeCoef = 0;
                        let notes = 0;
                        for (var module of data) {
                            sommeCoef += module['coefficient'];
                            notes += module['note'] * module['coefficient'];
                        }
                        var cell3 = newRow.insertCell(2);

                        const noteEtudiant = Number(notes) / Number(sommeCoef)
                        cell3.innerHTML = noteEtudiant;
                        if (moyenneMax < noteEtudiant) {
                            moyenneMax = noteEtudiant;
                        }
                        if (moyenneMin > noteEtudiant) {
                            etudid = etudiant['num_etudiant']
                            moyenneMin = noteEtudiant;
                        }
                        moyenneGenerale += noteEtudiant;
                        etudiantArray.push(Number(noteEtudiant));

                        // document.getElementById('moyenne-etudiant').textContent = Number(notes) / Number(sommeCoef);
                    }).catch(err => console.log(err));
                } catch (error) {

                }

            }
            const moyenneGa3 = moyenneGenerale / count;
            document.getElementById('moyenne-generale').textContent = `La moyenne generale : ${moyenneGa3}`
            document.getElementById('moyenne-max').textContent = `La moyenne max : ${moyenneMax}`
            document.getElementById('moyenne-min').textContent = `La moyenne min : ${Math.min(...etudiantArray)}`

        }
    }).catch(err => console.log(err));
}