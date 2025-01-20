package com.sai.project;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/")
public class IndexServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1090788102818507556L;

	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Redirect to index.jsp
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
