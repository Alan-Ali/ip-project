<%@ page import="com.mvcspring.models.User" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/26/2023
  Time: 11:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%
	User user = (User) session.getAttribute("login");
    if(user != null){
        user
	}
%>

<nav class="navbar navbar-expand-lg navbar-light bg-light ">
	<div class="container-fluid">
		<a class="navbar-brand" href="${pageContext.request.contextPath}/main">Home</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" >
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item">
					<a class="nav-link " aria-current="page" href="${pageContext.request.contextPath}/hotels">Hotels </a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="${pageContext.request.contextPath}/about">About </a>
				</li>
			</ul>
		</div>
	</div>

	<div class="navbar-collapse">
		<ul class="navbar-nav me-auto">
			<li class="nav-item">
				<a class="nav-link" href="${pageContext.request.contextPath}/profile">
					<div class="profile-photo">
						<img src="${pageContext.request.contextPath}/resources/images/10.jpg" alt="Profile Photo" class="img-fluid">
					</div>
				</a>
			</li>
			<li class="nav-item mx-3">
				<a class="btn btn-outline-danger" href="${pageContext.request.contextPath}/login">Logout</a>
			</li>
		</ul>
	</div>

</nav>