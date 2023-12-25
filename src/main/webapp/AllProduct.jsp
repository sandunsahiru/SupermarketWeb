<%-- 
    Document   : AllProduct
    Created on : Dec 25, 2023, 11:39:17 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NSBM</title>
  <link rel="stylesheet" href="AllProduct.css">
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"> 

</head>
<body>
  <header>


    <div class="navbar">

      <a href="#" class="logo"><i class="fas fa-shopping-basket"></i> Greenie</a>

      <nav class="nav-item">
        <a href="#home">home</a>
        <a href="#bestsellers">best sellers</a>
        <a href="#products">products</a>
        <a href="#categories">categories</a>
    </nav>

      <div class="box">
        <div class="cart-count">0</div>
        <ion-icon name="cart"  id="cart-icon" ></ion-icon>
      </div>

      <div class="cart">
        <div class="cart-title">Cart Items</div>
        <div class="cart-content">
        </div>
        
      <div class="total">
        <div class="total-title">Total</div>
        <div class="total-price">Rs.0</div>
      </div>

      <button class="btn-buy">Place Order</button>

      <ion-icon name="close" id="cart-close"></ion-icon>

      </div>
    </div>
  </header>
  <div id="products"> 
    <div  >


      <h3 class="title">
        <div class="filter-btns">
        <button type="button" class="filter-btn" id="All">All</button>
        <button type="button" class="filter-btn" id="Vegetabales">Vegetabales</button>
        <button type="button" class="filter-btn" id="Fruits">Fruits</button>
        <button type="button" class="filter-btn" id="Grocery">Grocery</button>
        <button type="button" class="filter-btn" id="Bakery">Bakery</button>
        </div>
      </h3>

    </div></div>

    <div class="container">
      <div class="shop-content" id="shopContent">
      



    </div>
  </div>

 <!-- Footer ----------------------------------------------------------------------------->
 <footer>
  <section class="footer" id="foot">
      <div class="foot-row">
          <div class="col22">
              <img src="images\greenie-logo.png" class="logo2">
              <p>
                  Greenie, Your local supermarket for fresh veggies, fruits, and bakery delights. Experience a
                  quick and wholesome shopping spree with our quality, sustainable selections.
                  <br><br><b>Good Food - Good Life...</b>
              </p>
          </div>
          <div class="col22">
              <h3>Office</h3>
              <p>
                  Jaykay Marketing Services Pvt Ltd.
                  No:148, Vauxhall Street, Colombo 2,
                  Sri Lanka.
              </p>
              <p class="email-id">customer@greenie.lk</p>
              <h4>+94 11 2230125</h4>
          </div>
          <div class="col22">
              <h3>Links</h3>
              <ul>
                  <li><a href="">Home</a></li>
                  <li><a href="">Best Sellers</a></li>
                  <li><a href="">Products</a></li>
                  <li><a href="">Categories</a></li>
                  <li><a href="">Contact Us</a></li>
                  <li><a href="">My Account</a></li>
              </ul>
          </div>
          <div class="col22">
              <h3>Subscribe To Our News</h3>
              <form>
                  <i class="fa-regular fa-envelope"></i>
                  <input type="email" placeholder="Enter your email Here" required>
                  <button type="submit"><i class="fa-solid fa-arrow-right"></i></button>
              </form>
              <div class="social-icons">
                  <i class="fa-brands fa-facebook"></i>
                  <i class="fa-brands fa-whatsapp"></i>
                  <i class="fa-brands fa-twitter"></i>
                  <i class="fa-brands fa-telegram"></i>
              </div>
          </div>
      </div>
  </section>
</footer>


  <script src="app.js"></script>
</body>
</html>
