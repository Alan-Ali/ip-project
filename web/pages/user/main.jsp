<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/all.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/pages/user/main.css">
    <title>Document</title>
    <style>
        body{
            background-image: url(${pageContext.request.contextPath}/resources/images/2.jpg);
        }
  </style>
</head>
<body>

<jsp:include page="/pages/user/header.jsp" />

      <div class="background-container ">
        <div>
            <span class="text1 h2 position-absolute ">Enjoy Your Dream Vacation </span>
            <span class="text2 h5 position-absolute text-white">Lorem ipsum dolor sit amet, consectetur adipiscing elit. <br>
                Maecenas sed diam eget dolor dictum consectetur. <br>
                Curabitur vulputate ligula id sem convallis facilisis. </span>
           
          </div>
      </div>
        <div class="hero-image"></div>
       
        <div class="container">
           
            <div class="card-container">
                <div class="card">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/abu-sana.jpg" width="400px" height="250px" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Abu Sana</h5>
                      <p class="card-text">Set 10 km from Chavi Land, Abu Sanaa Hotel offers 4-star accommodation in As Sulaymānīyah and has a bar.</p>
                      <a href="${pageContext.request.contextPath}/form" class="btn btn-primary">BOOK</a>
                    </div>
                  </div>
                  <div class="card">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/grand2.jpg" width="400px" height="250px" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Grand Millennium</h5>
                      <p class="card-text">The Grand Millennium Sulaimani Hotel is a 5-star hotel, offering free WiFi in all areas,
                        spa and fitness facilities, bars and restaurants serving international cuisine. It features an indoor pool.</p>
                      <a href="${pageContext.request.contextPath}/form" class="btn btn-primary">BOOK</a>
                    </div>
                  </div>
                  
                  <div class="card">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/titanic.webp" width="400px" height="250px" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Titanic Hotel & SPA</h5>
                      <p class="card-text">Located in Al Sulaimaniyah-Kurdistan, Titanic Hotel and spa offers ultimate accommodation, 
                        excellent meals with live music at dinner and special events. Free private parking is available on site.</p>
                      <a href="${pageContext.request.contextPath}/form" class="btn btn-primary">BOOK</a>
                    </div>
                  </div>
                  <div class="card">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/rotana.webp" width="400px" height="250px" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Rotana</h5>
                      <p class="card-text">Situated in As Sulaymānīyah, 6.2 km from Chavi Land, Slemani Rotana features accommodation with a seasonal outdoor swimming pool,
                         free private parking, a fitness centre and a restaurant.</p>
                      <a href="${pageContext.request.contextPath}/form" class="btn btn-primary">BOOK </a>
                    </div>
                  </div>
                  <div class="card">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/ramada.jpg" width="400px" height="250px" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Ramada</h5>
                      <p class="card-text">Located in central Sulaymaniyah, this property offers modern accommodations.
                         It offers complimentary Wi-Fi in all areas, a free indoor swimming pool and fitness centre.</p>
                      <a href="${pageContext.request.contextPath}/form" class="btn btn-primary">BOOK</a>
                    </div>
                  </div>
            </div>
          </div>      
</body>
</html>