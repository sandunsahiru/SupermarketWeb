<%
    HttpSession existingSession = request.getSession(false); // Get session without creating a new one
    String userEmail = existingSession != null ? (String) existingSession.getAttribute("userEmail") : null;
%>
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
            <a href="home-page.html" class="logo"><i class="fas fa-shopping-basket"></i> Greenie</a>

            <nav class="navbar">
                <a href="home-page.html">home</a>
                <a href="#bestsellers">best sellers</a>
                <a href="AllProduct.jsp">products</a>
                <a href="#categories">categories</a>
            </nav>

            <div class="icons">
                <div class="fas fa-bars" id="menu-btn"></div>
                <div class="fas fa-search" id="search-btn"></div>
                <div class="fas fa-shopping-cart" id="cart-icon"></div>
                <% if (userEmail != null) {%>
                <!-- User is logged in -->
                <div class="dropdown">
                <div class="fas fa-user" id="login-btn"></div>
                <div class="dropdown-content">
                    <a href="#">My Account</a>
                    <a href="#">Orders</a>
                    <a href="#">Address</a>
                    <a href="#">Logout</a>
                </div>
                </div> 

                <!--<div class="dropdown">
                    <button class="dropbtn">Welcome, <%= userEmail%></button>
                    <div class="dropdown-content">
                        <a href="account.jsp">My Account</a>
                        <a href="orders.jsp">Orders</a>
                        <a href="addresses.jsp">Addresses</a>
                        <a href="logoutServlet">Logout</a> <!-- Link to a Logout Servlet -->
            </div>
        </div> -->
        <% } else { %>
        <!-- User is not logged in -->
        <a href="login.jsp"><div class="fas fa-user" id="login-btn"></div></a>

        <% }%>
        <!-- <a href="login.jsp"><button class="login-btn">Login</button></a> -->
    </div>

    <form action="" class="search-form">
        <input type="search" id="search-box" placeholder=" search here...">
        <label for="search-box" class="fas fa-search"></label>
    </form>
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
        <a href="products-page.html" class="btn">shop now</a>
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

        <div class="box">
            <img src="img/Categories/grocery.jpg" alt="" width="250" height="200">
            <h2>grocery</h2>
            <a href="#" class="btn2">shop now</a>
        </div>
    </div>
</section>

<!-- Feedbacks ----------------------------------------------------------------------------->
<section class="feedbacks" id="feedbacks">
    <h1 class="cust-fed-head">Customer<span>Feedbacks</span></h1>
    <div class="feed-container">

        <!-- first feed ----------------------------------------------->
        <div class="f-box">
            <div class="box-top">
                <div class="profile">
                    <div class="profile-img">
                        <img src="img/profile-img.png">
                    </div>
                    <div class="name-user">
                        <strong>Samantha Deshapriya</strong>
                        <span>samanthadesh@gmail.com</span>
                    </div>
                </div>
                <div class="reviews">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-regular fa-star"></i> <!-- empty star -->
                </div>
            </div>
            <div class="feed-comment">
                <p>Wow its one of marvellous Greenie outlet in kandy city. It provides self service snack counter.
                    And juice bar. Good service and friendly environment. Plenty of parking available here. It's
                    close by to many valuable places around dangolla junction. Thank you for your amazing service.
                </p>
            </div>
        </div>

        <!-- second feed ----------------------------------------------->
        <div class="f-box">
            <div class="box-top">
                <div class="profile">
                    <div class="profile-img">
                        <img src="img/profile-img.png">
                    </div>
                    <div class="name-user">
                        <strong>Senarath Dunusinghe</strong>
                        <span>senedunu@outlook.com</span>
                    </div>
                </div>
                <div class="reviews">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                </div>
            </div>
            <div class="feed-comment">
                <p>A stop for almost all my grocery needs, I love this place because its convenient, clean and
                    attentive.
                    I must mention that most of the staff members are very young, but have a wonderful attitude and
                    are willing to do their job well.
                </p>
            </div>
        </div>

        <!-- third feed ----------------------------------------------->
        <div class="f-box">
            <div class="box-top">
                <div class="profile">
                    <div class="profile-img">
                        <img src="img/profile-img.png">
                    </div>
                    <div class="name-user">
                        <strong>Mahipala Hatharasinghe</strong>
                        <span>mahathr@gmail.com</span>
                    </div>
                </div>
                <div class="reviews">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-regular fa-star"></i> <!-- empty star -->
                    <i class="fa-regular fa-star"></i> <!-- empty star -->
                </div>
            </div>
            <div class="feed-comment">
                <p>Greenie Supermarket impresses with its ample parking space, making shopping hassle-free. Greenie
                    Supermarket not only offers a variety of products but also values convenience and ease for its
                    shoppers, making it a go-to destination for almost all your shopping requirements.
                </p>
            </div>
        </div>

        <!-- fourth feed ----------------------------------------------->
        <div class="f-box">
            <div class="box-top">
                <div class="profile">
                    <div class="profile-img">
                        <img src="img/profile-img.png">
                    </div>
                    <div class="name-user">
                        <strong>Nihal Kariyawasam</strong>
                        <span>ni.ka@yahoo.com</span>
                    </div>
                </div>
                <div class="reviews">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-regular fa-star"></i> <!-- empty star -->
                    <i class="fa-regular fa-star"></i> <!-- empty star -->
                    <i class="fa-regular fa-star"></i> <!-- empty star -->
                </div>
            </div>
            <div class="feed-comment">
                <p>Clean and organized but the only problem is the staff working aren?t that pleasant, some are fine
                    but some make us really disappointed and unhappy.
                </p>
            </div>
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
                    <li><a href="home-page.html">Home</a></li>
                    <li><a href="home-page.html#bestsellers">Best Sellers</a></li>
                    <li><a href="products-page.html">Products</a></li>
                    <li><a href="home-page.html#categories">Categories</a></li>
                    <li><a href="">Contact Us</a></li>
                    <li><a href="login-page.html">My Account</a></li>
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
<script src="js/home.js"></script>
</body>

</html>