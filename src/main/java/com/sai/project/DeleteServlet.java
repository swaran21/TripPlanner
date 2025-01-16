package com.sai.project;

import java.io.IOException;

import com.sai.dao.TripDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/deleteTrip")
public class DeleteServlet extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    private TripDao tripDao = new TripDao();
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
 
    	res.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
        res.setHeader("Pragma", "no-cache");
        res.setDateHeader("Expires", 0);
        
        HttpSession session = req.getSession(false);
        if (session == null || session.getAttribute("userId") == null) {
            res.getWriter().println("You must be logged in to delete a trip.");
            return;
        }
        
        String idParam = req.getParameter("id");
        
        if (idParam == null || idParam.isEmpty()) {
            res.getWriter().println("Invalid Trip ID");
            return;
        }

        try {
            int tripId = Integer.parseInt(idParam);
            
            boolean isDeleted = tripDao.deleteTrip(tripId);
            
            if (isDeleted) {
                res.sendRedirect("viewTrip");
            } else {
                res.getWriter().println("Error deleting the trip. Please try again.");
            }
        } catch (NumberFormatException e) {
            res.getWriter().println("Invalid Trip ID format");
        } catch (Exception e) {
            e.printStackTrace();
            res.getWriter().println("Database error occurred.");
        }
    }
}
