<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 7/2/2023
  Time: 11:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-expand-lg navbar-light bg-light ">
	<div class="container-fluid">
		<a class="navbar-brand" href="adminAddHotel.jsp">Home</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" >
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item">
					<a class="nav-link " aria-current="page" href="${pageContext.request.contextPath}/admin-add-hotel">AddHotels </a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="manager.jsp">Manger User </a>
				</li>


		</div>
	</div>
	<div class="navbar-collapse">
		<ul class="navbar-nav me-auto">
			<li class="nav-item">
				<a class="nav-link" href="profile.html">
					<div class="profile-photo">
						<img src="image/10.jpg" alt="Profile Photo" class="img-fluid">
					</div>
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${pageContext.request.contextPath}/logout">Logout</a>
			</li>
		</ul>
	</div>
</nav>