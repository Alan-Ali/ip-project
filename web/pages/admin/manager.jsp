<%@ page import="com.mvcspring.controller.root.UserController" %>
<%@ page import="com.mvcspring.models.User" %>
<%@ page import="java.util.List" %>
<%@ page import="com.mvcspring.controller.root.UserImageController" %>
<%@ page import="com.mvcspring.models.UserImage" %>
<%@ page import="com.mvcspring.utils.FileUploadPath" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Management - Manager</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/all.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/pages/admin/manager.css">

  <style>

  </style>
</head>
<body>
<jsp:include page="/pages/admin/header.jsp"/>
<div class="container">
  <div class="row">
    <div class="col-md-6 mx-auto">

      <%

        // Controllers
        UserController userController = new UserController();
        UserImageController userImageController = new UserImageController();


        List<User> users = userController.getAll();
        List<UserImage> images = userImageController.getAll();

      %>

      <%

        for(User user: users){
      %>



        <%if(user.getIsadmin() != 1){%>
        <div class="user-card">
        <%for(UserImage image: images){%>

        <%if(user.getId() == image.getUser_id()){%>

        <img src="<%=FileUploadPath.directoryName()+"/"+image.getImage_name() + "."+image.getImage_ext()%>" alt="User 1" class="user-photo">

        <%}else{%>

        <img src="${pageContext.request.contextPath}/resources/images/9.jpg" alt="User 1" class="user-photo">

        <%}%>

        <h5 class="user-name"><%=user.getUsername()%></h5>

<%--        <form action="${pageContext.request.contextPath}/user/delete/<%=user.getId()%>" method="POST">--%>
          <button type="submit" class="btn btn-danger delete-button" data-value="<%=user.getId()%>">Delete</button>
<%--        </form>--%>
      </div>

        <%}%>
      <%}%>

      <%}%>
    </div>
  </div>
</div>

<!-- Bootstrap JS -->
<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.bundle.min.js"></script>

<script>
  const delete_button = [...document.getElementsByClassName("delete-button")];

  delete_button.forEach((val, index) => {
    val.addEventListener("click", () => {

      const url = "${pageContext.request.contextPath}/user/delete/" + val.dataset.value;

      fetch(url, {
        method: 'DELETE',
        headers: {
          // 'Content-Type': 'application/json',
          // Additional headers if required
        },
        // Optional: Request body if needed
        // body: JSON.stringify(data),
      })
              .then(response => {
                if (response.ok) {
                  // Handle successful response
                  console.log('Delete request was successful.');
                } else {
                  // Handle error response
                  console.error('Error deleting the resource.');
                }
                window.location.reload();
              })
              .catch(error => {
                // Handle network or other fetch-related errors
                console.error('Error:', error);
              });

    });
  })
</script>

</body>
</html>
