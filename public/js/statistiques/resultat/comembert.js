function renderGraphicalCamembertRResultat(data) {
    let success = 0;
    let failled = 0;
    for (var note of data) {
        console.log(note);
        if (note >= 10) {
            success++;
        } else {
            failled++;
        }
    }
    console.log(success, failled);
    const malePercent = Number(success / data.length * 100).toFixed(2);
    const femalePercent = Number(failled / data.length * 100).toFixed(2);

    const circle = document.getElementById('circle-resultat'); // Fix the variable name
    circle.style.backgroundImage = `conic-gradient(blue ${malePercent}%, #FF00DF ${femalePercent}%)`;

    const maleP = document.createElement('p');
    maleP.textContent = `Pourcentage d'admis : ${malePercent}%`
    const femaleP = document.createElement('p');
    femaleP.textContent = `Pourcentage d'ajourne : ${femalePercent}%`

    const camembert = document.getElementById('camembert-plus');
    camembert.appendChild(maleP)
    camembert.appendChild(femaleP)
}