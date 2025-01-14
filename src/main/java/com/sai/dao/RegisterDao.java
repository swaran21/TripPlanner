package com.sai.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class RegisterDao {
	private String url = "jdbc:mysql://localhost:3306/login_register_project";
	private String username = "root";
	private String password="avengers";
	
	private String sql = "INSERT INTO users(uname,pass,email) VALUES(?,?,?)";
	
	public boolean registerUser(String uname,String pass,String email)  throws ClassNotFoundException{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			con.setAutoCommit(true);
			PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, uname);
            st.setString(2, pass);
            st.setString(3, email);
            int result = st.executeUpdate();
            con.close();
            return result>0;
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
}
