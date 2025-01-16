package com.sai.project;

import java.io.IOException;
import java.util.List;

import com.sai.classes.Trip;
import com.sai.dao.TripDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/viewTrip")
public class ViewTripsServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	 @Override
	    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	        processRequest(req, res);
	    }

	    @Override
	    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	        processRequest(req, res);
	    }

	    private void processRequest(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	        HttpSession session = req.getSession(false);
	        if (session == null || session.getAttribute("userId") == null)
	        {
	            res.sendRedirect("login.jsp");
	            return;
	        }

	        Integer userId = (Integer) session.getAttribute("userId");
	        System.out.println("Logged-in userId: " + userId);

	        TripDao tripDao = new TripDao();

	        try 
	        {
	            List<Trip> trips = tripDao.getTripDetails(userId);
	            System.out.println("Trips retrieved: " +trips.size());
	            req.setAttribute("trips", trips);
	        } 
	        catch (ClassNotFoundException e) 
	        {
	            e.printStackTrace();
	        }

	        req.getRequestDispatcher("viewTrips.jsp").forward(req, res);
	    }
}