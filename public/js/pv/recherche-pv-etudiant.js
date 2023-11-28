async function recherchePV() {

    try {
        if (!document.querySelector(".deleted-account-message").hidden) {
            document.querySelector(".deleted-account-message").hidden = true;
        }
        rechercheEtudiant();
    } catch (error) {
        if (err.message === 'Request failed with status code 404')
            document.querySelector(".deleted-account-message").hidden = false;
        console.log(err);
    }
}