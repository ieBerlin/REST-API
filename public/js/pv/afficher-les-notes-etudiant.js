function afficherLesNotesEtudiant(data) {
    tableResetInnerHTML();
    var tableBody = document.querySelector("#table-module table tbody");
    if (data[0]["filiere"]) {
        document.getElementById("filiere").hidden = false;
    }
    const filiere = document.getElementById("filiere");
    filiere.textContent = `Filiere : ${data[0]["filiere"]}`
    for (var bulletin of data) {
        var row = tableBody.insertRow();
        const cell1 = row.insertCell(0);
        cell1.innerHTML = bulletin["num_etudiant"]
        const cell2 = row.insertCell(1);
        cell2.innerHTML = bulletin["nom_module"];
        const cell3 = row.insertCell(2);
        cell3.innerHTML = bulletin["code_module"];
        const cell4 = row.insertCell(3);
        cell4.innerHTML = bulletin["note"];
    }

}

function tableResetInnerHTML() {
    document.querySelector("table").innerHTML = '<table> \
<thead> \
    <tr> \
        <th>ID</th> \
        <th>Nom module</th> \
        <th>Code module </th> \
        <th>note</th> \
    </tr> \
</thead> \
<tbody> \
</tbody> \
</table> ';
}