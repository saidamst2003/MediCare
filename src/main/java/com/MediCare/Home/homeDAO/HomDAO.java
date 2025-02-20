package com.MediCare.Home.homeDAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class HomDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/MediCare";
    private static final String USER = "root";
    private static final String PASSWORD = "123456";

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            throw new SQLException("Database driver not found", e);
        }
    }
}
