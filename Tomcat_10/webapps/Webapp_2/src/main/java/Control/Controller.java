package Control;

import DAO.DAOImplement;


import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Controller {

    DAOImplement dao = new DAOImplement();
    List<String> valid_tables;

    public List<String> getValid_tables() {
        return valid_tables;
    }

    public Controller(){
        valid_tables = Arrays.asList("allas", "diak_felhasznalo", "diakszovetkezet", "diakszovetkezetnel_van",
                "egyeb_feltetelek", "fiokadatok", "helyszin", "hirdeto", "iskola", "jelentkezok", "kapcsolat",
                "munkakor", "normal_felhasznalo", "regisztralt_allasok", "szemelyes_adatok", "vallalat", "vegzettseg");
    }

    public ArrayList<String[]> customSQL(String statement){
        return dao.SQL_EXEC(statement);
    }

    public ArrayList<String> getTableNames(){
        return dao.getTableNames();
    }

}
