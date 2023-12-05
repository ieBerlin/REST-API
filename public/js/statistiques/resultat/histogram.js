function renderGraphicalHistogramResultat(data) {
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
    const histogramme = document.getElementById("histogramme-plus");
    const unorderList = document.createElement("ul");
    const listOfMale = document.createElement('li');
    const listOfFemale = document.createElement('li');

    listOfMale.textContent = success;
    listOfFemale.textContent = failled;
    listOfMale.style.height = Number(success * 20) + 'px'
    listOfMale.style.backgroundColor = 'blue';
    listOfFemale.style.backgroundColor = '#FF00DF';
    listOfFemale.style.height = Number(failled * 20) + 'px'
    const maleText = document.createElement('p')
    const maleDiv = document.createElement('div')
    const femaleText = document.createElement('p')
    const femaleDiv = document.createElement('div')

    maleDiv.id = 'male-div'
    maleText.textContent = 'Admis';
    maleDiv.appendChild(listOfMale)
    maleDiv.appendChild(maleText)

    femaleDiv.id = 'female-div'
    femaleText.textContent = 'Ajourne';
    femaleDiv.appendChild(listOfFemale)
    femaleDiv.appendChild(femaleText)

    unorderList.appendChild(femaleDiv);
    unorderList.appendChild(maleDiv);
    histogramme.appendChild(unorderList);
}