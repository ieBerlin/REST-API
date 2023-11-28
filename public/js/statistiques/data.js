const baseURL = 'http://localhost:3000/api/etudiant/';
let etudiantMaleArr = [];
let etudiantFemaleArr = [];

axios.get(baseURL).then((response) => {
    const data = response.data;
    for (var etudiant of data) {
        if (etudiant.civilite === 'Monsieur') {
            etudiantMaleArr.push(etudiant);
        } else {
            etudiantFemaleArr.push(etudiant);
        }
    }
    renderGraphicalHistogram(etudiantMaleArr, etudiantFemaleArr);
    renderGraphicalCamembert(etudiantMaleArr, etudiantFemaleArr)
})