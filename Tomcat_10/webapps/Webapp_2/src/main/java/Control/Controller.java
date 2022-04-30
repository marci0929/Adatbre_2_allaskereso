package Control;

import DAO.DAOImplement;


import java.lang.reflect.Array;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Controller {

    DAOImplement dao = new DAOImplement();

    public Controller(){

    }

    public ArrayList<String[]> customSQL(String statement){
        return dao.SQL_EXEC(statement);
    }

    public ResultSet getResultSet(String statement){
        return dao.getResultSet(statement);
    }

    public void SQLInsertStatement(String statement){
        dao.SQL_INSERT(statement);
    }

    public ArrayList<String> getTableNames(){
        return dao.getTableNames();
    }

}
