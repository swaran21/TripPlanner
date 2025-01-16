package com.sai.project;

import java.io.IOException;

import com.sai.classes.EditTrip;
import com.sai.dao.TripDao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/editTrip")
public class EditTripServlet extends HttpServlet {

    private static final long serialVersionUID = -7331968780909857729L;
    private TripDao tripDao = new TripDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    	
    	 res.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
         res.setHeader("Pragma", "no-cache");
         res.setDateHeader("Expires", 0);
    	
        String idParam = req.getParameter("id");

        if (idParam == null || idParam.isEmpty()){
            res.getWriter().println("Invalid Trip ID");
            return;
        }

        try {
            int tripId = Integer.parseInt(idParam);
            EditTrip trip = tripDao.getTripById(tripId);

            if (trip == null){
                res.getWriter().println("Trip not found for the provided ID.");
                return;
            }

            req.setAttribute("trip", trip);
            RequestDispatcher dispatcher = req.getRequestDispatcher("editTrip.jsp");
            dispatcher.forward(req, res);

        } 
        catch (NumberFormatException e){
            res.getWriter().println("Invalid Trip ID format");
        } 
        catch (ClassNotFoundException e){
            e.printStackTrace();
            res.getWriter().println("Database error occurred.");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int id;
        double budget;
        
        res.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
        res.setHeader("Pragma", "no-cache");
        res.setDateHeader("Expires", 0);

        try{
            id = Integer.parseInt(req.getParameter("trip_id"));
            budget = Double.parseDouble(req.getParameter("budget"));
        } 
        catch (NumberFormatException e){
            res.getWriter().println("Invalid data format.");
            return;
        }

        String tripName = req.getParameter("tripName");
        String destination = req.getParameter("destination");
        String startDate = req.getParameter("startDate");
        String endDate = req.getParameter("endDate");
        String participants = req.getParameter("participants");

        EditTrip trip = new EditTrip(id, tripName, destination, startDate, endDate, budget, participants);

        try
        {
            boolean isUpdated = tripDao.updateTrip(trip);
            if (isUpdated) 
            {
                res.sendRedirect("viewTrip");
            } 
            else 
            {
                res.getWriter().println("Error updating trip. Please try again.");
            }
        } 
        catch (ClassNotFoundException e) 
        {
            e.printStackTrace();
            res.getWriter().println("Database error!");
        }
    }
}