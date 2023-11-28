function renderGraphicalCamembert(etudiantsMale, etudiantsFemale) {
    const etudiants = [...etudiantsMale, ...etudiantsFemale];

    const malePercent = Number(etudiantsMale.length / etudiants.length * 100).toFixed(2);
    const femalePercent = Number(etudiantsFemale.length / etudiants.length * 100).toFixed(2);

    const circle = document.getElementById('circle'); // Fix the variable name
    circle.style.backgroundImage = `conic-gradient(blue ${malePercent}%, #FF00DF ${malePercent}%)`;

    const maleP = document.createElement('p');
    maleP.textContent = `Pourcentage d'Hommes : ${malePercent}%`
    const femaleP = document.createElement('p');
    femaleP.textContent = `Pourcentage d'Hommes : ${femalePercent}%`

    const camembert = document.getElementById('camembert');
    camembert.appendChild(maleP)
    camembert.appendChild(femaleP)
}