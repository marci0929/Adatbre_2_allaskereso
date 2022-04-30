<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*, Control.Controller, java.util.ArrayList, java.util.List" %>
<!DOCTYPE html>
<html>
<head>


<link rel="stylesheet" href="/style/stylesheet.css?ts=<?=time()?>">
<meta charset="UTF-8">
<title>Steve's Jobs</title>
<%!
            Controller control = new Controller();
%>
</head>
<body>

<div class="fejlec">
    <h1>Steve's jobs álláskereső</h1>
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
    	<form method="post" action="/NewPass">
    		<label for="newpass">Új jelszó:</label><br>
	        <input type="password" id="newpass" name="newpass"><br>
	        <label for="newpasscheck">Új jelszó megerősítése:</label><br>
	        <input type="password" id="newpasscheck" name="newpasscheck"><br>
	        <input type="submit" value="Jelszó módosítása">
    	</form>
    </div>
    

</div>

</body>
</html>
