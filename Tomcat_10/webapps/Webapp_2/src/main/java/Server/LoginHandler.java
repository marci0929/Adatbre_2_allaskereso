package Server;

import Control.Controller;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/LoginHandler")
public class LoginHandler extends HttpServlet {

    Controller ctrl = new Controller();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username").trim();
        String pass = req.getParameter("pass").trim();
        PrintWriter out = resp.getWriter();

        HttpSession sess = req.getSession();
        if(!username.equals("") && !pass.equals("")) {
            ArrayList<String[]> results = ctrl.customSQL("SELECT * FROM FIOKADATOK");
            boolean correct_creditentals = false;
            String admin_e = "0";
            for (String[] i : results){
                if(i[1].equals(username) && i[2].equals(pass)){
                    correct_creditentals = true;
                    if(i[5].equals("1")) admin_e = "1";
                    sess.setAttribute("fioktipus", i[4]);
                    break;
                }
            }
            if (correct_creditentals) {
                sess.setAttribute("login_id", username);
                sess.setAttribute("admin_e", admin_e);
                resp.sendRedirect("index.jsp");
            } else {
                out.print("Nem jó adatok");
            }
        }
        else {
            req.setAttribute("hiba", "nincs_kitoltve");
            resp.sendRedirect("login.jsp");
        }
    }
}
