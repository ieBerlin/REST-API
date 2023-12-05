document.querySelector('form#login').addEventListener('submit', (e) => {
    e.preventDefault();
    console.log('TYPE OF AUTHENTIFICATION LOGIN')
    const [email, password] = [...document.querySelectorAll('form#login input')].map(input => input.value);
});