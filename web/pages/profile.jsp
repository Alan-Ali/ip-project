<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Website</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Website</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        /* Custom CSS for circular profile photo */
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
            <a class="navbar-brand" href="index.jsp">Home</a>
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
</body>
</html>


    <!-- Content of the website -->
    <!-- ... -->

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

    <div class="container">
        <!-- Profile section -->
        <section id="profile-section">
            <h1>User Profile</h1>
            <div class="row">
                <div class="col-md-4">
                    <img src="image/1.jpg" alt="User Photo" class="img-fluid">
                </div>
                <div class="col-md-8">
                    <h2>Name: John Doe</h2>
                    <p>Email: johndoe@example.com</p>
                    <p>Location: New York</p>
                    <!-- Add more user information as needed -->
                </div>
            </div>
        </section>

        <!-- Hotel booking section -->
        <section id="hotel-booking-section mt-">
            <h2 class="mt-5">My Bookings</h2>
            <div class="row mt-5">
                <!-- Hotel 1 -->
                <div class="col-md-6">
                    <div class="card">
                        <img src="image/9.jpg" class="card-img-top w-100 " alt="Hotel A">
                        <div class="card-body">
                            <h3 class="card-title">Hotel A</h3>
                            <p class="card-text">Location: City A</p>
                            <p class="card-text">Price: $100 per night</p>
                            <!-- Add more hotel information as needed -->
                            <!-- Add a button to book this hotel -->
                            
                        </div>
                    </div>
                </div>
                <!-- Hotel 2 -->
                <div class="col-md-6">
                    <div class="card">
                        <img src="image/10.jpg" class="card-img-top w-100 h-100" alt="Hotel B">
                        <div class="card-body">
                            <h3 class="card-title">Hotel B</h3>
                            <p class="card-text">Location: City B</p>
                            <p class="card-text">Price: $150 per night</p>
                            <!-- Add more hotel information as needed -->
                            <!-- Add a button to book this hotel -->
                           
                        </div>
                    </div>
                </div>
                <!-- Add more hotels as needed -->
            </div>
        </section>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


