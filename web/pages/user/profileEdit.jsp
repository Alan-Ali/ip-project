<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Edit Profile</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/all.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/pages/user/profileEdit.css">
  <style>
    body {
      background-image: url('${pageContext.request.contextPath}/resources/images/9.jpg');
      background-repeat: no-repeat;
      background-size: cover;
      background-color: #f2f2f2;
    }


  </style>
</head>
<body>

    <jsp:include page="/pages/user/header.jsp"/>

  <div class="container">
    <div class="form-container">
      <h1 class="text-center">Edit Profile</h1>

      <form action="${pageContext.request.contextPath}/user/updateWithImage" method="POST" enctype="multipart/form-data">
        <div class="mb-3">
          <label for="name" class="form-label">Name:</label>
          <input type="text" id="name" name="username" class="form-control" required>
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
          <input type="file" id="photo" name="file" class="form-control">
        </div>
        <input type="hidden" name="id" value="${login.getId()}">
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
