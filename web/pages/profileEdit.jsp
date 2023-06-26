<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Edit Profile</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/all.css">
  <style>
    body {
      background-image: url('image/9.jpg');
      background-repeat: no-repeat;
      background-size: cover;
      background-color: #f2f2f2;
    }

    .form-container {
      max-width: 400px;
      margin: 0 auto;
      background-color: #ffffff;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
      border-radius: 8px;
      padding: 20px;
      margin-top: 50px;
    }

    .form-label {
      font-weight: bold;
      margin-bottom: 8px;
    }

    .form-control {
      border-radius: 4px;
    }

    .form-submit {
      width: 100%;
      padding: 12px;
      background-color: #4CAF50;
      color: #ffffff;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }
  </style>
</head>
<body>

    <jsp:include page="/pages/header.jsp"/>

  <div class="container">
    <div class="form-container">
      <h1 class="text-center">Edit Profile</h1>

      <form action="process_form.php" method="POST" enctype="multipart/form-data">
        <div class="mb-3">
          <label for="name" class="form-label">Name:</label>
          <input type="text" id="name" name="name" class="form-control" required>
        </div>

        <div class="mb-3">
          <label for="email" class="form-label">Email:</label>
          <input type="email" id="email" name="email" class="form-control" required>
        </div>

        <div class="mb-3">
          <label for="location" class="form-label">Location:</label>
          <input type="text" id="location" name="location" class="form-control" required>
        </div>

        <div class="mb-3">
          <label for="photo" class="form-label">Upload Photo:</label>
          <input type="file" id="photo" name="photo" class="form-control">
        </div>

        <div class="mb-3">
          <label for="password" class="form-label">Password:</label>
          <input type="password" id="password" name="password" class="form-control" required>
        </div>

        <div class="text-center">
          <input type="submit" value="Save" class="form-submit btn btn-primary">
        </div>
      </form>
    </div>
  </div>

    <script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>
