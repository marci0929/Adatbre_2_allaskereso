<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Control.Controller, java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<%!
            Controller control = new Controller();
%>
<link rel="stylesheet" href="/style/stylesheet.css">
<meta charset="UTF-8">
<title>Control panel</title>
</head>
<body>
<div class="fejlec">
    <h1>Admin control page</h1>
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

        <p>Válassz táblát, amelyiket szerkeszteni szeretnéd</p>
        <form method="get" action="/pages/edit_table.jsp">
        <select name="table_select">
        <%
	    	ArrayList<String> database_results = control.getTableNames();
        	for(String name : database_results){
        		out.println("<option>"+name+"</option>");
        	}
	    	
	    %>
		</select>
		<br>
		<input type="submit" value="Szerkesztés">
		</form>
    </div>

</div>
</body>
</html>