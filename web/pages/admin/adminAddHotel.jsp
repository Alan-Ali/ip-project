<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add Hotels - Admin</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/all.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/adminAddHotel.css">
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
        <div class="card">
          <div class="card-header">
            <h4>Add Hotel</h4>
          </div>
          <div class="card-body">
            <form action="process_form.php" method="POST" enctype="multipart/form-data">
              <div class="mb-3">
                <label for="photo" class="form-label">Photo:</label>
                <input type="file" id="photo" name="photo" class="form-control" required>
              </div>

              <div class="mb-3">
                <label for="name" class="form-label">Name:</label>
                <input type="text" id="name" name="name" class="form-control" required>
              </div>

              <div class="mb-3">
                <label for="star" class="form-label">Star Rating:</label>
                <input type="number" id="star" name="star" class="form-control" required>
              </div>

              <div class="mb-3">
                <label for="description" class="form-label">Description:</label>
                <textarea id="description" name="description" class="form-control" required></textarea>
              </div>

              <div class="mb-3">
                <label for="cost" class="form-label">Cost:</label>
                <input type="number" id="cost" name="cost" class="form-control" required>
              </div>

              <div class="text-center">
                <input type="submit" value="Add Hotel" class="form-submit btn btn-primary">
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
