<%@ page import="com.servlet.RegisterServlet" %><%--
  Created by IntelliJ IDEA.
  User: sushm
  Date: 09-05-2021
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <meta charset="x-iso-8859-1">
    <title></title>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/web/css/style.css">

</head>
<body style="background-image: linear-gradient(to right top, #b84073, #e44f4a, #e78100, #b9b900, #23eb12);background-repeat: no-repeat; background-attacghment:fixed; background-size:cover;">
<div class="container">
    <div class="row mt-3">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-header text-center c-head text-green">
                    <i class="fa fa-user-circle-o fa-2x"></i>
                    <h>Registration Page</h>
                </div>
                <%-- This is JSP comment --%>
               <% String regMsg=(String)session.getAttribute("reg-msg");
                if(regMsg!=null)
                {%>
                <div class="alert alert-dark" role="alert">
                    <%= regMsg %>Login..<a href="login.jsp">click here</a>
                </div>
                <%
                    session.removeAttribute("reg-msg");
                }
               %>
                <% String errMsg=(String)session.getAttribute("err-msg");
                    if(errMsg!=null)
                    {%>
                <div class="alert alert-dark" role="alert">
                    <%= errMsg %>
                </div>
                <%
                        session.removeAttribute("err-msg");
                    }
                %>
          <div class="card-body">
<form action="RegisterServlet" method="post">

    <div class="mb-3">
        <label for="email" class="form-label">Email</label>
        <input type="email" class="form-control" id="email" name="email" required>
        <p>
            <ul style="font-size:.8em; color:red;">
        <li>Uppercase and lowercase letters in English (A-Z, a-z)</li>
        <li>Digits from 0 to 9</li>
        <li>Special characters such as % & ' + -  _ </li>
    </ul>
        </p>
    </div>
    <div class="mb-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" id="password" name="password" required>
    </div>
    
    <div><br></div>
    <div>
    <button type="submit" class="btn btn-primary btn-block badge-pill">Register</button>
    </div>
</form>
</div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
