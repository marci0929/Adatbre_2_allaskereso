import oracle.jdbc.pool.OracleDataSource;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Controller {


    public static void main(String[] args) throws SQLException {
        ResultSet rs;
        OracleDataSource odc = new OracleDataSource();
        odc.setURL("jdbc:oracle:thin:@localhost:1521:xe");
        Connection con = odc.getConnection("system", "admin");
        Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
        String sql = "SELECT * FROM ALLAS";
        rs = st.executeQuery(sql);
        while(rs.next()) System.out.println(rs.getString(2));
    }
}
