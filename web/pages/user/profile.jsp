<%@ page import="com.mvcspring.models.User" %>
<%@ page import="com.mvcspring.controller.root.BookingController" %>
<%@ page import="com.mvcspring.controller.root.HotelController" %>
<%@ page import="com.mvcspring.models.Booking" %>
<%@ page import="java.util.List" %>
<%@ page import="com.mvcspring.models.Hotels" %>
<%@ page import="com.mvcspring.utils.FileUploadPath" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/all.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/pages/user/profile.css">
</head>
<body>


<jsp:include page="/pages/user/header.jsp"/>


    <div class="container m-5">
        <!-- Profile section -->
        <section id="profile-section">
            <h1>User Profile</h1>
            <div class="row">
                <div class="col-md-4">
                    <img src="${profileImage}" alt="User Photo" class="img-fluid">
                </div>
                <div class="col-md-8">
                    <h2>Name: ${login.getUsername()}</h2>
                    <p>Email: ${login.getEmail()}</p>
                    <p>Location: ${login.getLocation()}</p>
                    <a href="${pageContext.request.contextPath}/profile-edit" class="d-block">
                        <button class="btn btn-primary">
                            Edit
                        </button>
                    </a>
                    <!-- Add more user information as needed -->
                </div>
            </div>
        </section>

        <!-- Hotel booking section -->
        <section id="hotel-booking-section m-5">
            <h2 class="mt-5">My Bookings</h2>
            <div class="row mt-5">

                <%
                    BookingController bookingController = new BookingController();
                    HotelController hotelController = new HotelController();

                    User user = (User) session.getAttribute("login");


                    List<Booking> bookingList = bookingController.getAll();
                    List<Hotels> hotelsList = hotelController.getAll();

                    for(Booking booking: bookingList){
                        if(user.getId() == booking.getUser_id()){
                            for (Hotels hotel: hotelsList){
                                if(booking.getHotel_id() == hotel.getHotel_id()){

                %>

                <!-- Hotel 1 -->
                <div class="col-md-6">
                    <div class="card">
                        <img src="<%=FileUploadPath.directoryName()%>/<%=hotel.getHotel_image_name()%>.<%=hotel.getHotel_image_ext()%>" class="card-img-top w-100 " alt="abu-sana">
                        <div class="card-body">
                            <h3 class="card-title"><%=hotel.getHotel_name()%></h3>
                            <p class="card-text">Location: sulaimani</p>
                            <p class="card-text">Price: <%=hotel.getHotel_room_price()%> per night</p>
                            <!-- Add more hotel information as needed -->
                            <!-- Add a button to book this hotel -->
                            
                        </div>
                    </div>
                </div>
                <% break;
                                }%>
                <%}%>
                <%}%>
                <%}%>

            </div>
        </section>
    </div>

<!-- Bootstrap JS -->
<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>


