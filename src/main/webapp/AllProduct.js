const btnCart=document.querySelector('#cart-icon');
const cart=document.querySelector('.cart');
const btnClose=document.querySelector('#cart-close');


var items = [
  { name: 'Corn Cob 2Pcs', category: 'Vegetabales', price: 'Rs.180', imgSrc: 'images/image14.jpg' },
  { name: 'Tomato 500g', category: 'Vegetabales', price: 'Rs.410', imgSrc: 'images/image17.jpg' },
  { name: 'Kiwi', category: 'Fruits', price: 'Rs.320', imgSrc: 'images/image13.jpg' },
  { name: 'Raththi Milk Powder 400g', category: 'Grocery', price: 'Rs.1240', imgSrc: 'images/image18.jpg' },
  { name: 'Orange', category: 'Fruits', price: 'Rs.65', imgSrc: 'images/image11.jpg' },
  { name: 'Anchor Butter 275g', category: 'Grocery', price: 'Rs.500', imgSrc: 'images/image19.jpg' },
  { name: 'Top Crust Bread 450g', category: 'Bakery', price: 'Rs.150', imgSrc: 'images/image12.jpg' },
  { name: 'Dinner Bun 3s', category: 'Bakery', price: 'Rs.170', imgSrc: 'images/image15.jpg' },
  { name: 'carrot', category: 'Vegetabales', price: 'Rs.100', imgSrc: 'images/image6.jpg' },
  { name: 'Pumpkin', category: 'Vegetabales', price: 'Rs.65', imgSrc: 'images/image20.jpg' },
  { name: 'Red Apple', category: 'Fruits', price: 'Rs.80', imgSrc: 'images/image21.jpg' },
  { name: 'Maliban Chocolate Biscuits', category: 'Grocery', price: 'Rs.250', imgSrc: 'images/image22.jpg' },
  { name: 'Green Apple', category: 'Fruits', price: 'Rs.100', imgSrc: 'images/images23.jpg' },
  { name: 'Araliya Supiri kiri samba', category: 'Grocery', price: 'Rs.1250', imgSrc: 'images/image24.jpg' },
  { name: 'French Bread', category: 'Bakery', price: 'Rs.300', imgSrc: 'images/image16.jpg' },
  { name: 'Kibula bun', category: 'Bakery', price: 'Rs.120', imgSrc: 'images/image8.jpg' },
  { name: 'Green Beans 500g', category: 'Vegetabals', price: 'Rs.60', imgSrc: 'images/image25.jpg' },
  { name: 'Snake Gourd', category: 'Vegetabales', price: 'Rs.65', imgSrc: 'images/image26.jpg' },
  { name: 'Banana', category: 'Fruits', price: 'Rs.80', imgSrc: 'images/image27.jpg' },
  { name: 'Coconut', category: 'Grocery', price: 'Rs.55', imgSrc: 'images/image28.jpg' },
  { name: 'watermelon', category: 'Fruits', price: 'Rs.25', imgSrc: 'images/image29.jpg' },
  { name: 'Coconut oil', category: 'Grocery', price: 'Rs.450', imgSrc: 'images/image30.jpg' },
  { name: 'Egg Roti', category: 'Bakery', price: 'Rs.65', imgSrc: 'images/image9.jpg' },
  { name: 'Fisg bun', category: 'Bakery', price: 'Rs.65', imgSrc: 'images/image31.jpg' }
];

document.addEventListener('DOMContentLoaded', function() {
  
  function filterItems(category) {
    var shopContent = document.getElementById('shopContent');
 
      items.forEach(function(item) {
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
  filterButtons.forEach(function(button) {
      button.addEventListener('click', function() { 
          shopContent.innerHTML = ''; 
          filterItems(this.id);
      });
  });
 
  filterItems('All');
});

btnCart.addEventListener('click',()=>{
  cart.classList.add('cart-active');
});

btnClose.addEventListener('click',()=>{
  cart.classList.remove('cart-active');
});

document.addEventListener('DOMContentLoaded',loadFood);

function loadFood(){
  loadContent();

}

function loadContent(){ 
  let btnRemove=document.querySelectorAll('.cart-remove');
  btnRemove.forEach((btn)=>{
    btn.addEventListener('click',removeItem);
  });
 
  let qtyElements=document.querySelectorAll('.cart-quantity');
  qtyElements.forEach((input)=>{
    input.addEventListener('change',changeQty);
  });
 
  let cartBtns=document.querySelectorAll('.add-cart');
  cartBtns.forEach((btn)=>{
    btn.addEventListener('click', addCart);
  });

  updateTotal();
}

 
function removeItem(){
  if(confirm('Are Your Sure to Remove')){
    let title=this.parentElement.querySelector('.cart-food-title').innerHTML;
    itemList=itemList.filter(el=>el.title!=title);
    this.parentElement.remove();
    loadContent();
  }
}
 
function changeQty(){
  if(isNaN(this.value) || this.value<1){
    this.value=1;
  }
  loadContent();
}

let itemList=[];

//Add Cart
function addCart(){ 
 let food=this.parentElement;
 let title=food.querySelector('.food-title').innerHTML;
 let price=food.querySelector('.food-price').innerHTML;
 let imgSrc=food.querySelector('.food-img').src;
 //console.log(title,price,imgSrc);
 
 let newProduct={title,price,imgSrc}

 //Check Product already Exist in Cart
 if(itemList.find((el)=>el.title==newProduct.title)){
  alert("Product Already added in Cart");
  return;
 }else{
  itemList.push(newProduct);
 }


let newProductElement= createCartProduct(title,price,imgSrc);
let element=document.createElement('div');
element.innerHTML=newProductElement;
let cartBasket=document.querySelector('.cart-content');
cartBasket.append(element);
loadContent();
}


function createCartProduct(title,price,imgSrc){

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

function updateTotal()
{
  const cartItems=document.querySelectorAll('.cart-box');
  const totalValue=document.querySelector('.total-price');

  let total=0;

  cartItems.forEach(product=>{
    let priceElement=product.querySelector('.cart-price');
    let price=parseFloat(priceElement.innerHTML.replace("Rs.",""));
    let qty=product.querySelector('.cart-quantity').value;
    total+=(price*qty);
    product.querySelector('.cart-amt').innerText="Rs."+(price*qty);

  });

  totalValue.innerHTML='Rs.'+total;


  // Add Product Count in Cart Icon

  const cartCount=document.querySelector('.cart-count');
  let count=itemList.length;
  cartCount.innerHTML=count;

  if(count==0){
    cartCount.style.display='none';
  }else{
    cartCount.style.display='block';
  }


}


