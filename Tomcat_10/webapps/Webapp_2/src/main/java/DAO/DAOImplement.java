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
            con = odc.getConnection("C##ADATB", "pass");
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public ArrayList<String[]> SQL_EXEC(String sqlStatement) {

        ArrayList<String[]> list = new ArrayList<>();
        try {
            Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = st.executeQuery(sqlStatement);
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
            System.out.println("Result set processed.");
        }
        return list;
    }

    public void SQL_INSERT(String insertStatement){
        try {
            Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            st.executeQuery(insertStatement);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public ResultSet getResultSet(String sqlStatement){
        ResultSet rs = null;
        try {
            Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = st.executeQuery(sqlStatement);
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;
    }


    public ArrayList<String> getTableNames(){
        ArrayList<String> tableNames = new ArrayList<>();
        try {
            DatabaseMetaData md = con.getMetaData();
            ResultSet rs = md.getTables("ADATB_DB", "C##ADATB", "%", new String[]{"TABLE"});
            while (rs.next()) {
                tableNames.add(rs.getString(3));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return tableNames;
    }
}
