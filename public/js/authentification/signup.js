document.querySelector('form#signup').addEventListener('submit', (e) => {
    e.preventDefault();
    console.log('TYPE OF AUTHENTIFICATION SIGN UP')
    const [email, password] = [...document.querySelectorAll('form#signup input')].map(input => input.value);
});