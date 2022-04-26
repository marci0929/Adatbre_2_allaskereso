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
        </ul>
    </div>
    <div class="tartalom">

        <p>Válassz táblát, amelyiket szerkeszteni szeretnéd</p>
        <select name="table_select">
        <%
	    	ArrayList<String> database_results = control.getTableNames();
        	for(String name : database_results){
        		if (control.getValid_tables().contains(name.toLowerCase())) out.println("<option>"+name+"</option>");
        	}
	    	
	    %>
		</select>  
    </div>

</div>
</body>
</html>