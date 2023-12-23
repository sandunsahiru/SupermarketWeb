<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Green Online</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="home.css">
    <script src="https://kit.fontawesome.com/48ecc564e3.js" crossorigin="anonymous"></script>
</head>

<body>
    <!-- Header ----------------------------------------------------------------------------->
    <header class="header">
        <a href="#" class="logo"><i class="fas fa-shopping-basket"></i> Greenie</a>

        <nav class="navbar">
            <a href="#home">home</a>
            <a href="#bestsellers">best sellers</a>
            <a href="#products">products</a>
            <a href="#categories">categories</a>
        </nav>

        <div class="icons">
            <div class="fas fa-bars" id="menu-btn"></div>
            <div class="fas fa-search" id="search-btn"></div>
            <div class="fas fa-shopping-cart" id="cart-btn"></div>
            <div class="fas fa-user" id="login-btn"></div>
        </div>

        <form action="" class="search-form">
            <input type="search" id="search-box" placeholder=" search here...">
            <label for="search-box" class="fas fa-search"></label>
        </form>

        <div class="shopping-cart">
            <div class="box">
                <i class="fas fa-trash"></i>
                <img src="img/fruits/watermelon.jpeg" alt="" width="100" height="25">
                <div class="content">
                    <h3>watermelon</h3>
                    <span class="price">Rs. 420.00</span><br>
                    <span class="quantity">qty : 1</span>
                </div>
            </div>

            <div class="box">
                <i class="fas fa-trash"></i>
                <img src="img/fruits/papaya.jpeg" alt="" width="100" height="25">
                <div class="content">
                    <h3>Papaya</h3>
                    <span class="price">Rs. 170.00</span><br>
                    <span class="quantity">qty : 1</span>
                </div>
            </div>

            <div class="box">
                <i class="fas fa-trash"></i>
                <img src="img/fruits/Bananas.jpeg" alt="" width="100" height="25">
                <div class="content">
                    <h3>Banana</h3>
                    <span class="price">Rs. 370.00</span><br>
                    <span class="quantity">qty : 1</span>
                </div>
            </div>

            <div class="total">total: Rs. 960.00</div>
            <a href="#" class="btn">checkout</a>
        </div>
    </header>

    <!-- Home Page ----------------------------------------------------------------------------->
    <section class="container" id="slider">
        <div class="slider-wrapper">
            <div class="slider">
                <img id="slide1" src="img/slider/img11.jpg" alt="veg" />
                <img id="slide2" src="img/slider/img22.jpg" alt="meat" />
                <img id="slide3" src="img/slider/img33.jpg" alt="bread" />
                <img id="slide4" src="img/slider/img44.jpg" alt="beans" />
            </div>
            <div class="slider-nav">
                <a href="#slide1"></a>
                <a href="#slide2"></a>
                <a href="#slide3"></a>
                <a href="#slide4"></a>
            </div>
        </div>

        <div class="content-overlay">
            <h3>Nourish Your <span>Lifestyle</span> with Freshness!</h3>
            <p>Elevate your lifestyle with our handpicked selection of fresh and organic products.</p>
            <a href="#" class="btn">shop now</a>
        </div>
    </section>

    <!-- Labels ----------------------------------------------------------------------------->
    <div class="row">
        <div class="column">
            <img src="img/labels/lb1.png">
        </div>
        <div class="column">
            <img src="img/labels/lb2.png">
        </div>
        <div class="column">
            <img src="img/labels/lb3.png">
        </div>
        <div class="column">
            <img src="img/labels/lb4.png">
        </div>
    </div>


    <!-- Best Selling ----------------------------------------------------------------------------->
    <section class="bestsellers" id="bestsellers">
        <h1 class="heading">our<span>best sellers</span></h1>
        <div class="box-container">
            <div class="box">
                <img src="img/best-sellers-and-bakery-category/1top_crust_bread.png.jpg" alt="" width="250"
                    height="200">
                <h2>top crust bread 450g</h2>
                <h2>rs. 150.00</h2>
                <button class="btn3">Add to cart <i class="fa-solid fa-cart-shopping"></i></button>
            </div>

            <div class="box">
                <img src="img/best-sellers-and-bakery-category/french_bread.png.jpg" alt="" width="250" height="200">
                <h2>french bread</h2>
                <h2>rs. 300.00</h2>
                <button class="btn3">Add to cart <i class="fa-solid fa-cart-shopping"></i></button>
            </div>

            <div class="box">
                <img src="img/best-sellers-and-bakery-category/Tomato_je.jpg" alt="" width="250" height="200">
                <h2>Tomato 500g</h2>
                <h2>rs. 410.00</h2>
                <button class="btn3">Add to cart <i class="fa-solid fa-cart-shopping"></i></button>
            </div>
        </div>
        <div class="box-container">
            <div class="box">
                <img src="img/best-sellers-and-bakery-category/CornCorb-scaled.jpg" alt="" width="250" height="200">
                <h2>Corn Cob 2Pcs</h2>
                <h2>rs. 180.00</h2>
                <button class="btn3">Add to cart <i class="fa-solid fa-cart-shopping"></i></button>
            </div>

            <div class="box">
                <img src="img/best-sellers-and-bakery-category/alimentarium_kiwis_0.jpg" alt="" width="250"
                    height="200">
                <h2>Kiwi 500g</h2>
                <h2>rs. 320.00</h2>
                <button class="btn3">Add to cart <i class="fa-solid fa-cart-shopping"></i></button>
            </div>

            <div class="box">
                <img src="img/best-sellers-and-bakery-category/dinner-bun.jpg" alt="" width="250" height="200">
                <h2>dinner bun 3s</h2>
                <h2>rs. 170.00</h2>
                <button class="btn3">Add to cart <i class="fa-solid fa-cart-shopping"></i></button>
            </div>
        </div>
    </section>

    <!-- Categories ----------------------------------------------------------------------------->
    <section class="categories" id="categories">
        <h1 class="heading">product<span>categories</span></h1>
        <div class="box-container">
            <div class="box">
                <img src="img/Categories/veges.jpg" alt="" width="250" height="200">
                <h2>Vegetables</h2>
                <a href="#" class="btn2">shop now</a>
            </div>

            <div class="box">
                <img src="img/Categories/fruits.jpg" alt="" width="250" height="200">
                <h2>fresh fruits</h2>
                <a href="#" class="btn2">shop now</a>
            </div>

            <div class="box">
                <img src="img/Categories/bread.jpg" alt="" width="250" height="200">
                <h2>bakery</h2>
                <a href="#" class="btn2">shop now</a>
            </div>
        </div>
    </section>

    <!-- Footer ----------------------------------------------------------------------------->
    <footer>
        <section class="footer" id="foot">
            <div class="foot-row">
                <div class="col22">
                    <img src="img/greenie-logo.png" class="logo2">
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
    <script src="home.js"></script>
</body>

</html>
