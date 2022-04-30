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
            ResultSet rs=control.getResultSet("SELECT FIOKADATOK.NEV, FIOKADATOK.SZULETESI_DATUM, FIOKADATOK.EMAIL, FIOKADATOK.JELSZO FROM FIOKADATOK, SZEMELYES_ADATOK WHERE FIOKADATOK.SZEMELYES_ADATOK_ID = SZEMELYES_ADATOK.ID AND FIOKADATOK.EMAIL='"+session.getAttribute("login_id")+"'");
            try {

                column_n = rs.getMetaData().getColumnCount();
                for (int i = 1; i <= column_n; i++) {
                    headings.add(rs.getMetaData().getColumnName(i));
                }
                out.println("<table style='border:1px solid #ccc; border-collapse:collapse;background-color: lightcyan;'>");
                out.println("<thead>");
                out.println("<tr style='border: 1px solid black;'>");
                for (String columnheading : headings) {
                    out.println("<th style='border: 1px solid black;padding:4px;'>" + columnheading + "</th>");
                }
                out.println("</tr>");
                out.println("</thead>");
                out.println("<tbody>");
                if (rs != null) {
                    while (rs.next()) {
                        out.println("<tr>");
                        for(int j = 1; j<=column_n;j++) out.println("<td style='border: 1px solid black;padding:4px;'>"+rs.getString(j)+"</td>");
                        out.println("</tr>");

                    }
                }
                out.println("</tbody>");
                out.println("</table>");
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </div>

    <div class="tartalom">
    </div>

</div>

</body>
</html>
