<%@ page import="com.mvcspring.models.Hotels" %>
<%@ page import="com.mvcspring.controller.root.HotelController" %>
<%@ page import="java.util.List" %>
<%@ page import="com.mvcspring.utils.FileUploadPath" %>
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
        .background-container{
            background-image: url(${pageContext.request.contextPath}/resources/images/2.jpg);
        }
  </style>
</head>
<body>

<jsp:include page="/pages/user/header.jsp" />

      <div class="background-container overflow-hidden">
        <div>
            <span class="text1 h2 position-absolute ">Enjoy Your Dream Vacation </span>
            <span class="text2 h5 position-absolute text-white">Lorem ipsum dolor sit amet, consectetur adipiscing elit. <br>
                Maecenas sed diam eget dolor dictum consectetur. <br>
                Curabitur vulputate ligula id sem convallis facilisis. </span>
           
          </div>
      </div>
        <div class="hero-image"></div>
        <div class="container p-5">

            <div class="card-container">

                <%

                    HotelController hotelController = new HotelController();

                    List<Hotels> hotelsList = hotelController.getAll();
                    int limit = 0;
                    for(Hotels hotel: hotelsList){
                        if(limit < 5){
                %>
                <div class="card">
                    <img class="card-img-top" src="<%=FileUploadPath.directoryName()+"/"+hotel.getHotel_image_name()+"."+hotel.getHotel_image_ext()%>"
                         width="400px" height="250px" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title"><%=hotel.getHotel_name()%></h5>
                        <p class="card-text"><%=hotel.getHotel_description()%></p>
                        <a href="${pageContext.request.contextPath}/form?user_id=${login.getId()}&hotel_id=<%=hotel.getHotel_id()%>" class="btn btn-primary">BOOK</a>
                    </div>
                </div>
                <% limit++; } else{
                    break;
                }%>
                <%}%>

            </div>
</div>
</body>
</html>