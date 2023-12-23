<%-- 
    Document   : signup
    Created on : Dec 23, 2023, 8:52:18 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <div class=container>
        <div class="left">
            <h4>Create Account</h4>
            <p>Enter the details to create an<br> account to shop online</p>

            <p>Have trouble logging in?<br>Call us on <spam>0112230125</spam>
            </p>

            <P>(Daily operation hours 8.00a.m to 8.00p.m)</P>
        </div>
        <div class="right">
            <label class="num">Enter Your Mobile Number</label><br>
            <input type="text" name="monile" placeholder="Sri Lnaka |07xxxxxxxx" class=numinput><input type="sbmit"
                value="Verify Number" class="vnum">
            <br>
            <br>
            <br>
            <label class="vcode">Verification Code</label>
            <input type="text" name="code" placeholder="Verification code" class=cinput> <input type="submit"
                value="Submit" class="sub">
        </div>
    </div>
    </body>
</html>
