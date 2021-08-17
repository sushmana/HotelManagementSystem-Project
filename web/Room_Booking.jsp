<%--
  Created by IntelliJ IDEA.
  User: sushm
  Date: 21-05-2021
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Manager</title>
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

<!--Fetch  all the details from roombooking.html-->

<body style="background-color:#95A5A6 ">

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

<form class="form-control container card card-body" action="RoomBookingServlet"method="post">
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Name</label>
    <input type="form-text" class="form-control" id="inputName" name="name">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Phone</label>
    <input type="form-text" class="form-control" id="inputName" name="phone">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Address</label>
    <input type="form-text" class="form-control" name="address" id="exampleInputPassword1">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">City</label>
    <input type="form-text" class="form-control" name="city"id="exampleInputPassword1">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">State</label>
    <input type="form-text" class="form-control" name="state" id="exampleInputPassword1">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Nationality</label>
    <input type="fprm-text" class="form-control" name="nationality"id="exampleInputPassword1">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Adhaar Number</label>
    <input type="password" class="form-control" name="adhaar"id="exampleInputPassword1">
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>


</body>
<html>