document.addEventListener("DOMContentLoaded", function () {
    var registerBtn = document.querySelector(".reg-btn");

    if (registerBtn) {
        registerBtn.addEventListener("click", function () {
            window.location.href = "register-page.html";
        });
    }
});

