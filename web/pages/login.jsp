
<%--
Created by IntelliJ IDEA.
User: user
Date: 6/11/2023
Time: 10:23 PM
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Hotel Booking - Login</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/pages/login.css">
  <style>
    body{
      background-image: url("${pageContext.request.contextPath}/resources/images/9.jpg");
    }
    </style>
</head>
<body>
  <div class="container-">
    <h2>Login</h2>
    <form action="" method="post">
      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" class="form-control" id="email" name="email" required>
      </div>
      <div class="form-group">
        <label for="password">Password</label>
        <input type="password" class="form-control" id="password" name="password" required>
      </div>
      <div class="form-group">
        <button type="submit" class="btn btn-primary btn-block">Login</button>
      </div>
    </form>
    <div class="create-account">
      <a href="${pageContext.request.contextPath}/signup">Create an account</a>
    </div>
  </div>
  
  <script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.bundle.js"></script>
</body>
</html>
