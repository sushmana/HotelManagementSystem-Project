<%--
  Created by IntelliJ IDEA.
  User: sushm
  Date: 25-05-2021
  Time: 18:16
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String driver = "com.mysql.jdbc.Driver";
  String connectionUrl = "jdbc:mysql://localhost:3306/";
  String database = "hotel";
  String userid = "root";
  String password = "Deepagupta12@";
  try {
    Class.forName(driver);
  } catch (ClassNotFoundException e) {
    e.printStackTrace();
  }
  Connection connection = null;
  Statement statement = null;
  ResultSet resultSet = null;
%>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Manager</title>
  <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
  <link rel="stylesheet" href="/style.css">
</head>

<!--Fetch  all the details from roombooking.html-->

<body style="background-color:#95A5A6 ">

<form class="form-control container card card-body" action="RoomSelectServlet"method="post">
  <input type="hidden" name="booking_id" value="<%=request.getParameter("booking_id")%>">
  
  <div class="card-group">
  <div class="card" style= "align:center;width:50rem;margin:12px;padding:12px;">
    <div class="card-body">
      <label class="form-label">Booking Date</label>
<div class="mb-6" style= "margin:12px;padding:12px;" >
  <input type="date" class="form-control" name="bookingfrom"id="inputName1">
</div>
<div class="mb-6" style= "margin:12px;padding:12px;">
  <input type="date" class="form-control" name="bookingto" id="inputName">
</div>
    </div>
</div>
</div>

<div class="card-group">
  <%
    try{
      connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","Deepagupta12@");
      statement=connection.createStatement();
      String sql ="select * from roominfo where Availability is null or Availability != 0";
      resultSet = statement.executeQuery(sql);
      while(resultSet.next()){
  
  %>
  
  <div class="card"style="margin:12px;padding:12px;">
    <img class="card-img-top" src="images/bed-625386_1280.jpg" alt="Lake">
    <div class="card-body">
      <h4 class="card-title"><%=resultSet.getString("RoomType") %></h4>
      <p class="card-text"> "Simple is our style. Spacious rooms and suites style furnish. Comfy bed & spotless bath will surely let you relax in luxury. AC, non AC- double/single bed rooms are enabled with vital facilities- CC TV, phones, any time hot/cold water, laundry and room service, are a few to name."</p>
    </div>
    <div class="card-footer">
      <button type="submit" name="<%=resultSet.getString("Room_id") %>"class="btn btn-primary">Book</button>
      <div><a  class="form-text">Rs.<%=resultSet.getString("price") %></a></div>
    </div>
  </div>
  <%
      }
      connection.close();
    } catch (Exception e) {
      e.printStackTrace();
    }
  %>
</div>
</form>

</body>
</html>
