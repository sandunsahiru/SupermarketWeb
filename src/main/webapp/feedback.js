const allStars = document.querySelectorAll('.rating .star');
let ratingInput = document.querySelector('input[name="rating"]');

allStars.forEach((star, idx) => {
    star.addEventListener('click', function() {
        allStars.forEach(s => s.classList.remove('fa-solid'));
        allStars.forEach((s, i) => {
            if (i <= idx) {
                s.classList.add('fa-solid');
            }
        });
        ratingInput.value = idx + 1;
    });
});
