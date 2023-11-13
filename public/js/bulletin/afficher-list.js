const list = document.getElementById('affichage-list-bulletin');
list.addEventListener('click', (event) => {
    event.preventDefault();
    window.location.href = './afficher-list.html'

});