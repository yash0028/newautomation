package ui_test.page.pagehelpers;

import java.sql.*;

public class DataConnection {

    public void LoadDriver() {

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
            // The newInstance() call is a work around for some
            // broken Java implementations

            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/test?" + "user=minty&password=greatsqldb");
            System.out.println("Connection established");
            stmt = conn.createStatement();
            rs = stmt.executeQuery("SELECT foo FROM bar");

        } catch (Exception ex) {
            System.out.println("SQLException: " + ex.getMessage());

        } finally {

            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException sqlEx) {
                } // ignore

                rs = null;
            }

            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException sqlEx) {
                } // ignore

                stmt = null;
            }
        }
    }
}//End of class
