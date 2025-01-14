package com.sai.project;

import java.io.IOException;

import com.sai.dao.TripDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/createtrip")
public class CreateTripServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = -2936532896705159100L;
	
	@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String tripName = req.getParameter("tripName");
		String destination = req.getParameter("destination");
		String startDate = req.getParameter("startDate");
		String endDate = req.getParameter("endDate");
		double budget = Double.parseDouble(req.getParameter("budget"));
		String participants = req.getParameter("participants");
		
		Integer userId = (Integer) req.getSession().getAttribute("userId");
		if (userId == null) {
            res.sendRedirect("login.jsp");
            return;
        }
		TripDao tripDao = new TripDao();
		boolean isSuccess = false;
		try {
			isSuccess = tripDao.createTrip(userId,tripName,destination,startDate,endDate,budget,participants);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(isSuccess) {
			res.getWriter().println("Trip Created Successfully");
		}
		else {
			res.getWriter().println("Failed to create trip.");
		}
		
	}
}
