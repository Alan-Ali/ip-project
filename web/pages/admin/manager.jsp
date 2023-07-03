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
<jsp:include page="/pages/admin/header.jsp"/>
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
