<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Management - Manager</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/all.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/manager.css">

    <style>

  </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light ">
        <div class="container-fluid">
            <a class="navbar-brand" href="adminAddHotel.jsp">Home</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" >
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link " aria-current="page" href="adminAddHotel.jsp">AddHotels </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="manager.jsp">Manger User </a>
              </li>
              
              
          </div>
        </div>
        <div class="navbar-collapse">
          <ul class="navbar-nav me-auto">
              <li class="nav-item">
                  <a class="nav-link" href="profile.html">
                      <div class="profile-photo">
                          <img src="image/10.jpg" alt="Profile Photo" class="img-fluid">
                      </div>
                  </a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="adminLogin.jsp">Logout</a>
              </li>
          </ul>
      </div>
      </nav>
  <div class="container">
    <div class="row">
      <div class="col-md-6 mx-auto">
        <div class="user-card">
          <img src="image/9.jpg" alt="User 1" class="user-photo">
          <h5 class="user-name">John Doe</h5>
          <button class="btn btn-danger delete-button">Delete</button>
        </div>
        <div class="user-card">
          <img src="image/5.jpg" alt="User 2" class="user-photo">
          <h5 class="user-name">Jane Smith</h5>
          <button class="btn btn-danger delete-button">Delete</button>
        </div>
        <div class="user-card">
          <img src="image/6.jpg" alt="User 3" class="user-photo">
          <h5 class="user-name">Michael Johnson</h5>
          <button class="btn btn-danger delete-button">Delete</button>
        </div>
      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
