let searchForm = document.querySelector('.search-form');

document.querySelector('#search-btn').onclick = () => {
    searchForm.classList.toggle('active');
}

// Cart Drop Down Animation --------------------------------->
// let shoppingCart=document.querySelector('.shopping-cart');

// document.querySelector('#cart-btn').onclick = () =>{
//     shoppingCart.classList.toggle('active');
// }

document.addEventListener("DOMContentLoaded", function () {
    var loginBtn = document.getElementById("login-btn");

    loginBtn.addEventListener("click", function () {
        window.location.href = "login-page.html";
    });
});

document.addEventListener('DOMContentLoaded', function () {
    const slider = document.querySelector('.slider');
    const images = document.querySelectorAll('.slider img');

    let currentSlide = 0;

    function showNextSlide() {
        currentSlide = (currentSlide + 1) % images.length;
        const offset = -currentSlide * 100;
        images.forEach((img, index) => {
            img.style.transition = `transform 1.5s ${index * 0}s ease-in-out`;
            img.style.transform = `translateX(${offset}%)`;
        });
    }
    setInterval(showNextSlide, 5000);
});




