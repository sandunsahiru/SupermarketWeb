<%-- 
    Document   : feedback
    Created on : Dec 28, 2023, 12:53:09 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Form</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="feedback.css">
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
            <a href="index.jsp" class="logo"><i class="fas fa-shopping-basket"></i>Greenie</a>
        </header>
    <div class="wrapper">
        <h1>Enjoyed Shopping?</h1>
        <p>Please share us your feedback<br>Let others know more about Greenie!</p>
        <div class="reviews">
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
        </div>
        <div class="trouble">
            <p>Need customer care support?<br>Call us on <a href="#">0112230125</a><br>(Daily Operating Hours 8.00
                a.m<br>
                to 8.00 p.m)</p>
        </div>
    </div>
    <div class="wrapper2">
        <form action="SubmitFeedbackServlet" method="post">
            <div class="sec-1">
                <div class="input-box">
                    <h3>Enter Your Name</h3>
                    <input type="text" placeholder="Name" name="userName" required>
                    <div class="tip">
                        <i class="fa-solid fa-circle-info"></i>
                        <p class="infoP">Your name, email, and comment will be displayed on the homepage!</p>
                    </div>
                </div>
                <div class="input-box">
                    <h3>Enter Your Email</h3>
                    <input type="email" placeholder="Email" name="fuserEmail" required>
                </div>
            </div>


            <div class="sec-2">
                <div class="fee-box">
                    <h3>Share Your Feedback</h3>
                    <div class="rating">
                        <input type="number" name="rating" hidden>
                        <i class='fa-regular fa-star star'></i>
                        <i class='fa-regular fa-star star'></i>
                        <i class='fa-regular fa-star star'></i>
                        <i class='fa-regular fa-star star'></i>
                        <i class='fa-regular fa-star star'></i>
                    </div>
                    <textarea name="feed-comment" cols="30" rows="5" name="userFeedback" placeholder="Type Here..."></textarea>
                    <div class="btn-group">
                        <button type="submit" class="feedsub">Submit</button>
                        <button type="button" class="feedcanc" onclick="window.location.href='index.jsp';">Cancel</button>

                    </div>
                </div>

            </div>
        </form>
    </div>

    <script src="feedback.js"></script>
</body>


</html>
