package com.sai.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RegisterDao {
    private String url = "jdbc:mysql://localhost:3306/tripplannerdb";
    private String username = "root";
    private String password = "avengers";
    
    private String sql = "INSERT INTO users(uname, pass, email) VALUES(?,?,?)";
    private String checkSql = "SELECT * FROM users WHERE uname = ?";
    
    public boolean registerUser(String uname, String pass, String email) throws ClassNotFoundException {
        try (Connection con = DriverManager.getConnection(url, username, password);
             PreparedStatement st = con.prepareStatement(sql)) {
            
            System.out.println("Preparing to insert data: " + uname + ", " + pass + ", " + email);  // Debug log
            
            st.setString(1, uname);
            st.setString(2, pass);  // Storing password in plain text (not recommended)
            st.setString(3, email);
            
            int result = st.executeUpdate();
            
            if (result > 0) {
                System.out.println("Data inserted successfully!");  // Debug log
            } else {
                System.out.println("No rows were inserted.");  // Debug log
            }
            
            return result > 0;
        } catch (SQLException e) {
            e.printStackTrace(); // Consider logging instead of printing stack trace
            return false;
        }
    }

    
    public boolean checkUserId(String uname) {
    	try (Connection con = DriverManager.getConnection(url, username, password);
                PreparedStatement st = con.prepareStatement(checkSql)) {

               st.setString(1, uname);
               ResultSet rs = st.executeQuery();
               return rs.next();
           } 
    	catch(SQLException e) 
    		{
               e.printStackTrace();
           }
           
           return false; 
    }
}
