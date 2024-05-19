<%@page import="com.jspider.springmvc.dto.CarDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
}

div {
    border: 2px solid #ccc;
    width: 400px;
    margin: 100px auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h3 {
    font-size: 24px;
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

input[type="text"] {
    width: calc(100% - 20px);
    padding: 10px;
    margin: 8px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

.label {
    font-size: 16px;
    margin-bottom: 5px;
    color: #555;
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
   <%
   CarDTO car=(CarDTO) request.getAttribute("car");
   %>
   <div align="center">
     <h3>Update Car Details</h3>
      <form action=""update_car" method="post">
       <table>
        <tr>
         <td class="label">Id</td>
					<td><input class="input" type="text" name="id"
						value="<%=car.getId()%>" readonly="readonly"></td>
        </tr>
        <tr>
					<td class="label">Name</td>
					<td><input class="input" type="text" name="name"
						value="<%=car.getName()%>" required="required"></td>
		</tr>
		<tr>
					<td class="label">Brand</td>
					<td><input class="input" type="text" name="brand"
						value="<%=car.getBrand()%>" required="required"></td>
		</tr>
		<tr>
					<td class="label">Price</td>
					<td><input class="input" type="text" name="price"
						value="<%=car.getPrice()%>" required="required"></td>
		</tr>
       </table>
       <input id="button" type="submit" value="UPDATE">
		</form>
		<h3>
			Do you want to go to <a href="home">Home Page</a> ?
		</h3>
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
	%>
</body>
</html>