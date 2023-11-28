function renderGraphicalHistogram(etudiantsMale, etudiantsFemale) {
    const histogramme = document.getElementById("histogramme");
    const unorderList = document.createElement("ul");
    const listOfMale = document.createElement('li');
    const listOfFemale = document.createElement('li');

    listOfMale.textContent = etudiantsMale.length;
    listOfFemale.textContent = etudiantsFemale.length;
    listOfMale.style.height = Number(etudiantsMale.length * 50) + 'px'
    listOfMale.style.backgroundColor = 'blue';
    listOfFemale.style.backgroundColor = '#FF00DF';
    listOfFemale.style.height = Number(etudiantsFemale.length * 50) + 'px'
    const maleText = document.createElement('p')
    const maleDiv = document.createElement('div')
    const femaleText = document.createElement('p')
    const femaleDiv = document.createElement('div')

    maleDiv.id = 'male-div'
    maleText.textContent = 'Male';
    maleDiv.appendChild(listOfMale)
    maleDiv.appendChild(maleText)

    femaleDiv.id = 'female-div'
    femaleText.textContent = 'Female';
    femaleDiv.appendChild(listOfFemale)
    femaleDiv.appendChild(femaleText)

    unorderList.appendChild(femaleDiv);
    unorderList.appendChild(maleDiv);
    histogramme.appendChild(unorderList);
}