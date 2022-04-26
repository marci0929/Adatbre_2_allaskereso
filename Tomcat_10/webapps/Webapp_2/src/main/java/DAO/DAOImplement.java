package DAO;

import Server.TomcatServerHandler;
import oracle.jdbc.pool.OracleDataSource;

import java.sql.*;
import java.util.ArrayList;

public class DAOImplement {
    OracleDataSource odc;
    Connection con;

    public DAOImplement() {
        try {
            odc = new OracleDataSource();
            odc.setURL("jdbc:oracle:thin:@localhost:1521:xe");
            con = odc.getConnection("C##teszt", "pass");
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public ArrayList<String[]> SQL_EXEC(String sqlStatement) {

        ArrayList<String[]> list = new ArrayList<String[]>();
        try {
            Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = st.executeQuery(sqlStatement);
            //innen
            int columnCount = rs.getMetaData().getColumnCount();
            TomcatServerHandler.col_count = columnCount;

            while (rs.next()) {
                String[] values = new String[columnCount];
                for (int i = 1; i <= columnCount; i++) {
                    values[i - 1] = rs.getString(i);
                }
                list.add(values);
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public ArrayList<String> getTableNames(){
        ArrayList<String> tableNames = new ArrayList<>();
        try {
            DatabaseMetaData md = con.getMetaData();
            ResultSet rs = md.getTables(null, null, "%", null);
            while (rs.next()) {
                tableNames.add(rs.getString(3));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return tableNames;
    }
}
