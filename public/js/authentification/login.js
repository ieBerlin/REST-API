document.querySelector('form#login').addEventListener('submit', (e) => {

    e.preventDefault();
    etudiantInexistantDiv.hidden = true;

    console.log('TYPE OF AUTHENTIFICATION LOGIN')
    const [email, password] = [...document.querySelectorAll('form#login input')].map(input => input.value);
    axios.get(`http://localhost:3000/api/user/${email}/${password}`).then(response => {
        if (response.data) {
            if (response.data.role.toLowerCase() === 'admin') {
                return window.location.href = './html-files/users/admin.html'
            } else {
                return window.location.href = './html-files/users/bulletin-users.html'
            }
        }
        return;
        etudiantInexistantDiv.hidden = false;

    }).catch(() => etudiantInexistantDiv.hidden = false);

});