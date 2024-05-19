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

#box {
    border: 2px solid #ccc;
    width: 80%;
    margin: 20px auto;
    background-color: #fff;
    padding: 10px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
nav {
    display: flex;
    justify-content: center;
}

nav a {
    padding: 10px;
    margin: 0 5px;
    text-decoration: none;
    color: #333;
    transition: all 0.3s ease;
}

nav a:hover {
    background-color: #ddd;
    border-radius: 5px;
}

nav a:first-child {
    margin-left: 0;
}

nav a:last-child {
    margin-right: 0;
}
</style>
</head>
<body>
   <body>
	<div id="box" align="center">
		<nav>
			<a href="add_page">ADD</a> 
			<a href="cars">All CARS</a> 
			<a href="my_cars">MY CARS</a> 
			<a href="sign_out">SIGN OUT</a> 
			<a href="delete_user">DELETE ACCOUNT</a>
		</nav>
		</div>
</body>
</html>