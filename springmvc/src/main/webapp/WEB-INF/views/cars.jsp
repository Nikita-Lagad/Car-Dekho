<%@page import="com.jspider.springmvc.dto.CarDTO"%>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Cars</title>
<style type="text/css">
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
}

#box {
    border: 2px solid #ccc;
    width: 400px;
    margin: 100px auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
    font-size: 16px;
    color: #333;
    margin-bottom: 5px;
}

input[type="text"] {
    width: calc(50% - 5px);
    padding: 10px;
    margin: 8px 5px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

#button {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    width: 100%;
    font-size: 16px;
}

#button:hover {
    background-color: #45a049;
}

#message {
    font-size: 18px;
    color: #333;
    text-align: center;
    margin-top: 20px;
}

#table {
    width: 100%;
    border-collapse: collapse;
}

.head {
    background-color: #4CAF50;
    color: white;
    font-weight: bold;
}

.data {
    padding: 10px;
    border-bottom: 1px solid #ccc;
    text-align: center;
}

a {
    text-decoration: none;
    color: #4CAF50;
}

a:hover {
    text-decoration: underline;
}

</style>
</head>
<body>
   <div id="box">
		<form action="search" method="post">
			<label>Low price</label> <input type="text" name="low"
				required="required"> <label>High price</label> <input
				type="text" name="high" required="required"> <input
				id="button" type="submit" value="SEARCH">
		</form>
	</div>
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center">
		<h3 id="message"><%=message%></h3>
	</div>
	<%
	}
	@SuppressWarnings("unchecked")
	List<CarDTO> cars = (List<CarDTO>) request.getAttribute("cars");
	if (cars != null) {
	%>
	<div align="center">
		<table id="table">
			<tr>
				<td class="head">Id</td>
				<td class="head">Name</td>
				<td class="head">Brand</td>
				<td class="head">Price</td>
			</tr>
			<%
			for (CarDTO car : cars) {
			%>
			<tr>
				<td class="data"><%=car.getId()%></td>
				<td class="data"><%=car.getName()%></td>
				<td class="data"><%=car.getBrand()%></td>
				<td class="data"><%=car.getPrice()%></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<%
	}
	%>
	<div align="center">
		<h3>
			Do you want to go to <a href="home">Home Page</a> ?
		</h3>
	</div>
</body>
</html>