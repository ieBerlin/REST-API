const userId = document.getElementById("numero");
const module = document.getElementById("module");
let validUserId = false;
let validModule = false;
userId.addEventListener('change', () => {
    if (userId.value) {
        validUserId = true;
    } else {
        validUserId = false;
    }
    noteState();
});
module.addEventListener('change', () => {
    if (module.value) {
        validModule = true;
    } else {
        validModule = false;
    }
    noteState();
});

function noteState() {
    const noteStateDiv = document.querySelector(".note-state");
    const noteParagraph = noteStateDiv.querySelector("p");
    noteParagraph.textContent = '';
    if (validModule && validUserId) {
        const url = 'http://localhost:3000';
        const bulletintAPI = '/api/bulletin/';
        const baseURLBulletin = url.concat(bulletintAPI, userId.value)
        try {
            axios.get(baseURLBulletin).then(response => {
                const data = response.data;
                for (var index = 0; index < data.length; index++) {
                    if (data[index].note && data[index].nom_module === module.value) {
                        noteParagraph.textContent = '';
                        document.getElementById('note').value = data[index].note
                        return;
                    }
                    noteParagraph.textContent = 'Note non Saisie ';
                    document.getElementById('note').value = '';
                }
            }).catch(err => console.log(err));
        } catch (error) {
            console.log(error);
        }
    }
}

const modifierButton = document.getElementById('modifier-bulletin');
modifierButton.addEventListener('click', (e) => {
    e.preventDefault();
    const url = 'http://localhost:3000';
    const bulletintAPI = '/api/bulletin/';
    const baseURLBulletin = url.concat(bulletintAPI, userId.value)
    if (validModule && validUserId && document.getElementById('note').value !== '') {
        axios.patch(baseURLBulletin, {
            note: document.getElementById('note').value,
            module: module.value,
        }).then((response) => {
            if (response.data.success) {
                return window.location.href = 'http://localhost:3000/html-files/bulletins/bulletin-modifier.html'
            }
            window.location.href = 'http://localhost:3000/html-files/failled_to_proccess_your_request.html'
        }).catch(response => {
            window.location.href = 'http://localhost:3000/html-files/failled_to_proccess_your_request.html'
        });
    }

});