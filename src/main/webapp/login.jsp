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
</head>
<body>
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
    <div class="wrapper2">
        <div class="sec-1">
            <div class="input-box">
                <h3>Email</h3>
                <input type="text" placeholder="Email" required>
                <div class="tip">
                    <i class="fa-solid fa-circle-info"></i>
                    <p class="infoP">New here? Sign up with your email/phone number to get started!</p>
                </div>
            </div>
            <div class="input-box">
                <h3>Password</h3>
                <input type="password" placeholder="Password" required>
                <i class="fa-regular fa-eye-slash"></i>
                <div class="forg"><a href="#">Forgot Password?</a></div>
            </div>
        </div>
        <button type="submit" class="log-btn">LOGIN</button>
        <hr class="divider">
        <div class="log-w-phone"><h3>Or login with your phone number</h3></div>

        <div class="sec-2">
            <div class="input-box">
                <h3>Enter your Mobile Number</h3>
                <input type="text" placeholder="Sri Lanka | 07XXXXXXXXX" required>
            </div>
            <div class="input-box">
                <button type="submit" class="vrify-btn">VERIFY NUMBER</button>
            </div>
        </div>
    </div>
    <script src="js/login.js"></script>
</body>
</html>

