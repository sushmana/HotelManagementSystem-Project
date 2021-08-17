<%@ page import="java.sql.Connection" %>
<%@ page import="com.DB.DBConnection" %>
<html>
<head>
    <title>Admin Login</title>
    <meta charset="x-iso-8859-1">
    <title></title>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">

    <link rel="stylesheet" href="/css/style.css">

</head>
<body style="background-image: linear-gradient(to right top, #b84073, #e44f4a, #e78100, #b9b900, #23eb12)">
<%
Connection conn= DBConnection.getConnection();
%>
<!-- Default form login -->
<form class="text-center border border-light p-5" action="loginServlet" method="post">
    <div class="container">
        <div class="row mt-3">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-header text-center c-head text-green">
                        <i class="fa fa-user-circle-o fa-2x"></i>
                        <h class="h4 mb-4">Login Page</h>
                        
                        <!--Logout msg for logout page -->
    <%
        String logoutMSG=(String)session.getAttribute("logout-msg");
        if(logoutMSG!=null)
        {%>
    <div class=""alert alert-success" roles="alert">
    <%= logoutMSG %>
    </div>
       <%
        session.removeAttribute("logout-msg");
           }%>
           
           
        <!--Error msg for login page -->
           <%
            String errorMsg=(String)session.getAttribute("error-msg");
            if(errorMsg!=null)
            {%>
    <div class="alert alert-danger" roles="alert">
    <%= errorMsg %>
    </div>
    <%
            session.removeAttribute("error-msg");
}%>
 
    <input type="email" name="email" id="defaultLoginFormEmail" class="form-control mb-4" placeholder="E-mail">
    <input type="password" name="password" id="defaultLoginFormPassword" class="form-control mb-4" placeholder="Password">

    <div class="d-flex justify-content-around">
        <div>
        </div>
    </div>
    <button class="btn btn-info btn-block my-4" type="submit">Sign in</button>

</form>

</body>
</html>
