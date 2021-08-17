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
    <title>CancelBooking</title>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/style.css">

  </head>
  
  <body style="background-color:#95A5A6 ">
  <nav class="navbar navbar-light bg-light">
    <div class="container">
      <a class="navbar-brand">
        <img src="images/icons8-back-64.png" alt="" width="30" height="24">
      </a>
    </div>
  </nav>

  <form class="form-control container card card-body" style="display: inline-block;margin: 50px 10px 80px 50px;" action="CancelBookingServlet" method="post">
    <div class="mb-3">
      <label class="form-label">Booking Id</label>
      <input type="text" class="form-control" placeholder="Enter the Booking Id"  name="booking_id" >
    </div>
   
    <div class="mb-3">
      <button type="submit">Cancel Booking</button>
    </div>
  </form>
  </body>
</html>
