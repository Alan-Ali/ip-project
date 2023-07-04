<%@ page import="com.mvcspring.controller.root.HotelController" %>
<%@ page import="com.mvcspring.models.Hotels" %>
<%@ page import="java.util.List" %>
<%@ page import="com.mvcspring.utils.FileUploadPath" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
  <html lang="en">
  <head>
    <title>Hotel Page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/all.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/pages/user/hotels.css">
  </head>
  <body>

  <jsp:include page="/pages/user/header.jsp"/>

  <div class="container mt-5">
    <div class="row">


      <%

        HotelController hotelController = new HotelController();

        List<Hotels> hotelsList = hotelController.getAll();



        for(Hotels hotel: hotelsList){

      %>

      <div class="col-md-6">
        <div class="hotel-card">
          <div class="image-container">
            <img src="<%=FileUploadPath.directoryName()+"/"+hotel.getHotel_image_name()+"."+hotel.getHotel_image_ext()%>" alt="Hotel 1" class="h-100 w-100">
          </div>
          <div class="content">
            <h4 class="text-center"><%=hotel.getHotel_name()%>
            </h4>
            <p class="text-center">
            <%=hotel.getHotel_description()%>
            <div class="star-rating">
            <span>
            <%
              for (int i = 0; i < 5; i++) {
                if(i < hotel.getHotel_star() ){%>
              &#9733;
                <%}else{%>
              &#9734;
            <%}%>
              <%}%>
            </span>
          </div>
            <a href="${pageContext.request.contextPath}/form?user_id=${login.getId()}&hotel_id=<%=hotel.getHotel_id()%>" class="btn btn-primary booking-button">BOOK</a>

          </div>
        </div>
      </div>
    <%}%>



  </div>
  </body>
  </html>