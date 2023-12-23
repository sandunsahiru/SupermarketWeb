<%-- 
    Document   : login
    Created on : Dec 23, 2023, 8:39:14 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel=stylesheet href="styles.css">
    <title>Login</title>
    </head>
    <body>
        <div class="container">
        <div class="Div-left">
            <h4>Log In</h4>
            <p>Shopped with us before?Log in with your details</p>

            <p>New Member?</p>
            <a href="signup.html" class="rbtn">Click Here to Register!</a>

            <p>Have trouble logging in?
                call us on 0112230125<br>
                (Daily Operating Hours 8.00a.m
                to 8.00p.m)
            </p>
        </div>
        <div class="Div-right">
            <form action="" method="post">
                <label class="mail">Emil</label> <label class="passw">Password</label>
                <br>
                <input type="text" name="email" placeholder="Email" class="etxtinput"> <input type="text" name="pass"
                    placeholder="Password" class="ptxtinput">
                <br>
                <input type="submit" value="LOGIN" class="sbtn">

                <hr>
                <p><u> Or Login With Your Mobile Number</u></p>
                <label>Enter Your Mobile Number</label><br>
                <input type="text" name="number" placeholder="SriLanka|07xxxxxxxx" class="number-input">
                <input type="submit" value="VERIFY NUMBER" class="vbtn">
            </form>
        </div>
    </div>
 </body>
</html>
