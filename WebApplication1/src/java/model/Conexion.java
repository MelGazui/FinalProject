package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

// V2
public class Conexion {

    private Statement sen;
    private final Connection con;

    public Conexion(String bd) throws ClassNotFoundException, SQLException {
        String url = "jdbc:mysql://localhost/" + bd + "?characterEncoding=utf8&user=root&password=";
        System.out.println(url);
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url);
    }

   protected ResultSet ejecutar(String query) throws SQLException {
        System.out.println(query);
        sen = con.createStatement();

        if (
            query.toLowerCase().startsWith("insert") || 
            query.toLowerCase().startsWith("update") ||
            query.toLowerCase().startsWith("delete")
        ) {
            sen.executeUpdate(query);
            close();
            return null;
        }
            
        return sen.executeQuery(query);
    }

    protected void close() throws SQLException {
        sen.close();
    }
}