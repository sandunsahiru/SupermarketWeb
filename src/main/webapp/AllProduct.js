const btnCart = document.querySelector('#cart-icon');
const cart = document.querySelector('.cart');
const btnClose = document.querySelector('#cart-close');


var items = [
  { name: 'Pumpkin', category: 'Vegitabale', price: 'Rs.420', imgSrc: 'img/vegetables/pumpkin.jpeg' },
  { name: 'Cauliflower 100g', category: 'Vegitabale', price: 'Rs.150.00', imgSrc: 'img/vegetables/cauliflower.jpeg' },
  { name: 'Watermelon', category: 'Fruite', price: 'Rs.520.00', imgSrc: 'img/fruits/watermelon.jpeg' },
  { name: 'Choco Grains 150g', category: 'Gosari', price: 'Rs.360.00', imgSrc: 'img/grocery/cereals-.png' },
  { name: 'Papaya 1kg', category: 'Fruite', price: 'Rs.250.00', imgSrc: 'img/fruits/papaya.jpg' },
  { name: 'Jumbo Peanuts 100g', category: 'Gosari', price: 'Rs.330.00', imgSrc: 'img/grocery/jumbo_peanuts-.png' },
  { name: 'Dinner Bun 3s', category: 'Bakery', price: 'Rs.170.00', imgSrc: 'img/bakery/dinner-bun.jpg' },
  { name: 'Top Crust Bread 450g', category: 'Bakery', price: 'Rs.150.00', imgSrc: 'img/bakery/crust-bread.jpg' },
  { name: 'Kiwi 500g', category: 'Fruite', price: 'Rs.320.00', imgSrc: 'img/fruits/alimentarium_kiwis_0.jpg' },
  { name: 'Bell Pepper 100g', category: 'Vegitabale', price: 'Rs.296.00', imgSrc: 'img/vegetables/bellpepper.png' },
  { name: 'Lettuce 100g', category: 'Vegitabale', price: 'Rs.390.00', imgSrc: 'img/vegetables/lettuce.png' },
  { name: 'Banana - Kolikuttu 100g', category: 'Fruite', price: 'Rs.70.00', imgSrc: 'img/fruits/Bananas.jpg' },
  { name: 'Ratthi Milk Powder 400g', category: 'Gosari', price: 'Rs.1240.00', imgSrc: 'img/grocery/Raththi-.png' },
  { name: 'Mangosteen 1kg', category: 'Fruite', price: 'Rs.350.00', imgSrc: 'img/fruits/Mangosteen.png' },
  { name: 'Tomatoes 500g', category: 'Vegitabale', price: 'Rs.410.00', imgSrc: 'img/vegetables/Tomato_je.jpg' },
  { name: 'Munchee Biscuit Kalo 90g', category: 'Gosari', price: 'Rs.100.00', imgSrc: 'img/grocery/Chocolate_Biscuit.png' },
  { name: 'Corn Cob 2Pcs', category: 'Vegitabale', price: 'Rs.180.00', imgSrc: 'img/vegetables/CornCorb-scaled.jpg' },
  { name: 'French Bread', category: 'Bakery', price: 'Rs.300.00', imgSrc: 'img/bakery/french-bread.jpg' },
  { name: 'Happy Cow Cheese 120g', category: 'Gosari', price: 'Rs.736.00', imgSrc: 'img/grocery/happy_cow-.png' },
  { name: 'Beetroot 300g', category: 'Vegitabale', price: 'Rs.264.00', imgSrc: 'img/vegetables/beetroot.png' },
  { name: 'Pomegranate 300g', category: 'Fruite', price: 'Rs.590.00', imgSrc: 'img/fruits/Pomegranate.png' },
  { name: 'Uswatte Tipi Tip Onion Stars 25g', category: 'Gosari', price: 'Rs.100.00', imgSrc: 'img/grocery/tipi_tip-.png' },
  { name: 'Guava 100g', category: 'Fruite', price: 'Rs.85.00', imgSrc: 'img/fruits/Guava.png' },
  { name: 'Kandos Cashew Nut Chocolate 40g', category: 'Gosari', price: 'Rs.220.00', imgSrc: 'img/grocery/Cashew_Nut_100g-.png' },
  { name: 'Brinjals 300g', category: 'Vegitabale', price: 'Rs.240.00', imgSrc: 'img/vegetables/eggplants.png' },
  { name: 'Samaposha Cereal 200g', category: 'Gosari', price: 'Rs.175.00', imgSrc: 'img/grocery/samaposha-.png' },
  { name: 'Mango 100g', category: 'Fruite', price: 'Rs.65.00', imgSrc: 'img/fruits/mango.png' }
];

