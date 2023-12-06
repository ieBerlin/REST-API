const etudiantInexistantDiv = document.getElementById('etudiant-inexistant');
document.querySelector('form#signup').addEventListener('submit', (e) => {
    etudiantInexistantDiv.hidden = true;
    e.preventDefault();
    console.log('TYPE OF AUTHENTIFICATION SIGN UP')
    const [email, password] = [...document.querySelectorAll('form#signup input')].map(input => input.value);
    const role = document.querySelector('select')
    var options = role.options;
    var selectedOption = options[role.selectedIndex];
    var selectedValue = selectedOption.value;
    const data = {
        email,
        password,
        role: selectedValue,
    }
    axios.post(`http://localhost:3000/api/user/`, data).then(response => {
        if (response.data.success) {

            const element = document.createElement('p');
            element.textContent = "User a ete create";
            element.id = "created-user";
            const typeOfUserDiv = document.getElementById('created-user-div');
            typeOfUserDiv.appendChild(element);
            setTimeout(() => {
                typeOfUserDiv.innerHTML = "";
                window.location.reload();
            }, 2500)
        }

    }).catch(() => {});

});