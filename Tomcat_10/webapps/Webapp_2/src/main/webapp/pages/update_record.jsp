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
                }
                else{
                	if( session.getAttribute("admin_e").equals("1") ){
                		out.print("<li><a href=\"/pages/admin_control.jsp\">Admin felület</a></li>");
                	}
                    out.print("<li><a href=\"/Logout\">Kijelentkezés</a></li>");
                }
            %>
        </ul>

    </div>

    <div class="tartalom">
    	<form method="post" action="/TableManager?table_select=<%= request.getParameter("table_select")%>&todo=update">
    		<%
	        int column_n = 0;
	        List<String> headings = new ArrayList<>();
    		ResultSet rs = control.getResultSet("SELECT * FROM "+request.getParameter("table_select"));
    		boolean van_id = false;
    		try{
    			column_n = rs.getMetaData().getColumnCount();
	            for (int i = 1; i <= column_n; i++) {
	                headings.add(rs.getMetaData().getColumnName(i));
	                if(rs.getMetaData().getColumnName(i).toLowerCase().equals("id")) van_id = true;
	            }
	            rs = control.getResultSet("SELECT * FROM "+request.getParameter("table_select")+" WHERE ID="+request.getParameter("update_btn"));
	            rs.next();
	            for(String param_value : headings){
	            	if(!param_value.toLowerCase().equals("id")){
	            		out.println("<label for='"+param_value+"'>"+param_value+": </label>");
	            		out.println("<input type='text' id='"+param_value+"' name='"+param_value+"' value='"+rs.getString(param_value)+"'><br>");
	            	}
	            }
	            out.println("<input type='hidden' id=value'update_id' name='update_id' value="+request.getParameter("update_btn")+">");
	            out.println("<br><input type='submit' value='Rekord frissítése'>");
    		}catch(Exception e){
    			e.printStackTrace();
    		}
    		%>
    	</form>
    </div>
    

</div>

</body>
</html>
