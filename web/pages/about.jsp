<!DOCTYPE html>
<html>
<head>
  <title>About Page</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <style>
    body {
      background-color: #f1f5f8;
    }

    .about-container {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .about-content {
      background-color: rgba(0, 123, 255, 0.7);
      padding: 30px;
      text-align: center;
      color: #fff;
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
  <div class="about-container ">
    <div class="about-content rounded-5">
      <h1 class="display-4">About Us</h1>
      <p class="lead">  At our hotel booking website, we strive to provide you with the ultimate online platform for all your accommodation needs.<br>
        We understand that finding the perfect hotel can be overwhelming, <br>
        which is why we are here to simplify the process and ensure your travel experience is exceptional.<br>
        Our mission is to connect you with a vast selection of hotels worldwide,<br>
        ranging from luxurious resorts to cozy boutique accommodations and budget-friendly options.<br>
        With our extensive network of trusted partners, we guarantee you'll find the ideal place to stay, no matter your destination or budget.<br>
        We are committed to delivering a seamless booking experience.<br>
        Our website features a user-friendly interface, intuitive search filters,<br>
        and detailed hotel descriptions with comprehensive amenities, room types, and customer reviews.<br>
        We believe in transparency, so you can make informed decisions and find the perfect match for your preferences.<br></p>
    </div>
  </div>
</body>
</html>
