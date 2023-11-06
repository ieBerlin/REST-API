function moduleChangeEvent() {
    const module = document.getElementById('module').value;
    const url = 'http://localhost:3000';
    const moduleAPI = '/api/module/name/';
    const baseURL = url.concat(moduleAPI, module)
    axios.get(baseURL).then((result) => {
        const code_module = result.data['code_module']
        const coefficient = result.data['coefficient']
        document.getElementById('code-module').value = code_module
        document.getElementById('coefficient').value = coefficient
    }).catch((err) => {
        console.log(err);

    });
}