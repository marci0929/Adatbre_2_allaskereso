package Control;

import DAO.DAOImplement;

import java.util.ArrayList;

public class Controller {

    DAOImplement dao = new DAOImplement();

    public Controller(){

    }

    public ArrayList<String> selectfrom(){
        ArrayList<String> mystr = dao.SELECT("");
        /*
        for (String a:mystr){
            System.out.println(a);
        }

         */
        return mystr;
    }

}
