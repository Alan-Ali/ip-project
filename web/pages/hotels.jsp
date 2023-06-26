<!DOCTYPE html>
<html>
<head>
  <title>Hotel Page</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/all.css">

</head>
<body>
  <jsp:include page="/pages/header.jsp"/>
  <div class="container mt-5">
    <div class="row">
      <div class="col-md-6">
        <div class="hotel-card">
          <div class="image-container">
            <img src="${pageContext.request.contextPath}/resources/images/10.jpg" alt="Hotel 1">
          </div>
          <div class="content">
            <h4 class="text-center">Hotel 1</h4>
            <p class="text-center">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tristique gravida leo, eu fermentum tortor elementum ac.</p>
            <div class="star-rating">
              <span>&#9733;&#9733;&#9733;&#9733;&#9734;</span>
            </div>
            <a href="form.jsp" class="btn btn-primary booking-button">BOOK</a>
            
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="hotel-card">
          <div class="image-container">
            <img src="${pageContext.request.contextPath}/resources/images/9.jpg" alt="Hotel 2">
          </div>
          <div class="content">
            <h4 class="text-center">Hotel 2</h4>
            <p class="text-center">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tristique gravida leo, eu fermentum tortor elementum ac.</p>
            <div class="star-rating">
              <span>&#9733;&#9733;&#9734;&#9734;&#9734;</span>
            </div>
            <a href="form.jsp" class="btn btn-primary booking-button">BOOK</a>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-6">
        <div class="hotel-card">
          <div class="image-container">
            <img src="${pageContext.request.contextPath}/resources/images/5.jpg" alt="Hotel 3">
          </div>
          <div class="content">
            <h4 class="text-center">Hotel 3</h4>
            <p class="text-center">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tristique gravida leo, eu fermentum tortor elementum ac.</p>
            <div class="star-rating">
              <span>&#9733;&#9733;&#9733;&#9733;&#9733;</span>
            </div>
            <a href="form.jsp" class="btn btn-primary booking-button">BOOK</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>