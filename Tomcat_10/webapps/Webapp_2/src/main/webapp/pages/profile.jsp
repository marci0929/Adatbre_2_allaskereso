<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*, Control.Controller, java.util.ArrayList, java.util.List" %>
<html>
<head>
    <link rel="stylesheet" href="/style/stylesheet.css?ts=<?=time()?>">
    <title>Title</title>
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
                    }
                    out.print("<li><a href=\"/pages/profile.jsp\">Profil</a></li>");
                    out.print("<li><a href=\"/Logout\">Kijelentkezés</a></li>");
                }
            %>
        </ul>

    </div>
    <div class="tartalom">
        <%
            int column_n = 0;
            List<String> headings = new ArrayList<>();
            int size = control.customSQL("SELECT NEV, SZULETESI_DATUM, EMAIL, JELSZO FROM FIOKADATOK, SZEMELYES_ADATOK WHERE FIOKADATOK.SZEMELYES_ADATOK_ID = SZEMELYES_ADATOK.ID AND FIOKADATOK.EMAIL='"+session.getAttribute("login_id")+"'").size();
            ResultSet rs = null;
            if(size == 0){
            	rs=control.getResultSet("SELECT EMAIL, JELSZO FROM FIOKADATOK WHERE EMAIL='"+session.getAttribute("login_id")+"'");
            }else{
            	rs=control.getResultSet("SELECT NEV, SZULETESI_DATUM, EMAIL, JELSZO FROM FIOKADATOK, SZEMELYES_ADATOK WHERE FIOKADATOK.SZEMELYES_ADATOK_ID = SZEMELYES_ADATOK.ID AND FIOKADATOK.EMAIL='"+session.getAttribute("login_id")+"'");
            }
            try {

                column_n = rs.getMetaData().getColumnCount();
                for (int i = 1; i <= column_n; i++) {
                    headings.add(rs.getMetaData().getColumnName(i));
                }
                if (rs != null) {
                    while (rs.next()) {
                        
                        for(int j = 1; j<=column_n;j++){
                        	out.println(headings.get(j-1)+": "+ rs.getString(j));
                        	if(headings.get(j-1).toLowerCase().equals("jelszo")){
                        		out.print("<a href='/pages/edit_pass.jsp'>  | Módosítás</a>");
                        	}
                        	out.println("<br>");
                        }

                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </div>

</div>

</body>
</html>
