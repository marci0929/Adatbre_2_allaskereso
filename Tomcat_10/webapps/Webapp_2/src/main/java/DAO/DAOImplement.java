package DAO;

import Server.TomcatServerHandler;
import oracle.jdbc.pool.OracleDataSource;

import java.sql.*;
import java.util.ArrayList;

public class DAOImplement {

    public DAOImplement() {

    }

    public ArrayList<String[]> SELECT(String sqlStatement) {
        ResultSet rs = null;
        ArrayList<String[]> list = new ArrayList<String[]>();

        try {
            OracleDataSource odc = new OracleDataSource();
            odc.setURL("jdbc:oracle:thin:@localhost:1521:xe");
            Connection con = odc.getConnection("C##teszt", "pass");
            Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = st.executeQuery(sqlStatement);
            //innen
            ResultSet resultSet = rs;
            int columnCount = resultSet.getMetaData().getColumnCount();
            TomcatServerHandler.col_count = columnCount;

            while (resultSet.next()) {
                String[] values = new String[columnCount];
                for (int i = 1; i <= columnCount; i++) {
                    values[i - 1] = resultSet.getString(i);
                }
                list.add(values);
            }

            //idaig

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
