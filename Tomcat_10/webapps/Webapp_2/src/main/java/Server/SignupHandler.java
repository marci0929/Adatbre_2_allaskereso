package Server;

import Control.Controller;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.awt.print.PrinterAbortException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;

@WebServlet("/SignupHandler")
public class SignupHandler extends HttpServlet {

    Controller ctrl = new Controller();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("username").trim();
        String pass = req.getParameter("pass").trim();
        String repass = req.getParameter("repass").trim();
        RequestDispatcher dispatcher;

        if(!pass.equals(repass)){
            dispatcher = req.getRequestDispatcher("/pages/signup.jsp");
            req.setAttribute("wrongpass", 1);
            dispatcher.forward(req, resp);
        }else{
            req.setAttribute("wrongpass", 0);
        }
        ArrayList<String[]> vanId = ctrl.customSQL("SELECT ID FROM FIOKADATOK WHERE EMAIL='"+email+"'");
        if(vanId.size()!=0){
            dispatcher = req.getRequestDispatcher("/pages/signup.jsp");
            req.setAttribute("wrongmail", 1);
            dispatcher.forward(req, resp);
        }else{
            req.setAttribute("wrongmail", 0);
        }
        String userType; // 1 = hirdető, 2 = kereső, 3 = diák
        int maxid;
        int szemelyes_adat_id = -1;
        if(req.getParameter("user_type").equals("hirdeto")){
            userType = "1";
        }else{
            if(req.getParameter("user_type").equals("diak")){
                userType="3";
            }else {
                userType = "2";
            }

            maxid=0;
            ArrayList<String[]> id_oszlop= ctrl.customSQL("SELECT ID FROM SZEMELYES_ADATOK");
            for (String[] i : id_oszlop){
                if(Integer.parseInt(i[0])>maxid) maxid = Integer.parseInt(i[0]);
            }
            maxid++;
            szemelyes_adat_id = maxid;
            ctrl.customSQL("INSERT INTO SZEMELYES_ADATOK VALUES ("+maxid+", 'Nev', TO_DATE('2022.01.01.', 'YYYY.MM.DD.')");
        }
        maxid=0;
        ArrayList<String[]> id_oszlop= ctrl.customSQL("SELECT ID FROM FIOKADATOK");
        for (String[] i : id_oszlop){
            if(Integer.parseInt(i[0])>maxid) maxid = Integer.parseInt(i[0]);
        }
        maxid++;
        ctrl.customSQL("INSERT INTO FIOKADATOK VALUES ("+maxid+", '"+email+"', '"+pass+"', "+userType+", "+
                (szemelyes_adat_id==-1?"null":szemelyes_adat_id)+", 0)");
        dispatcher = req.getRequestDispatcher("/index.jsp");
        dispatcher.forward(req, resp);

    }
}
