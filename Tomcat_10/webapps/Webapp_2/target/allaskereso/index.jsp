<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Actions Example</title>
</head>
<body>

<h1> Student Registration Page</h1>
 <form action="<%= request.getContextPath() %>/TomcatServer" method="get">
  First Name: <input type="text" name="firstName">
  <br> <br>

  Last Name: <input type="text" name="lastName">
  <br> <br>

  Email ID: <input type="email" name="emailId">
  <br> <br>

  Password: <input type="password" name="password"><br>

  <br>
  <input type="submit" value="register">
 </form>
</body>
</html>
