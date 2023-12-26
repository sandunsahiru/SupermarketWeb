<%-- 
    Document   : signup
    Created on : Dec 23, 2023, 8:52:18 PM
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
        <h1>Create Account</h1>
        <p>Enter the details to create an<br>Account to shop online</p>
        <div>
            <p class="alrdy-reg">Already Registered?</p>
            <button type="submit" class="reg-btn">Click here to LOGIN!</button>
        </div>
        <div class="trouble">
            <p>Have trouble loggin in?<br>Call us on <a href="#">0112230125</a><br>(Daily Operating Hours 8.00 a.m<br>
                to 8.00 p.m)</p>
        </div>
    </div>
    <div class="wrapper2">
        <div class="reg-sec-1">
            <div class="input-box">
                <h3>Enter Your Mobile Number</h3>
                <input class="regnumb" type="text" placeholder="Sri Lanka | 07XXXXXXXXX" required>
                <div class="tip">
                    <i class="fa-solid fa-circle-info"></i>
                    <p class="infoOTP">You will receive an OTP code to the mentioned mobile number.</p>
                </div>
            </div>
            <div class="input-box">
                <button type="submit" class="reg-vrify-btn">VERIFY NUMBER</button>
            </div>
        </div>
        <hr class="divider">
        <div class="reg-sec-2">
            <div class="input-box2">
                <h3>Enter Verification Code</h3>
                <input class="otp" type="text" placeholder="Verification Code" required>
            </div>
            <div class="input-box">
                <button type="submit" class="submt-btn">SUBMIT</button>
            </div>
        </div>
    </div>
    <script src="js/signup.js"></script>
</body>
</html>