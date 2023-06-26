<!DOCTYPE html>
<html>
<head>
  <title>Hotel Page</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <style>
    .hotel-card {
      margin-bottom: 20px;
      border: 1px solid #ddd;
      border-radius: 5px;
      overflow: hidden;
    }

    .hotel-card .image-container {
      width: 100%;
      height: 200px;
    }

    .hotel-card .image-container img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .hotel-card .content {
      padding: 10px;
    }

    .hotel-card .star-rating {
      text-align: right;
      color: gold;
      margin-top: 10px;
    }
    
    .hotel-card .booking-button {
      width: 100%;
      margin-top: 10px;
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
  <div class="container mt-5">
    <div class="row">
      <div class="col-md-6">
        <div class="hotel-card">
          <div class="image-container">
            <img src="image/10.jpg" alt="Hotel 1">
          </div>
          <div class="content">
            <h4 class="text-center">Hotel 1</h4>
            <p class="text-center">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tristique gravida leo, eu fermentum tortor elementum ac.</p>
            <div class="star-rating">
              <span>&#9733;&#9733;&#9733;&#9733;&#9734;</span>
            </div>
            <a href="form.jsp" class="btn btn-primary booking-button">BOOK</a>
            
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="hotel-card">
          <div class="image-container">
            <img src="image/9.jpg" alt="Hotel 2">
          </div>
          <div class="content">
            <h4 class="text-center">Hotel 2</h4>
            <p class="text-center">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tristique gravida leo, eu fermentum tortor elementum ac.</p>
            <div class="star-rating">
              <span>&#9733;&#9733;&#9734;&#9734;&#9734;</span>
            </div>
            <a href="form.jsp" class="btn btn-primary booking-button">BOOK</a>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-6">
        <div class="hotel-card">
          <div class="image-container">
            <img src="image/5.jpg" alt="Hotel 3">
          </div>
          <div class="content">
            <h4 class="text-center">Hotel 3</h4>
            <p class="text-center">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tristique gravida leo, eu fermentum tortor elementum ac.</p>
            <div class="star-rating">
              <span>&#9733;&#9733;&#9733;&#9733;&#9733;</span>
            </div>
            <a href="form.jsp" class="btn btn-primary booking-button">BOOK</a>
          </div>
        </div>
      </div>
