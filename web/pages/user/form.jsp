<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Page</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/all.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/pages/user/form.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
    </style>
</head>
<body>

    <jsp:include page="/pages/user/header.jsp"/>

    <%
        int user_id = Integer.parseInt(request.getParameter("user_id"));
        int hotel_id = Integer.parseInt(request.getParameter("hotel_id"));
    %>

    <div class="container">
        <div class="form-container">
            <h1>Form Page</h1>
            <form action="${pageContext.request.contextPath}/booking/post-all" method="POST">
                <input type="hidden" value="<%=user_id%>" name="user_id">
                <input type="hidden" value="<%=hotel_id%>" name="hotel_id">

                <div class="row">
                    <!-- Personal Information Section -->
                    <div class="col-md-6">
                        <h2>Personal Information</h2>
                        <div class="mb-3">
                            <label for="fullName" class="form-label">Full Name</label>
                            <input type="text" class="form-control" id="fullName" name="fullname" placeholder="Enter your full name" required>
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
                        </div>
                        <div class="mb-3">
                            <label for="address" class="form-label">Address</label>
                            <input type="text" class="form-control" id="address" name="address" placeholder="Enter your address" required>
                        </div>
                        <div class="mb-3">
                            <label for="city" class="form-label">City</label>
                            <input type="text" class="form-control" id="city" name="city" placeholder="Enter your city" required>
                        </div>
                    </div>
                    <!-- Payment Details Section -->
                    <div class="col-md-6">
                        <h2>Payment Details</h2>
                        <div class="mb-3">
                            <label for="cardType" class="form-label">Card Type</label>
                            <select class="form-select" id="cardType" name="card_type" required>
                                <option value="" hidden selected>Select card type</option>
                                <option value="visa">Visa</option>
                                <option value="mastercard">Mastercard</option>
                                <option value="amex">American Express</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="nameOnCard" class="form-label">Name on Card</label>
                            <input type="text" class="form-control" id="nameOnCard" name="name_on_card" placeholder="Enter name on card" required>
                        </div>
                        <div class="mb-3">
                            <label for="creditCardNumber" class="form-label">Credit Card Number</label>
                            <input type="number" class="form-control" id="creditCardNumber" name="credit_card_number" placeholder="Enter credit card number" required>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="expMonth" class="form-label">Expiration Month</label>
                                    <input type="number" class="form-control" name="expiration_month" id="expMonth" placeholder="MM" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="expYear" class="form-label">Expiration Year</label>
                                    <input type="number" class="form-control" name="expiration_year" id="expYear" placeholder="YYYY" required>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="state" class="form-label">State</label>
                                    <input type="text" class="form-control" name="state" id="state" placeholder="Enter your state" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="zip" class="form-label">ZIP</label>
                                    <input type="number" class="form-control" name="zip" id="zip" placeholder="Enter your ZIP code" required>
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="cvv" class="form-label">CVV</label>
                            <input type="number" class="form-control" name="cvv" id="cvv" placeholder="Enter CVV" required>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
