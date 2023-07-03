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
<jsp:include page="/pages/admin/header.jsp"/>
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
