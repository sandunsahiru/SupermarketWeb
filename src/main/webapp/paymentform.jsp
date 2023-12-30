<%-- 
    Document   : paymentform
    Created on : Dec 30, 2023, 6:41:00 AM
    Author     : ASUS
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.json.simple.JSONArray"%>
<%@ page import="org.json.simple.JSONObject"%>
<%@ page import="org.json.simple.parser.JSONParser"%>
<%
    String orderData = request.getParameter("orderData");
    JSONParser parser = new JSONParser();
    JSONArray cartItems = (JSONArray) parser.parse(orderData);
    double totalAmount = 0;
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <title>Snippet - BBBootstrap</title>
        <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css' rel='stylesheet'>
        <link href='https://use.fontawesome.com/releases/v5.7.2/css/all.css' rel='stylesheet'>
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
            @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif
            }

            p {
                margin: 0
            }

            .container {
                max-width: 900px;
                margin: 30px auto;
                background-color: #e8eaf6;
                padding: 35px;
            }

            .box-right {
                padding: 30px 25px;
                background-color: white;
                border-radius: 15px
            }

            .box-left {
                padding: 20px 20px;
                background-color: white;
                border-radius: 15px
            }

            .textmuted {
                color: #7a7a7a
            }

            .bg-green {
                background-color: #d4f8f2;
                color: #06e67a;
                padding: 3px 0;
                display: inline;
                border-radius: 25px;
                font-size: 11px
            }

            .p-blue {
                font-size: 14px;
                color: #1976d2
            }

            .fas.fa-circle {
                font-size: 12px
            }

            .p-org {
                font-size: 14px;
                color: #fbc02d
            }

            .h7 {
                font-size: 15px
            }

            .h8 {
                font-size: 12px
            }

            .h9 {
                font-size: 10px
            }

            .bg-blue {
                background-color: #dfe9fc9c;
                border-radius: 5px
            }

            .form-control {
                box-shadow: none !important
            }

            .card input::placeholder {
                font-size: 14px
            }

            ::placeholder {
                font-size: 14px
            }

            input.card {
                position: relative
            }

            .far.fa-credit-card {
                position: absolute;
                top: 10px;
                padding: 0 15px
            }

            .fas,
            .far {
                cursor: pointer
            }

            .cursor {
                cursor: pointer
            }

            .btn.btn-primary {
                box-shadow: none;
                height: 40px;
                padding: 11px
            }

            .bg.btn.btn-primary {
                background-color: transparent;
                border: none;
                color: #1976d2
            }

            .bg.btn.btn-primary:hover {
                color: #539ee9
            }

            @media(max-width:320px) {
                .h8 {
                    font-size: 11px
                }

                .h7 {
                    font-size: 13px
                }

                ::placeholder {
                    font-size: 10px
                }
            }</style>
    </head>
    <body className='snippet-body'>
        <div class="container">
            <div class="row m-0">
                <!-- Invoice Creation Section -->
                <div class="col-md-7 col-12">
                    <div class="box-right">
                        <div class="d-flex mb-2">
                            <p class="fw-bold">Create new invoice</p>
                        </div>
                        <div class="row">
                            <!-- Address Input -->
                            <div class="col-12 mb-2">
                                <div class="col-12">
                                    <p class="textmuted h8">First Name</p>
                                    <input class="form-control mb-3" type="text" placeholder="First Name">
                                </div>
                                <div class="col-12">
                                    <p class="textmuted h8">Last Name</p>
                                    <input class="form-control mb-3" type="text" placeholder="Last Name">
                                </div>
                                <div class="col-12">
                                    <p class="textmuted h8">Address</p>
                                    <input class="form-control mb-3" type="text" placeholder="Street Address">
                                </div>
                                <div class="col-12">
                                    <p class="textmuted h8">Telephone</p>
                                    <input class="form-control mb-3" type="text" placeholder="Telephone">
                                </div>
                                <div class="col-12">
                                    <p class="textmuted h8">City</p>
                                    <input class="form-control mb-3" type="text" placeholder="City">
                                </div>
                                <div class="col-12">
                                    <p class="textmuted h8">Country</p>
                                    <select class="form-control mb-3">
                                        <option>Sri Lanka</option>

                                    </select>
                                </div>
                                <div class="col-12">
                                    <p class="textmuted h8">Postal Code</p>
                                    <input class="form-control mb-3" type="text" placeholder="Postal Code">
                                </div>

                            </div>
                            <!-- Other Inputs (Project/Description, Issued on, Due on) -->
                            <!-- ... -->
                        </div>
                    </div>
                </div>
                <!-- Invoice Details Section -->
                <div class="col-md-5 col-12 ps-md-5 p-0">
                    <div class="box-left">
                        <div class="row m-0 border mb-3">
                            <!-- Table Headers -->
                            <div class="col-4 h8 ps-2 textmuted p-2">Items</div>
                            <div class="col-2 h8 text-center textmuted p-2">Qty</div>
                            <div class="col-3 h8 text-center textmuted p-2">Price</div>
                            <div class="col-3 h8 text-center textmuted p-2">Total</div>

                            <!-- Table Rows -->
                            <%
                                for (Object itemObject : cartItems) {
                                    JSONObject item = (JSONObject) itemObject;
                                    String title = (String) item.get("title");
                                    String price = (String) item.get("price");
                                    String qty = (String) item.get("qty");
                                    double itemTotal = Double.parseDouble(price.replace("Rs.", "").trim()) * Integer.parseInt(qty);
                                    totalAmount += itemTotal;
                            %>
                            <div class="col-4 h8 pe-0 py-2 border-bottom"><%= title%></div>
                            <div class="col-2 h8 text-center py-2 border-bottom"><%= qty%></div>
                            <div class="col-3 h8 text-center py-2 border-bottom"><%= price%></div>
                            <div class="col-3 h8 text-center py-2 border-bottom"><span>Rs.</span><%= itemTotal%></div>
                                    <% }%>
                        </div>

                        <!-- Displaying Total Amount -->
                        <div class="d-flex h7 mb-2">
                            <p>Total Amount</p>
                            <p class="ms-auto"><span>Rs.</span><%= totalAmount%></p>
                        </div>

                        <!-- PayPal SDK -->
                        <script src="https://www.paypal.com/sdk/js?client-id=AVma9oW45xiS0jVQeT-zKWwboVr2pK320w9xJwH-rKv3E3DwcY0JkDvipq1P1N-3IhmTJLYWzPs34lQf&currency=LKR"></script>

                        <!-- PayPal Payment Button -->
                        <div class="">
                            <p class="h7 fw-bold mb-1">Pay this Invoice</p>
                            <div id="paypal-button-container"></div>
                        </div>

                        <script>
                            paypal.Buttons({
                                createOrder: function (data, actions) {
                                   
                                    return actions.order.create({
                                        purchase_units: [{
                                                amount: {
                                                    value: '<%= totalAmount%>'
                                                }
                                            }]
                                    });
                                },
                                onApprove: function (data, actions) {

                                    return actions.order.capture().then(function (details) {

                                        alert('Transaction completed by ' + details.payer.name.given_name);

                                    });
                                }
                            }).render('#paypal-button-container');
                        </script>

                    </div>
                </div>

                <div class="mb-3">
                    <form action="CancelServlet" method="post">
                        <input type="submit" value="Cancel" class="btn btn-secondary"/>
                    </form>
                </div>

            </div>
        </div>

        <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js'></script>
        <script type='text/javascript' src='#'></script>
        <script type='text/javascript' src='#'></script>
        <script type='text/javascript' src='#'></script>
        <script type='text/javascript'>#</script>
        <script type='text/javascript'>var myLink = document.querySelector('a[href="#"]');
            myLink.addEventListener('click', function (e) {
                e.preventDefault();
            });</script>
    </body>
</html>
