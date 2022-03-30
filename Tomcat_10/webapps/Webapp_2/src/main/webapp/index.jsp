<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Actions Example</title>
</head>
<body>

<h1>SQL parancs futtatása</h1>

<form action="<%= request.getContextPath() %>/TomcatServer" method="get">
<label for='parancs'>Ide írd a parancsot:</label><br>
<p><textarea rows='4' cols='100' name='parancs' id='parancs'></textarea></p>
<p><input type='submit' value='Futtatás'></p>
</form>

</body>
</html>
