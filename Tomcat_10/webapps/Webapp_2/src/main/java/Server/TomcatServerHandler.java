package Server;

import Control.Controller;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/TomcatServerHandler")
public class TomcatServerHandler extends HttpServlet {

    Controller ctrl = new Controller();
    public static int col_count=0;



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        ArrayList<String[]> results = ctrl.customSQL(req.getParameter("parancs"));
        out.println("");


    }

}
