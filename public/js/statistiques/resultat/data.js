axios.get('http://localhost:3000/api/bulletin/').then((response) => {

    const data = response.data;
    let bulletins = [];
    let currentId = 0;
    let count = 0;
    for (var etudiant of data) {
        console.log(etudiant);
        currentId++;
        if (currentId % 5 === 0) {
            bulletins.push(Number(count / 5).toFixed(2));
            count = 0;
        }
        count += etudiant.note;

    }
    renderGraphicalHistogramResultat(bulletins);
    renderGraphicalCamembertRResultat(bulletins);

}).catch(err => {
    console.log(err);
});