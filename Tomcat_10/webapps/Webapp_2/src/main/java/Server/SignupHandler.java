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
import java.util.Date;

@WebServlet("/SignupHandler")
public class SignupHandler extends HttpServlet {

    Controller ctrl = new Controller();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name").trim();
        String date = req.getParameter("date");
        String username = req.getParameter("username").trim();
        String pass = req.getParameter("pass").trim();
        String repass = req.getParameter("repass").trim();
        PrintWriter out = resp.getWriter();

        HttpSession sess = req.getSession();

    }
}
