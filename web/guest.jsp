<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
<style type="text/css">
	
    body {
        background-color: #f6f6ff;
        font-family: Calibri, Myriad;
    }

    #main {
        width: 780px;
        padding: 20px;
        margin: auto;
    }

    table.timecard {
        margin: auto;
        width: 600px;
        border-collapse: collapse;
        border: 1px solid #fff; /*for older IE*/
        border-style: hidden;
    }

    table.timecard caption {
        background-color: #f79646;
        color: #fff;
        font-size: x-large;
        font-weight: bold;
        letter-spacing: .3em;
    }

    table.timecard thead th {
        padding: 8px;
        background-color: #fde9d9;
        font-size: large;
    }

    table.timecard thead th#thDay {
        width: 40%;
    }

    table.timecard thead th#thRegular, table.timecard thead th#thOvertime, table.timecard thead th#thTotal {
        width: 20%;
    }

    table.timecard th, table.timecard td {
        padding: 3px;
        border-width: 1px;
        border-style: solid;
        border-color: #f79646 #ccc;
    }

    table.timecard td {
        text-align: right;
    }

    table.timecard tbody th {
        text-align: left;
        font-weight: normal;
    }

    table.timecard tfoot {
        font-weight: bold;
        font-size: large;
        background-color: #687886;
        color: #fff;
    }

    table.timecard tr.even {
        background-color: #fde9d9;
    }
</style>
<title>Employee Timecard</title>
</head>

<body>
<div id="main">
<table class="timecard" border="1">
	<caption>Guest Record</caption></div>

	<thead>
	<tr>
		<th id="thDay">Booking</th>
		<th id="thRegular">Name</th>
		<th id="thOvertime">Phone</th>
		<th id="thTotal">Email</th>
		<th id="thDay">Address</th>
		<th id="thRegular">City</th>
		<th id="thOvertime">State</th>
		<th id="thTotal">Nationality</th>
		<th id="thTotal">Adhaar</th>
	</tr>
	</thead>
	<%
		try{
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","Deepagupta12@");
			statement=connection.createStatement();
			String sql ="select * from room_book";
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()){
			
	%>
	<tr>
		<td ><%=resultSet.getInt("Booking_id") %></td>
		<td ><%=resultSet.getString("name") %></td>
		<td ><%=resultSet.getString("phone") %></td>
		<td ><%=resultSet.getString("email") %></td>
		<td ><%=resultSet.getString("address") %></td>
		<td ><%=resultSet.getString("city") %></td>
		<td ><%=resultSet.getString("state") %></td>
		<td ><%=resultSet.getString("nationality") %></td>
		<td ><%=resultSet.getString("adhaar") %></td>
	</tr>
	<%
			}
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</table>
</body>
</html>