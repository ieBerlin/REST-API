window.onload = () => {
    let baseURL;
    const searchParamas = new URLSearchParams(window.location.search);
    const id = searchParamas.get('id');
    const laMoyenne = document.getElementById('la-moyenne');
    let userPresent = false;
    let sommeCoef = 0;
    let notes = 0;
    if (id) {
        //   un bulletin 
        baseURL = `http://localhost:3000/api/bulletin/${id}`;
        userPresent = true;
    } else {
        // Tout les etudiants 
        baseURL = 'http://localhost:3000/api/bulletin/';
    }
    axios.get(baseURL).then((response) => {
        const data = response.data;
        if (data.length === 0) {
            window.location.href = './aucun-bulletin.html'
            return;
        }
        var tableBody = document.querySelector("#bulletin-table tbody");
        let idsAlreadyExist = new Map();
        let rowCount = 0;
        data.forEach(element => {
            sommeCoef += element['coefficient'];
            notes += element['note'] * element['coefficient'];
            let newRow;
            if (!idsAlreadyExist.has(element['num_etudiant'])) {
                idsAlreadyExist.set(element['num_etudiant'], rowCount)
                newRow = tableBody.insertRow();
                var cell1 = newRow.insertCell(0);
                rowCount++;
                cell1.innerHTML = element['num_etudiant']
                var cell2 = newRow.insertCell(1);
                cell2.innerHTML = element['filiere']
                var cell3 = newRow.insertCell(2);
                cell3.innerHTML = element['nom_module']
                var cell4 = newRow.insertCell(3);
                cell4.innerHTML = element['code_module']
                var cell5 = newRow.insertCell(4);
                cell5.innerHTML = element['coefficient']
                var cell6 = newRow.insertCell(5);
                cell6.innerHTML = element['note']

            } else {
                const elementIndex = idsAlreadyExist.get(element['num_etudiant']);
                newRow = tableBody.insertRow(elementIndex);
                rowCount++;
                var cell1 = newRow.insertCell(0);
                cell1.innerHTML = element['num_etudiant']
                var cell2 = newRow.insertCell(1);
                cell2.innerHTML = element['filiere']
                var cell3 = newRow.insertCell(2);
                cell3.innerHTML = element['nom_module']
                var cell4 = newRow.insertCell(3);
                cell4.innerHTML = element['code_module']
                var cell5 = newRow.insertCell(4);
                cell5.innerHTML = element['coefficient']
                var cell6 = newRow.insertCell(5);
                cell6.innerHTML = element['note']
            }
            if (Number(element['note']) < 10) {
                newRow.style.backgroundColor = "rgba(255, 0, 0, 0.5)";
                return;
            }
            newRow.style.backgroundColor = "rgba(0, 255, 0, 0.5)";
        });
        if (userPresent)
            laMoyenne.innerHTML = `<h3>Somme coefficients : ${sommeCoef}</h3> <h3>Somme Coef * Notes : ${notes}</h3> <h3>Moyenne : ${Number(notes)/Number(sommeCoef)}</h3>`



    }).catch(err => console.log(err));
}