package Server;

import Control.Controller;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

@WebServlet("/TableManager")
public class TableManager extends HttpServlet {

    Controller control = new Controller();
    RequestDispatcher requestDispatcher;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String todo = req.getParameter("todo");
        int success = 0;
        switch(todo){
            case "delete":
                delete(req.getParameter("table_select"), req.getParameter("delete_btn"));
                success = 1;
                break;
            case "update":
                //update
                success = 2;
                break;
            case "new_record":
                newRecord(req.getParameter("table_select"), req);
                success = 3;
            default:
                resp.getWriter().println("Szar kerult a palacsintaba");
        }
        if ( success != 0 ){
            resp.sendRedirect("/pages/edit_table.jsp?table_select="+req.getParameter("table_select"));
        }
        else{
            resp.getWriter().println("Nem sikerult valami");
        }
    }

    public void delete(String table, String id){
        control.customSQL("DELETE FROM "+table+" WHERE id="+id);
    }

    public void newRecord(String table, HttpServletRequest req){
        int column_n = 0;
        List<String> headings = new ArrayList<>();
        ResultSet rs = null;
        StringBuilder insert = new StringBuilder("INSERT INTO " + table + " (");
        try {
            rs = control.getResultSet("SELECT * FROM " + table);
            column_n = rs.getMetaData().getColumnCount();
            for (int i = 1; i <= column_n; i++) {
                headings.add(rs.getMetaData().getColumnName(i));
            }
            int curr_col = 1;
            for (String heading : headings){
                if(req.getParameter(heading) != null){
                    if(curr_col != column_n){
                        insert.append(heading).append(", ");
                    }else{
                        insert.append(heading).append(") VALUES (");
                    }
                }
                curr_col++;
            }
            curr_col = 1;
            for (String heading : headings){
                if(req.getParameter(heading) != null){
                    if(curr_col != column_n){
                        if(rs.getMetaData().getColumnType(curr_col) == Types.NUMERIC) {
                            insert.append(req.getParameter(heading)).append(", ");
                        }else{
                            insert.append("'").append(req.getParameter(heading)).append("'").append(", ");
                        }
                    }else{
                        if(rs.getMetaData().getColumnType(curr_col) == Types.NUMERIC) {
                            insert.append(req.getParameter(heading)).append(")");
                        }else{
                            insert.append("'").append(req.getParameter(heading)).append("'").append(")");
                        }
                    }
                }
                curr_col++;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        control.SQLInsertStatement(insert.toString());

        /*
            INSERT INTO table_name (column1, column2, column3, ...) VALUES (value1, value2, value3, ...);
         */
    }
}
