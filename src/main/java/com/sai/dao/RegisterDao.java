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
        try(Connection con = DriverManager.getConnection(url, username, password);
             PreparedStatement st = con.prepareStatement(sql)) {
            st.setString(1, uname);
            st.setString(2, pass);
            st.setString(3, email);
            int result = st.executeUpdate();
            return result > 0;
        } 
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        
        return false;
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
