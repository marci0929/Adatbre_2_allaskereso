package DAO;

import oracle.jdbc.pool.OracleDataSource;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DAOImplement {

    public DAOImplement() {

    }

    public ArrayList<String> SELECT(String sqlStatement) {
        ResultSet rs;
        ArrayList<String> list = new ArrayList<String>();

        try {
            OracleDataSource odc = new OracleDataSource();
            odc.setURL("jdbc:oracle:thin:@localhost:1521:xe");
            Connection con = odc.getConnection("system", "admin");
            Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
            sqlStatement = "SELECT * FROM ALLAS";
            rs = st.executeQuery(sqlStatement);
            while (rs.next()) list.add(rs.getString(2));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
