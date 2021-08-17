<%@ page import="com.entities.User" %><%--
  Created by IntelliJ IDEA.
  User: sushm
  Date: 20-05-2021
  Time: 21:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=ISO-8859-1" pageEncoding="ISO-8859-1" language="java" %>
<%
    User user=(User)session.getAttribute("user-ob");
    if(user==null){
        session.setAttribute("login-msg","Please login First..");
        response.sendRedirect("login.jsp");
    }
%>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Home</title>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="Javascipt/javascript.js"></script>

</head>

<!--
<ul class="nav nav-tabs navbar navbar-success" style="background-color: #e3f2fd; margin:10px; padding:20px;">
    
    <li class="nav-item">  <li class=" border border-dark nav nav-link">
    <div>
            <figure>
                <img class="nac-link-active" src="images/icons8-walter-white-64.png" width="30px" height="30px"style="color: green" href="ManagerProfile">
                <figcaption>Admin</figcaption>
            </figure>
        </button>
    </div>
</li>
    <li class=" border border-dark nav nav-link">
        <figure style="position:50%;">  <a href="contact.jsp">
            <img src="images/.png">
        </a>
            <figcaption>Contact</figcaption>
        </figure>
    
    </li>
    <li class="nav nav-tabs">
        <a class="border border-dark btn btn-primary active btn-lg text-white" href="LogoutServlet">Logout</a>
    </li>
</ul>
-->
<body>

<nav class="navbar navbar-expand-custom navbar-mainbg" style="margin-bottom:15px;">
    <a class="navbar-brand navbar-logo">ADMIN
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fas fa-bars text-white"></i>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
            
            <li class="nav-item">
                <a class="nav-link" href="index.jsp"><i class="fas fa-home"></i>Dashboard</a>
            </li>
            <li class="nav-item">
                <a class="Border border-dark nav-link" href="LogoutServlet"><i class="fas fa-user-plus"></i>Logout</a>
            </li>
            <li class="nav-item" style="text-align:right">
                <a class="nav-link" href="contact.jsp"><i class="far fa-address-book"></i>Contact</a>
            </li>
        </ul>
    </div>
</nav>
<!--Cards-->
<div class="container">
<div class="row">
    <div class="col-sm-4">
        <div class="card">
            <img class="card-img-top" src="images/reception.jpg" height="150px" width="150px">
            <div class="card-body">
                <a class="btn btn-primary" href="RoomInfo.jsp">Room Information</a>
            </div>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="card">
            <img class="card-img-top" src="images/reservation.jpg" height="150px" width="150px">
            <div class="card-body">
                <a href="Room_Booking.jsp" class="btn btn-primary">Room Booking</a>
            </div>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="card">
            <img class="card-img-top" src="images/checkedin.jpg" height="150px" width="150px">
    
            <div class="card-body">
                <a href="Check_in.jsp" class="btn btn-primary">Check In</a>
            </div>
        </div>
    </div>
   
</div>
<div class="row" style="margin-top:20px;">
    <div class="col-sm-4">
        <div class="card">
            <img class="card-img-top" src="images/checkinjpg.jpg" height="150px" width="150px">
            <div class="card-body">
                <a href="Check_out.jsp" class="btn btn-primary">Check Out</a>
            </div>
        </div>
    </div>
   

    <div class="col-sm-4">
        <div class="card">
            <img class="card-img-top" src="images/cancelled.png" height="150px" width="150px">
            <div class="card-body">
                <a href="Cancel_Booking.jsp" class="btn btn-primary">Room Cancelling</a>
            </div>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="card">
            <img class="card-img-top" src="images/guest.jpg" height="150px" width="150px">
            <div class="card-body">
                <a href="guest.jsp" class="btn btn-primary">Guests</a>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>
