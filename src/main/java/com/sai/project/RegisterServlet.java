package com.sai.project;

import java.io.IOException;

import com.sai.dao.RegisterDao;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet{

    private static final long serialVersionUID = -4877908800115822363L;

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
    	
    	res.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
        res.setHeader("Pragma", "no-cache");
        res.setDateHeader("Expires", 0);
    	
        String uname = req.getParameter("uname");
        String pass = req.getParameter("pass");
        String email = req.getParameter("email");
        
        System.out.println("Username: " + uname + ", Password: " + pass + ", Email: " + email);
        
        RegisterDao dao = new RegisterDao();
        
        try {
        	
        	if (dao.checkUserId(uname)){
                res.getWriter().println("Username already exists. Please choose another.");
                return;
            }
        	boolean registered = dao.registerUser(uname, pass, email); 
        	System.out.println("User registration status: "+ registered);
            if (registered)
            {
                res.sendRedirect("login.jsp");
            } 
            else 
            {
                res.getWriter().println("Registration failed. Please try again.");
            }
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
    }
}
