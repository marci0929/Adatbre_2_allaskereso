package Server;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.cglib.proxy.Dispatcher;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/LoginHandler")
public class LoginHandler extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username").trim();
        String pass = req.getParameter("pass").trim();
        PrintWriter out = resp.getWriter();

        RequestDispatcher requestDispatcher;

        HttpSession sess = req.getSession();

        if(username.equals("valaki") && pass.equals("password")){
            sess.setAttribute("login_id", "bejelentkezett_felhasznalo");
            requestDispatcher = req.getRequestDispatcher("index.jsp");
            requestDispatcher.forward(req, resp);
        }
        else{
            out.print("Nem jó adatok");
        }
    }
}
