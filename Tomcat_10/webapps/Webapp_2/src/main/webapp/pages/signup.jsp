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
    <h1>Regisztráció</h1>
</div>

<div class="main">
    <form id="signup" method="post" action="/SignupHandler">
        <label for="name">Név:</label><br>
        <input type="text" id="name" name="name"><br>
        <label for="username">Email cím:</label><br>
        <input type="text" id="username" name="username"><br>
        <label for="date">Születési dátum:</label><br>
        <input type="date" id="date" name="date" value="2000-01-01" min="1950-01-01" max="2005-12-31"><br>
        <label for="pass">Jelszó:</label><br>
        <input type="password" id="pass" name="pass"><br>
        <label for="pass">Jelszó megerősítese:</label><br>
        <input type="repassword" id="repass" name="repass"><br>
        <input type="submit" value="Regisztráció">
    </form>
</div>

</body>
</html>
