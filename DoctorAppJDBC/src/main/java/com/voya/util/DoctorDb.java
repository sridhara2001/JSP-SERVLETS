package com.voya.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DoctorDb {
	static Connection connection;
    public static Connection openConnection(){
    	
    	try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
    	
        String url = "jdbc:mysql://localhost:3306/voyatraining";
        String name = "root";
        String password = "root";
        try {
            connection = DriverManager.getConnection(url,name,password);
            System.out.println("Connected to database");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }
}
