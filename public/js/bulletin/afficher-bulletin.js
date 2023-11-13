const bulletin = document.getElementById('affichage-bulletin');
bulletin.addEventListener('click', (event) => {
    event.preventDefault();
    const id = document.getElementById('numero').value
    window.location.href = `./afficher-list.html?id=${id}`

});