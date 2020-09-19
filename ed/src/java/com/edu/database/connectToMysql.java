
package com.edu.database;

import java.sql.*;

public class connectToMysql {
   public static Connection initializeDatabase()throws SQLException, ClassNotFoundException{
    Connection con;
    String ulr = "jdbc:mysql://localhost:3306/edu", user = "root", pass = "admin";
    Class.forName("com.mysql.cj.jdbc.Driver");
    con = DriverManager.getConnection(ulr, user, pass);
    return con;
   } 
}
