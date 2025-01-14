package com.sai.project;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

import com.sai.dao.LoginDao;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 290578973231674218L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");

        LoginDao dao = new LoginDao();
        try {
            if (dao.check(uname, pass)) {
                HttpSession session = request.getSession();
                session.setAttribute("username", uname);
                session.setAttribute("userId",dao.getUserId(uname));
                response.sendRedirect("welcome.jsp");
            } else {
                response.sendRedirect("login.jsp?error=invalid");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
