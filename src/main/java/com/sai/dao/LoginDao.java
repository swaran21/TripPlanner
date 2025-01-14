package com.sai.dao;

import java.sql.*;

public class LoginDao {
    String sql = "SELECT * FROM users WHERE uname = ? AND pass = ?";
    String url = "jdbc:mysql://localhost:3306/login_register_project";
    String username = "root";
    String password = "avengers";

    public boolean check(String uname, String pass) throws ClassNotFoundException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, uname);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    public int getUserId(String uname) throws ClassNotFoundException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            String query = "SELECT id FROM users WHERE uname = ?";
            PreparedStatement st = con.prepareStatement(query);
            st.setString(1, uname);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getInt("id");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }
}
