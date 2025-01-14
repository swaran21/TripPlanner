package com.sai.project;

import java.io.IOException;

import com.sai.dao.RegisterDao;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/register")
public class RegisterServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4877908800115822363L;

	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		String uname = req.getParameter("uname");
		String pass = req.getParameter("pass");
		String email = req.getParameter("email");
		
		System.out.println("Username: " + uname + ", Password: " + pass + ", Email: " + email);
		
		RegisterDao dao = new RegisterDao();
		
		try {
            if (dao.registerUser(uname, pass, email)) {
                res.sendRedirect("login.jsp");
            } else {
                res.getWriter().println("Registration failed. Please try again.");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
		
	}
}
