<%-- 
    Document   : contactus
    Created on : Dec 31, 2023, 3:56:37 PM
    Author     : ASUS
--%>
<%
    HttpSession existingSession = request.getSession(false); // Get session without creating a new one
    String userEmail = existingSession != null ? (String) existingSession.getAttribute("userEmail") : null;
%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <meta charset='utf-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <title>Contact US</title>
        <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="home.css"> 
        <script src="https://kit.fontawesome.com/48ecc564e3.js" crossorigin="anonymous"></script>
        <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        <style>::-webkit-scrollbar {
                width: 8px;
            }
            /* Track */
            ::-webkit-scrollbar-track {
                background: #f1f1f1;
            }

            /* Handle */
            ::-webkit-scrollbar-thumb {
                background: #888;
            }

            /* Handle on hover */
            ::-webkit-scrollbar-thumb:hover {
                background: #555;
            }
            @import url('https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800,900|Rubik:300,400,500,700,900');

            *
            {

                -webkit-font-smoothing: antialiased;
                -webkit-text-shadow: rgba(0,0,0,.01) 0 0 1px;
                text-shadow: rgba(0,0,0,.01) 0 0 1px;
            }
            body
            {
                font-family: 'Rubik', sans-serif;
                font-size: 14px;
                font-weight: 400;
                background: #fff;
                color: #000000;
                margin-top: 10px;
            }
            div
            {
                display: block;
                position: relative;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
            }



            h1, h2, h3, h4, h5, h6
            {
                font-family: 'Rubik', sans-serif;
                font-weight: 500;
                -webkit-font-smoothing: antialiased;
                -webkit-text-shadow: rgba(0,0,0,.01) 0 0 1px;
                text-shadow: rgba(0,0,0,.01) 0 0 1px;
            }


            .button
            {
                display: inline-block;
                background: #97cbfa;
                border-radius: 5px;
                height: 48px;
                -webkit-transition: all 200ms ease;
                -moz-transition: all 200ms ease;
                -ms-transition: all 200ms ease;
                -o-transition: all 200ms ease;
                transition: all 200ms ease;
            }
            .button a
            {
                display: block;
                font-size: 18px;
                font-weight: 400;
                line-height: 48px;
                color: #FFFFFF;
                padding-left: 35px;
                padding-right: 35px;
            }
            .button:hover
            {
                opacity: 0.8;
            }

            .contact_info
            {
                width: 100%;
                padding-top: 70px;
                margin-top: 20px;
            }
            .contact_info_item
            {
                width: calc((100% - 60px) / 3);
                height: 100px;
                border: solid 1px #e8e8e8;
                box-shadow: 0px 1px 5px rgba(0,0,0,0.1);
                padding-left: 32px;
                padding-right: 15px;
            }
            .contact_info_image
            {
                width: 35px;
                height: 35px;
                text-align: center;
            }
            .contact_info_image img
            {
                max-width: 100%;
            }
            .contact_info_content
            {
                padding-left: 17px;
            }
            .contact_info_title
            {
                font-weight: 500;
            }
            .contact_info_text
            {
                font-size: 12px;
                color: rgba(0,0,0,0.5);
            }



        </style>
    </head>
    <body className='snippet-body'>
        <!-- Header Start -->
        <header class="header">
            <a href="index.jsp" class="logo"><i class="fas fa-shopping-basket"></i> Greenie</a>

            <nav class="navbar">
                <a href="index.jsp">home</a>
                <a href="index.jsp#bestsellers">best sellers</a>
                <a href="AllProduct.jsp">products</a>
                <a href="index.jsp#categories">categories</a>
            </nav>

            <div class="icons">
                <div class="fas fa-bars" id="menu-btn"></div>
                <div class="fas fa-search" id="search-btn"></div>
                <div class="fas fa-shopping-cart" id="cart-icon"></div>
                <% if (userEmail != null) {%>
                <!-- User is logged in --> 
                <div class="dropdown">
                    <div class="fas fa-user" id="login-btn">
                        <ul class="drop-down">
                            <li><a href="#">My Account</a></li>
                            <li><a href="#">Order</a></li>
                            <li><a href="#">Address</a></li>
                            <li><a href="#">Log Out</a></li>
                        </ul>
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
<!-- Header End -->
<div class="contact_info">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                <div class="contact_info_container d-flex flex-lg-row flex-column justify-content-between align-items-between">

                    <!-- Contact Item -->
                    <div class="contact_info_item d-flex flex-row align-items-center justify-content-start">
                        <div class="contact_info_image"><img src="https://img.icons8.com/office/24/000000/iphone.png" alt=""></div>
                        <div class="contact_info_content">
                            <div class="contact_info_title">Phone</div>
                            <div class="contact_info_text">+94 11 2230125</div>
                        </div>
                    </div>

                    <!-- Contact Item -->
                    <div class="contact_info_item d-flex flex-row align-items-center justify-content-start">
                        <div class="contact_info_image"><img src="https://img.icons8.com/ultraviolet/24/000000/filled-message.png" alt=""></div>
                        <div class="contact_info_content">
                            <div class="contact_info_title">Email</div>
                            <div class="contact_info_text">customer@greenie.lk</div>
                        </div>
                    </div>

                    <!-- Contact Item -->
                    <div class="contact_info_item d-flex flex-row align-items-center justify-content-start">
                        <div class="contact_info_image"><img src="https://img.icons8.com/ultraviolet/24/000000/map-marker.png" alt=""></div>
                        <div class="contact_info_content">
                            <div class="contact_info_title">Address</div>
                            <div class="contact_info_text">Jaykay Marketing Services Pvt Ltd.
                                No:148, Vauxhall Street, Colombo 2,
                                Sri Lanka.</div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

<!-- Contact Form -->

<div class="container mt-4">
    <div class="row">
        <div class="col-lg-10 offset-lg-1">
            <h2 class="mb-4">Get in Touch</h2>
            <form action="#" id="contact_form">
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <input type="text" class="form-control" id="contact_form_name" placeholder="Your name" required>
                    </div>
                    <div class="form-group col-md-4">
                        <input type="email" class="form-control" id="contact_form_email" placeholder="Your email" required>
                    </div>
                    <div class="form-group col-md-4">
                        <input type="text" class="form-control" id="contact_form_phone" placeholder="Your phone number">
                    </div>
                </div>
                <div class="form-group">
                    <textarea class="form-control" id="contact_form_message" rows="4" placeholder="Message" required></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Send Message</button>
            </form>
        </div>
    </div>
</div>


<script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
<script type='text/javascript'>var myLink = document.querySelector('a[href="#"]');
    myLink.addEventListener('click', function (e) {
        e.preventDefault();
    });</script>
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
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="index.jsp#bestsellers">Best Sellers</a></li>
                    <li><a href="AllProduct.jsp">Products</a></li>
                    <li><a href="feedback.jsp">Feedback</a></li>
                    <li><a href="contactus.jsp">Contact Us</a></li>
                    <li><a href="login.jsp">My Account</a></li>
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
