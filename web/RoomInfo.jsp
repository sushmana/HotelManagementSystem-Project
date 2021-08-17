<%--
  Created by IntelliJ IDEA.
  User: sushm
  Date: 21-05-2021
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Room Information</title>
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
  <div class="card-group">
    <div class="card col-sm-4"style="margin:12px;padding:12px;">
      <img class="card-img-top" src="images/bedroom-690129_1920%20(1).jpg" alt="Woods">
      <div class="card-body">
        <h4 class="card-title">Single Bed (Normal)</h4>
        <p class="card-text">"Simple is our style. Spacious rooms and suites style furnish. Comfy bed & spotless bath will surely let you relax in luxury. AC, non AC- double/single bed rooms are enabled with vital facilities- CC TV, phones, any time hot/cold water, laundry and room service, are a few to name."</p>
      </div>
      <div class="card-footer">
        <a class="btn btn-primary">Rs.1500</a>
      </div>
    </div>
    <div class="card col-md-4"style="margin:12px;padding:12px;">
      <img class="card-img-top" src="images/bedroom-690129_1920%20(1).jpg" alt="Desert">
      <div class="card-body">
        <h4 class="card-title form-text">Single Bed (Cooler)</h4>
        <p class="card-text">"Simple is our style. Spacious rooms and suites style furnish. Comfy bed & spotless bath will surely let you relax in luxury. AC, non AC- double/single bed rooms are enabled with vital facilities- CC TV, phones, any time hot/cold water, laundry and room service, are a few to name."</p>
      </div>
      <div class="card-footer">
        <a class="btn btn-primary">Rs.1800</a>
      </div>
    </div>
    <div class="card"style="margin:12px;padding:12px;">
      <img class="card-img-top" src="images/bedroom-690129_1920%20(1).jpg" alt="Lake">
      <div class="card-body">
        <h4 class="card-title">Single Bed (A/C)</h4>
        <p class="card-text">"Simple is our style. Spacious rooms and suites style furnish. Comfy bed & spotless bath will surely let you relax in luxury. AC, non AC- double/single bed rooms are enabled with vital facilities- CC TV, phones, any time hot/cold water, laundry and room service, are a few to name."</p>
      </div>
      <div class="card-footer">
        <a class="btn btn-primary">Rs.2200</a>
      </div>
    </div>
  </div>
  <div class="card-group">
    <div class="card" style="margin:12px;padding:12px;">
      <img class="card-img-top" src="images/bed-625386_1280.jpg" alt="Woods">
      <div class="card-body">
        <h4 class="card-title">Double Bed (Normal)</h4>
        <p class="card-text">"Simple is our style. Spacious rooms and suites style furnish. Comfy bed & spotless bath will surely let you relax in luxury. AC, non AC- double/single bed rooms are enabled with vital facilities- CC TV, phones, any time hot/cold water, laundry and room service, are a few to name."</p>
      </div>
      <div class="card-footer">
        <a class="btn btn-primary">Rs.1800</a>
      </div>
    </div>
    <div class="card"style="margin:12px;padding:12px;">
      <img class="card-img-top" src="images/bed-625386_1280.jpg" alt="Desert">
      <div class="card-body">
        <h4 class="card-title">Double Bed (Cooler)</h4>
        <p class="card-text">"Simple is our style. Spacious rooms and suites style furnish. Comfy bed & spotless bath will surely let you relax in luxury. AC, non AC- double/single bed rooms are enabled with vital facilities- CC TV, phones, any time hot/cold water, laundry and room service, are a few to name."</p>
      </div>
      <div class="card-footer">
        <a class="btn btn-primary">Rs.2200</a>
      </div>
    </div>
    <div class="card"style="margin:12px;padding:12px;">
      <img class="card-img-top" src="images/bed-625386_1280.jpg" alt="Lake">
      <div class="card-body">
        <h4 class="card-title">Double Bed (A/C)</h4>
        <p class="card-text">"Simple is our style. Spacious rooms and suites style furnish. Comfy bed & spotless bath will surely let you relax in luxury. AC, non AC- double/single bed rooms are enabled with vital facilities- CC TV, phones, any time hot/cold water, laundry and room service, are a few to name."</p>
      </div>
      <div class="card-footer">
        <a class="btn btn-primary">Rs.2500</a>
      </div>
    </div>
  </div>
  </body>
</html>
