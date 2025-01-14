package com.sai.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.sai.classes.EditTrip;
import com.sai.classes.Trip;


public class TripDao {
	
	private static final String url = "jdbc:mysql://localhost:3306/login_register_project";
	private static final String username = "root";
	private static final String password = "avengers";
	
	public boolean createTrip(int userId,String tripName,String destination,String startDate, String endDate, double budget, String participants) throws ClassNotFoundException {
		String sql = "INSERT INTO trips(user_id,trip_name,destination,start_date,end_date,budget,participants) VALUES (?, ?, ?, ?, ?, ?, ?)";
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			
			st.setInt(1, userId);
            st.setString(2, tripName);
            st.setString(3, destination);
            st.setString(4, startDate);
            st.setString(5, endDate);
            st.setDouble(6, budget);
            st.setString(7, participants);
			
            return st.executeUpdate() > 0;
		}
		catch (SQLException e) {
	        // Log exception details
	        e.printStackTrace();
	        return false;
		}
			
	}
	
	public List<Trip> getTripDetails(int userId) throws ClassNotFoundException{
		List<Trip> trips = new ArrayList<>();
		String sql = "SELECT * FROM trips WHERE user_id = ?";
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			
			st.setInt(1, userId);
			
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				Trip trip = new Trip();
				trip.setId(rs.getInt("trip_id"));
				trip.setTripName(rs.getString("trip_name"));
                trip.setDestination(rs.getString("destination"));
                trip.setStartDate(rs.getString("start_date"));
                trip.setEndDate(rs.getString("end_date"));
                trip.setBudget(rs.getDouble("budget"));
                trip.setParticipants(rs.getString("participants"));
                
                trips.add(trip);
			}
		}
		catch (SQLException e) {
	        e.printStackTrace();
		}
		
		return trips;
	}
	
	public EditTrip getTripById(int trip_id) throws ClassNotFoundException {
		String sql = "SELECT * FROM trips WHERE trip_id = ?";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1,trip_id);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				return new EditTrip(
						rs.getInt("trip_id"),
	                    rs.getString("trip_name"),
	                    rs.getString("destination"),
	                    rs.getString("start_date"),
	                    rs.getString("end_date"),
	                    rs.getDouble("budget"),
	                    rs.getString("participants")
				);
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public boolean updateTrip(EditTrip trip) throws ClassNotFoundException {
		String sql = "UPDATE trips SET trip_name = ?, destination = ?, start_date = ?, end_date = ?, budget = ?, participants = ? WHERE trip_id = ?";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, trip.getTripName());
            st.setString(2, trip.getDestination());
            st.setString(3, trip.getStartDate());
            st.setString(4, trip.getEndDate());
            st.setDouble(5, trip.getBudget());
            st.setString(6, trip.getParticipants());
            st.setInt(7, trip.getId());
            return st.executeUpdate() > 0;
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
}
