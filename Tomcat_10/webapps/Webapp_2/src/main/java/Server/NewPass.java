package Server;

import Control.Controller;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/NewPass")
public class NewPass extends HttpServlet {

    Controller ctrl = new Controller();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pass = req.getParameter("newpass");
        String passcheck = req.getParameter("newpasscheck");

        if(pass!="" && passcheck!=""){
            ctrl.customSQL("UPDATE FIOKADATOK SET JELSZO='"+pass+"' WHERE EMAIL='"+req.getSession().getAttribute("login_id")+"'");
            req.getRequestDispatcher("/pages/profile.jsp").forward(req, resp);
        }
    }
}
