const filiere = document.getElementById('filiere');

filiere.addEventListener('change', () => {
    moduleChangerSelonFiliere();
});

function moduleChangerSelonFiliere() {
    const baseURL = `http://localhost:3000/api/module/filiere/${filiere.value}`;
    const moduleSelect = document.getElementById('module');
    axios.get(baseURL).then(response => {
        if (response.status === 200) {
            const data = response.data;
            while (moduleSelect.options.length > 0) {
                moduleSelect.remove(0);
            }
            if (!(data.length === 0)) {
                for (var index = 0; index < data.length; index++) {
                    const option = document.createElement('option');
                    option.value = data[index].designation_module;
                    option.textContent = data[index].designation_module;
                    moduleSelect.appendChild(option);
                }
                moduleChangeEvent();
                return;
            }
        }
    })
}