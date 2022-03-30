package Server;

import Control.Controller;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;

@WebServlet("/TomcatServer")
public class TomcatServer extends HttpServlet {

    Controller ctrl = new Controller();
    public static int col_count=0;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        ArrayList<String[]> results = ctrl.customSQL(req.getParameter("parancs"));
        out.println("<table style=\"border: 1px solid black; border-collapse: collapse;\">");
        try {
                for (String[] a : results) {
                    out.println("<tr style=\"border: 1px solid black;\">");
                    for (int i = 0; i < col_count; i++) {
                        out.println("<td style=\"border: 1px solid black;\">");
                        out.print(a[i]);
                        out.println("</td>");
                    }
                    out.println("</tr>");
                }
            out.println("</table>");

        }catch (Exception e){
            out.println("Hiba az SQL lekérdezésben!");
        }

    }

}
