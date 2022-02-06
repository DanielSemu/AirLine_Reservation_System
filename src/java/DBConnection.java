
import java.sql.*;

public class DBConnection {
// JDBC driver name and database URL

   
    private static final String url = "jdbc:mysql://localhost:3306/airline_reservation";
    private static final String user = "root";
    private static final String password = "";
    private static final String driver = "com.mysql.jdbc.Driver";
    //  Database credentials
    
    Connection con = null;

    public Connection Connection() throws ClassNotFoundException, SQLException {
        Class.forName(driver);
        System.out.println("Connecting to a selected database...");
        con = DriverManager.getConnection(url, user, password);
        if (con != null) {
            System.out.println("Connected database successfully...");
        } else {
            System.out.println("nFailed to connect to Oracle DB");
        }
        return con;
    }
}
