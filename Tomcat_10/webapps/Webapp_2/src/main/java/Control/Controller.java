package Control;

import DAO.DAOImplement;

import java.sql.ResultSet;
import java.util.ArrayList;

public class Controller {

    DAOImplement dao = new DAOImplement();

    public Controller(){

    }

    public ArrayList<String[]> customSQL(String statement){
        return dao.SELECT(statement);
    }

    public ArrayList<String[]> selectfrom(){

        return dao.SELECT("SELECT * FROM ALLAS");
    }

}