document.addEventListener('DOMContentLoaded', function () {

  function filterItems(category) {
    var shopContent = document.getElementById('shopContent');

    items.forEach(function (item) {
      var foodBox = document.createElement('div');
      foodBox.className = 'food-box';

      if (category === 'All' || item.category.includes(category)) {
        var picDiv = document.createElement('div');
        picDiv.className = 'pic ' + item.category;
        var img = document.createElement('img');
        img.src = item.imgSrc;
        img.className = 'food-img';
        picDiv.appendChild(img);

        var h2 = document.createElement('h2');
        h2.className = 'food-title';
        h2.textContent = item.name;

        var span = document.createElement('span');
        span.className = 'food-price';
        span.textContent = item.price;

        var ionIcon = document.createElement('ion-icon');
        ionIcon.className = 'add-cart';
        ionIcon.setAttribute('name', 'cart');

        foodBox.appendChild(picDiv);
        foodBox.appendChild(h2);
        foodBox.appendChild(span);
        foodBox.appendChild(ionIcon);

        shopContent.appendChild(foodBox);
        loadContent()
      }
    });
  }

  var filterButtons = document.querySelectorAll('.filter-btn');
  filterButtons.forEach(function (button) {
    button.addEventListener('click', function () {
      shopContent.innerHTML = '';
      filterItems(this.id);
    });
  });

  filterItems('All');
});

btnCart.addEventListener('click', () => {
  cart.classList.add('cart-active');
});

btnClose.addEventListener('click', () => {
  cart.classList.remove('cart-active');
});

document.addEventListener('DOMContentLoaded', loadFood);

function loadFood() {
  loadContent();

}

function loadContent() {
  let btnRemove = document.querySelectorAll('.cart-remove');
  btnRemove.forEach((btn) => {
    btn.addEventListener('click', removeItem);
  });

  let qtyElements = document.querySelectorAll('.cart-quantity');
  qtyElements.forEach((input) => {
    input.addEventListener('change', changeQty);
  });

  let cartBtns = document.querySelectorAll('.add-cart');
  cartBtns.forEach((btn) => {
    btn.addEventListener('click', addCart);
  });

  updateTotal();
}


function removeItem() {
  if (confirm('Are Your Sure to Remove')) {
    let title = this.parentElement.querySelector('.cart-food-title').innerHTML;
    itemList = itemList.filter(el => el.title != title);
    this.parentElement.remove();
    loadContent();
  }
}

function changeQty() {
  if (isNaN(this.value) || this.value < 1) {
    this.value = 1;
  }
  loadContent();
}

let itemList = [];

//Add Cart
function addCart() {
  let food = this.parentElement;
  let title = food.querySelector('.food-title').innerHTML;
  let price = food.querySelector('.food-price').innerHTML;
  let imgSrc = food.querySelector('.food-img').src;
  //console.log(title,price,imgSrc);

  let newProduct = { title, price, imgSrc }

  //Check Product already Exist in Cart
  if (itemList.find((el) => el.title == newProduct.title)) {
    alert("Product Already added in Cart");
    return;
  } else {
    itemList.push(newProduct);
  }


  let newProductElement = createCartProduct(title, price, imgSrc);
  let element = document.createElement('div');
  element.innerHTML = newProductElement;
  let cartBasket = document.querySelector('.cart-content');
  cartBasket.append(element);
  loadContent();
}


function createCartProduct(title, price, imgSrc) {

  return `
  <div class="cart-box">
  <img src="${imgSrc}" class="cart-img">
  <div class="detail-box">
    <div class="cart-food-title">${title}</div>
    <div class="price-box">
      <div class="cart-price">${price}</div>
       <div class="cart-amt">${price}</div>
   </div>
    <input type="number" value="1" class="cart-quantity">
  </div>
  <ion-icon name="trash" class="cart-remove"></ion-icon>
</div>
  `;
}

function updateTotal() {
  const cartItems = document.querySelectorAll('.cart-box');
  const totalValue = document.querySelector('.total-price');

  let total = 0;

  cartItems.forEach(product => {
    let priceElement = product.querySelector('.cart-price');
    let price = parseFloat(priceElement.innerHTML.replace("Rs.", ""));
    let qty = product.querySelector('.cart-quantity').value;
    total += (price * qty);
    product.querySelector('.cart-amt').innerText = "Rs." + (price * qty);

  });

  totalValue.innerHTML = 'Rs.' + total;


  // Add Product Count in Cart Icon

  const cartCount = document.querySelector('.cart-count');
  let count = itemList.length;
  cartCount.innerHTML = count;

  if (count == 0) {
    cartCount.style.display = 'none';
  } else {
    cartCount.style.display = 'block';
  }
}





let searchForm = document.querySelector('.search-form');

document.querySelector('#search-btn').onclick = () => {
  searchForm.classList.toggle('active');
}

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



