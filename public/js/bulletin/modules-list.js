window.onload = () => {
    const baseURL = 'http://localhost:3000/api/module/';
    const moduleSelect = document.getElementById('module');
    axios.get(baseURL).then(response => {
        if (response.status === 200) {
            const data = response.data;
            for (var index = 0; index < data.length; index++) {
                const option = document.createElement('option');
                option.value = data[index].designation_module;
                option.textContent = data[index].designation_module;
                moduleSelect.appendChild(option);
            }
        }
    })
}