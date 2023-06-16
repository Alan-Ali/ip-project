<!DOCTYPE html>
<html>
<head>
  <title>Hotel Booking - Sign Up</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/pages/signup.css">

  <style>
    body {
      background-image: url("${pageContext.request.contextPath}/resources/images/10.jpg");
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>Sign Up</h2>
    <form>
      <div class="form-group">
        <label for="username">Username</label>
        <input type="text" class="form-control" id="username" name="username" required>
      </div>
      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" class="form-control" id="email" name="email" required>
      </div>
      <div class="form-group">
        <label for="password">Password</label>
        <input type="password" class="form-control" id="password" name="password" required>
      </div>
      <div class="form-group">
        <label for="confirm-password">Confirm Password</label>
        <input type="password" class="form-control" id="confirm-password" name="confirm-password" required>
      </div>
      <div class="form-group">
        <button type="submit" class="btn btn-primary btn-block">Sign Up</button>
      </div>
    </form>
    <div class="create-account">
      <a href="login.html">Already have an account? Log In</a>
    </div>
  </div>
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
