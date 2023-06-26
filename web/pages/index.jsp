<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" 
    rel="stylesheet"
     integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" 
     crossorigin="anonymous">
    <link rel="stylesheet" href="text1.css">
    <title>Document</title>
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
      <div class="background-container ">
        <div>
            <span class="text1 h2 position-absolute ">Enjoy Your Dream Vacation </span>
            <span class="text2 h5 position-absolute text-white">Lorem ipsum dolor sit amet, consectetur adipiscing elit. <br>
                Maecenas sed diam eget dolor dictum consectetur. <br>
                Curabitur vulputate ligula id sem convallis facilisis. </span>
           
          </div>
      </div>
        <div class="hero-image"></div>
       
        <div class="container">
           
            <div class="card-container">
                <div class="card">
                    <img class="card-img-top" src="image/9.jpg" width="400px" height="250px" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Push Up</h5>
                      <p class="card-text">Primarily target the chest, shoulders, and triceps muscles. They are performed by lying 
                        face down on the ground with your hands placed shoulder-width apart and your feet together.</p>
                      <a href="form.jsp" class="btn btn-primary">BOOK</a>
                    </div>
                  </div>
                  <div class="card">
                    <img class="card-img-top" src="image/10.jpg"width="400px" height="250px" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Calf Raises</h5>
                      <p class="card-text">Calf raises are a type of exercise that involve raising your heels off the ground while keeping your toes on the ground. 
                        This movement specifically targets your calf muscles, which are located at the back of your lower leg</p>
                      <a href="form.jsp" class="btn btn-primary">BOOK</a>
                    </div>
                  </div>
                  
                  <div class="card">
                    <img class="card-img-top" src="image/6.jpg"width="400px" height="250px" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Squat</h5>
                      <p class="card-text">Squats are considered a vital exercise for increasing the strength and size of the lower body muscles as well as developing core strength.</p>
                      <a href="form.jsp" class="btn btn-primary">BOOK</a>
                    </div>
                  </div>
                  <div class="card">
                    <img class="card-img-top" src="image/5.jpg"width="400px" height="250px" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Wall Sit</h5>
                      <p class="card-text">Wall Sit is a simple and effective lower body exercise that primarily targets the quadriceps, hamstrings, and gluteal muscles.</p>
                      <a href="form.jsp" class="btn btn-primary">BOOK </a>
                    </div>
                  </div>
                  <div class="card">
                    <img class="card-img-top" src="image/7.jpg"width="400px" height="250px" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Sit Up</h5>
                      <p class="card-text">Situps are classic abdominal exercises done by lying on your back and lifting your torso. They use your body weight to strengthen
                         and tone the core-stabilizing abdominal muscles.</p>
                      <a href="form.jsp" class="btn btn-primary">BOOK</a>
                    </div>
                  </div>
            </div>
          </div>      
</body>
</html>