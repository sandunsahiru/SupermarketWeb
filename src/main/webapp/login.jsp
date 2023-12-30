<%-- 
    Document   : login
    Created on : Dec 23, 2023, 8:39:14 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Green Online</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
        <link rel="stylesheet" href="login.css">
        <style>
            .header .logo {
                font-size: 2.5rem;
                font-weight: bolder;
                color: #293326;
            }
            .header {
                position: fixed;
                top: 0;
                left: 0;
                right: 0;
                z-index: 1000;
                display: flex;
                align-items: center;
                justify-content: space-between;
                padding: 2rem 9%;
                margin-bottom: 5px;
            }
        </style>
    </head>
    <body>
        <header class="header">
            <a href="home-page.html" class="logo"><i class="fas fa-shopping-basket"></i>Greenie</a>
        </header>
        <div class="wrapper">
            <h1>Login</h1>
            <p>Shopped with us before?<br>Login with your credentials.</p>
            <div>
                <p class="new-memb">New Member?</p>
                <a href="signup.jsp"><button type="submit" class="reg-btn">Click here to Register!</button></a>
            </div>
            <div class="trouble">
                <p>Have trouble logging in?<br>Call us on <a href="#">0112230125</a><br>(Daily Operating Hours 8.00 a.m<br>
                    to 8.00 p.m)</p>
            </div>
        </div>
        <form action="LoginServlet" method="post">
            <div class="wrapper2">
                <div class="sec-1">
                    <div class="input-box">
                        <h3>Email</h3>
                        <input type="text" name="email" placeholder="Email" required>
                        <div class="tip">
                            <i class="fa-solid fa-circle-info"></i>
                            <p class="infoP">New here? Sign up with your email/phone number to get started!</p>
                        </div>
                    </div>
                    <div class="input-box">
                        <h3>Password</h3>
                        <input type="password" name="password" placeholder="Password" required>
                        <i class="fa-regular"></i>
                        <div class="forg"><a href="#">Forgot Password?</a></div>
                    </div>
                </div>
                <button type="submit" class="log-btn">LOGIN</button>
            </div>
        </form>

        <script src="js/login.js"></script>
    </body>
</html>

