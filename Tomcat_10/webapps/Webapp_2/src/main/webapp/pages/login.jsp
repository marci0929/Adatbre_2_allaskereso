<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style/stylesheet.css">
<meta charset="UTF-8">
<title>Steve's Jobs</title>
</head>
<body>
<div class="fejlec">
    <h1>Bejelentkezés</h1>
</div>

<div class="main">
    <form id="login" method="post" action="/LoginHandler">
            <label for="username">Email cím:</label><br>
            <input type="text" id="username" name="username"><br>
            <label for="pass">Jelszó:</label><br>
            <input type="password" id="pass" name="pass"><br>
            <input type="submit" value="Bejelentkezés">
    </form>
</div>

</body>
</html>
