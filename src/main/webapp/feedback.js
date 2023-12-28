const allStar = document.querySelectorAll('.rating .star')

allStar.forEach((item, idx)=> {
item.addEventListener('click', function() {
    allStar.forEach(i=> {
        i.classList.replace('fa-solid', 'fa-regular')
    })
    for(let i=0; i<allStar.length; i++) {
        if(i <= idx) {
            allStar[i].classList.replace('fa-regular', 'fa-solid')
        }
    }
})
})

