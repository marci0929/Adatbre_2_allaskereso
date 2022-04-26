<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page import="Control.Controller, java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>


<link rel="stylesheet" href="style/stylesheet.css">
<meta charset="UTF-8">
<title>Steve's Jobs</title>
</head>
<body>

<div class="fejlec">
    <h1>Steve's jobs álláskereső</h1>
</div>

<div class="main">
    <div class="menusor">
        <ul class="menu">
            <li><a href="index.jsp">Főoldal</a></li>
            <%
                if(session.getAttribute("login_id") == null){
                    out.print("<li><a href=\"pages/login.jsp\">Belépés</a></li>");
                }
                else{
                    out.print("<li><a href=\"/Logout\">Kijelentkezés</a></li>");
                }
            %>
        </ul>

    </div>

    <div class="tartalom" style="width: 70%;">
        <%!
            Controller control = new Controller();
        %>

        <%
            ArrayList<String[]> database_results = control.customSQL("SELECT * FROM ALLAS");
            for (String[] i : database_results) {
                out.println(i[1]);
            }
        %>
    </div>

</div>

</body>
</html>
