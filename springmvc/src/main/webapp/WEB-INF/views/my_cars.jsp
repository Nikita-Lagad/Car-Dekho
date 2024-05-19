<%@page import="com.jspider.springmvc.dto.CarDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Cars Page</title>
<style type="text/css">
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
}

h3 {
    text-align: center;
    margin-top: 20px;
    margin-bottom: 10px;
    color: #333;
}
table {
    width: 80%;
    margin: 20px auto;
    border-collapse: collapse;
}

td, th {
    padding: 8px;
    border-bottom: 1px solid #ddd;
    text-align: left;
}

.head {
    background-color: #4CAF50;
    color: white;
    font-weight: bold;
    text-align: center;
}

.data {
    text-align: center;
}
.action {
    background-color: transparent;
    border: none;
    cursor: pointer;
    font-size: 16px;
    color: #333;
}

.action:hover {
    color: red;
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
   String message=(String)request.getAttribute("message");
  if(message!=null){
  %>
  <div align="center">
    <h3><%=message %></h3>
  </div>
  <%
  }
  @SuppressWarnings("unchecked")
  List<CarDTO> cars=(List<CarDTO>)request.getAttribute("cars");
  if(cars!=null){
  %>
  <div align="center">
   <table>
    <tr>
     <td>Id</td>
     <td>Name</td>
     <td>Brand</td>
     <td>Price</td>
     <td class="head" colspan="2">Action</td>
    </tr>
    <%
    for(CarDTO car:cars){
    %>
    <tr>
     <td><%=car.getId()%></td>
     <td><%=car.getName()%></td>
     <td><%=car.getBrand()%></td>
     <td><%=car.getPrice()%></td>
     <td class="data">
		<form action="delete_car" method="post">
			<input type="text" name="id" value="<%=car.getId()%>"hidden="true">
					<button class="action" type="submit">
						<i class="fas fa-trash-alt"></i>
						</button>
					</form>
				</td>
				<td class="data">
					<form action="edit_car" method="post">
						<input type="text" name="id" value="<%=car.getId()%>"hidden="true">
						<button class="action" type="submit">
							<i class="fas fa-edit"></i>
						</button>
		 </form>
		</td>
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