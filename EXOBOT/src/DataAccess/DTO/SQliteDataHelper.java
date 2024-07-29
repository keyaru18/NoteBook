package DataAccess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public abstract class SQliteDataHelper {
    private static String DBPathConnection = "jdbc:slite:database//ExaBot2k24.sqlite";
    private static Connection conn = null;
    //protected SQLDtaHelper(){}

    protected static synchronized Connection openconnection() throws Exception{
        try{
            if(conn == null)
                conn = DriverManager.getConnection(DBPathConnection);
        }cath (SQLException e) {
            throw e ;
        }
        return conn;
    }
    protected static void closeConnection() throws Exception{
        try {
            if (conn != null)
                conn.close();
        }cath (Exception e) {
            throw e;       
        }
    }
}