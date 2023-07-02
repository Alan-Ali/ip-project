<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
  <html lang="en">
  <head>
    <title>Hotel Page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/all.css">

  </head>
  <body>

  <jsp:include page="/pages/user/header.jsp"/>

  <div class="container mt-5">
    <div class="row">
      <div class="col-md-6">
        <div class="hotel-card">
          <div class="image-container">
            <img src="image/abu-sana.jpg" alt="Hotel 1">
          </div>
          <div class="content">
            <h4 class="text-center">Abu Sana</h4>
            <p class="text-center">Set 10 km from Chavi Land, Abu Sanaa Hotel offers 4-star accommodation in As Sulaymānīyah and has a bar.
              This 4-star hotel offers a kids' club, room service and free WiFi. The property features a seasonal outdoor pool, fitness centre, sauna and garden.</p>
            <div class="star-rating">
              <span>&#9733;&#9733;&#9733;&#9733;&#9734;</span>
            </div>
            <a href="form.html" class="btn btn-primary booking-button">BOOK</a>

          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="hotel-card">
          <div class="image-container">
            <img src="image/grand2.jpg" alt="Grand-Millennium">
          </div>
          <div class="content">
            <h4 class="text-center">Grand Millennium</h4>
            <p class="text-center">The Grand Millennium Sulaimani Hotel is a 5-star hotel, offering free WiFi in all areas,
              spa and fitness facilities, bars and restaurants serving international cuisine. It features an indoor pool.</p>
            <div class="star-rating">
              <span>&#9733;&#9733;&#9733;&#9733;&#9733;</span>
            </div>
            <a href="form.html" class="btn btn-primary booking-button">BOOK</a>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-6">
        <div class="hotel-card">
          <div class="image-container">
            <img src="image/titanic.webp" alt="Titanic-Hotel">
          </div>
          <div class="content">
            <h4 class="text-center">Titanic Hotel & SPA</h4>
            <p class="text-center">Located in Al Sulaimaniyah-Kurdistan, Titanic Hotel and spa offers ultimate accommodation,
              excellent meals with live music at dinner and special events. Free private parking is available on site.</p>
            <div class="star-rating">
              <span>&#9733;&#9733;&#9733;&#9733;&#9733;</span>
            </div>
            <a href="form.html" class="btn btn-primary booking-button">BOOK</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  </body>
  </html>