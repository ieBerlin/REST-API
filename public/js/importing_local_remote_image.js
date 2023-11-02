const inputElement = document.getElementById("image-input");
const imageElement = document.getElementById("selectedImage");

inputElement.addEventListener("change", (e) => {
    const file = e.target.files[0];
    const reader = new FileReader();
    reader.readAsDataURL(file);
    reader.onload = () => {
        imageElement.src = reader.result;
    };
});