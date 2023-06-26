<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Page</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .form-container {
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-top: 20px;
            border-radius: 5px;
        }
        .profile-photo {
          width: 40px;
          height: 40px;
          border-radius: 50%;
          overflow: hidden;
      }
 
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light ">
        <div class="container-fluid">
            <a class="navbar-brand" href="main.jsp">Home</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" >
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link " aria-current="page" href="hotels.jsp">Hotels </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="about.jsp">About </a>
              </li>
              
              
          </div>
        </div>
        <div class="navbar-collapse">
          <ul class="navbar-nav me-auto">
              <li class="nav-item">
                  <a class="nav-link" href="profile.jsp">
                      <div class="profile-photo">
                          <img src="image/10.jpg" alt="Profile Photo" class="img-fluid">
                      </div>
                  </a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="login.html">Logout</a>
              </li>
          </ul>
      </div>
      </nav>
    <div class="container">
        <div class="form-container">
            <h1>Form Page</h1>
            <form>
                <div class="row">
                    <!-- Personal Information Section -->
                    <div class="col-md-6">
                        <h2>Personal Information</h2>
                        <div class="mb-3">
                            <label for="fullName" class="form-label">Full Name</label>
                            <input type="text" class="form-control" id="fullName" placeholder="Enter your full name" required>
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" placeholder="Enter your email" required>
                        </div>
                        <div class="mb-3">
                            <label for="address" class="form-label">Address</label>
                            <input type="text" class="form-control" id="address" placeholder="Enter your address" required>
                        </div>
                        <div class="mb-3">
                            <label for="city" class="form-label">City</label>
                            <input type="text" class="form-control" id="city" placeholder="Enter your city" required>
                        </div>
                    </div>
                    <!-- Payment Details Section -->
                    <div class="col-md-6">
                        <h2>Payment Details</h2>
                        <div class="mb-3">
                            <label for="cardType" class="form-label">Card Type</label>
                            <select class="form-select" id="cardType" required>
                                <option value="">Select card type</option>
                                <option value="visa">Visa</option>
                                <option value="mastercard">Mastercard</option>
                                <option value="amex">American Express</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="nameOnCard" class="form-label">Name on Card</label>
                            <input type="text" class="form-control" id="nameOnCard" placeholder="Enter name on card" required>
                        </div>
                        <div class="mb-3">
                            <label for="creditCardNumber" class="form-label">Credit Card Number</label>
                            <input type="text" class="form-control" id="creditCardNumber" placeholder="Enter credit card number" required>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="expMonth" class="form-label">Expiration Month</label>
                                    <input type="text" class="form-control" id="expMonth" placeholder="MM" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="expYear" class="form-label">Expiration Year</label>
                                    <input type="text" class="form-control" id="expYear" placeholder="YYYY" required>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="state" class="form-label">State</label>
                                    <input type="text" class="form-control" id="state" placeholder="Enter your state" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="zip" class="form-label">ZIP</label>
                                    <input type="text" class="form-control" id="zip" placeholder="Enter your ZIP code" required>
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="cvv" class="form-label">CVV</label>
                            <input type="text" class="form-control" id="cvv" placeholder="Enter CVV" required>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
