<%-- 
    Document   : signup
    Created on : Dec 23, 2023, 8:52:18 PM
    Author     : Dell
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
            a{
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <header class="header">
            <a href="index.jsp" class="logo"><i class="fas fa-shopping-basket"></i> Greenie</a>
        </header>
        <div class="wrapper">
            <h1>Create Account</h1>
            <p>Enter the details to create an<br>Account to shop online</p>
            <div>
                <p class="alrdy-reg">Already Registered?</p>
                <a href="login.jsp"><button type="submit" class="reg-btn">Click here to LOGIN!</button></a>
            </div>
            <div class="trouble">
                <p>Have trouble loggin in?<br>Call us on <a href="#">0112230125</a><br>(Daily Operating Hours 8.00 a.m<br>
                    to 8.00 p.m)</p>
            </div>
        </div>
        <div class="wrapper2">
         <form action="SendOTPServlet" method="post">
            <div class="reg-sec-1">
                <div class="input-box">
                    <h3>Enter Your Email Address</h3>
                    <input class="regnumb" type="text" placeholder="Email" required>
                    <div class="tip">
                        <i class="fa-solid fa-circle-info"></i>
                        <p class="infoOTP">You will receive an OTP code to the mentioned email address.</p>
                    </div>

                </div>



                <div class="input-box">
                    <h3>Password</h3>
                    <input type="password" name="password" placeholder="Password" required>
                    <i class="fa-regular"></i>
                    <div class="forg"><a href="#">Forgot Password?</a></div>
                </div>
            </div>
            <button type="submit" class="reg-vrify-btn">VERIFY EMAIL</button>
        
             </form>
            <hr class="divider">
            <%
        String otpError = (String) session.getAttribute("otpError");
        session.removeAttribute("otpError"); // Clear the attribute after use
    %>

    <% if (otpError != null) { %>
         <div class="alert alert-danger" role="alert">
            <%= otpError %>
         </div>
    <% } %>
            <form action="VerifyOTPServlet" method="post">
                <div class="reg-sec-2">
                    <div class="input-box2">
                        <h3>Enter Verification Code</h3>
                        <input class="otp" type="text" placeholder="Verification Code" required>
                    </div>
                    <div class="input-box">
                        <button type="submit" class="submt-btn">SUBMIT</button>
                    </div>
                </div>
            </form>
        </div>
    
        <script src="js/signup.js"></script>
    </body>
</html>