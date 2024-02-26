/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.TimeZone;

/**
 *
 * @author Hazman
 */
public class DatabaseConnection {

    //TODO: Please change this as your mysql xammp setttings. Thank you
    private static final String DATABASE_CONNECTION = "jdbc:mysql://localhost:3306/dentalclinic?serverTimezone=" + TimeZone.getDefault().getID();
    private static final String DATABASE_USERNAME = "root";
    private static final String DATABASE_PASSWORD = "nbuser";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(DATABASE_CONNECTION, DATABASE_USERNAME, DATABASE_PASSWORD);
    }

}
