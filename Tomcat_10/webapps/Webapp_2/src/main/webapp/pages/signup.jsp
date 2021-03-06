<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="/style/stylesheet.css">
    <meta charset="UTF-8">
    <title>Steve's Jobs</title>
</head>
<body>
<div class="fejlec">
    <h1>Regisztráció</h1>
</div>

<div class="main">
<div class="menusor">
        <ul class="menu">
            <li><a href="/index.jsp">Főoldal</a></li>
            <%
                if(session.getAttribute("login_id") == null){
                    out.print("<li><a href=\"/pages/login.jsp\">Belépés</a></li>");
					out.print("<li><a href=\"/pages/signup.jsp\">Regisztáció</a></li>");
                }
                else{
                	if( session.getAttribute("admin_e").equals("1") ){
                		out.print("<li><a href=\"/pages/admin_control.jsp\">Admin felület</a></li>");
                		out.print("<li><a href=\"/pages/stats.jsp\">Statisztikák</a></li>");
                	}
					out.print("<li><a href=\"/pages/profile.jsp\">Profil</a></li>");
                    out.print("<li><a href=\"/Logout\">Kijelentkezés</a></li>");
                }
            %>
        </ul>
    </div>
	<div class="tartalom">
	    <form id="signup" method="post" action="/SignupHandler">
	        <label for="username">Email cím:</label><br>
	        <input type="text" id="username" name="username">
	       	<%
	        	if(request.getAttribute("wrongmail") != null)
	        	if((int)request.getAttribute("wrongmail") == 1){
	        		out.print("<br><strong>Az email címhez már létezik fiók!</strong>");
	        	}
	        %>
	        <br>
	        <label for="pass">Jelszó:</label><br>
	        <input type="password" id="pass" name="pass"><br>
	        <label for="pass">Jelszó megerősítese:</label><br>
	        <input type="password" id="repass" name="repass">
	        <%
	        	if(request.getAttribute("wrongpass") != null)
	        	if((int)request.getAttribute("wrongpass") == 1){
	        		out.print("<br><strong>A jelszavak nem egyeznek!</strong>");
	        	}
	        %>
	        <br>
	        <input type="radio" id="kereso" name="user_type" value="kereso">
			<label for="kereso">Álláskereső vagyok</label><br>
			<input type="radio" id="hirdeto" name="user_type" value="hirdeto">
			<label for="hirdeto">Álláshirdető vagyok</label><br>
			<input type="radio" id="diak" name="user_type" value="diak">
			<label for="hirdeto">Diák felhasználó vagyok</label><br>
	        <br>
	        <input type="submit" value="Regisztráció">
	    </form>
    </div>
</div>

</body>
</html>
