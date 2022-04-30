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
    <h1>Bejelentkezés</h1>
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
	    <form id="login" method="post" action="/LoginHandler">
	            <label for="username">Email cím:</label><br>
	            <input type="text" id="username" name="username"><br>
	            <label for="pass">Jelszó:</label><br>
	            <input type="password" id="pass" name="pass"><br>
	            <input type="submit" value="Bejelentkezés">
	    </form>
    </div>
</div>

</body>
</html>
