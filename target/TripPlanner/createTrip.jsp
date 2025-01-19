<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    if (session == null || session.getAttribute("userId") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
    // Prevent browser caching
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Trip</title>
    <link rel="stylesheet" href="css/createTripStyle.css">
</head>
<body>
    <form action="createtrip" method="post">
        <fieldset>
            <legend>Create a New Trip</legend>
            
            <label for="tripName">Trip Name:</label>
            <input type="text" id="tripName" name="tripName" placeholder="Enter trip name" required>
            
            <label for="destination">Destination:</label>
            <input type="text" id="destination" name="destination" placeholder="Enter destination" required>
            
            <label for="startDate">Start Date:</label>
            <input type="date" id="startDate" name="startDate" required>
            
            <label for="endDate">End Date:</label>
            <input type="date" id="endDate" name="endDate" required>
            
            <label for="budget">Budget:</label>
            <input type="number" id="budget" name="budget" placeholder="Enter budget (₹)" min="0" required>
            
            <label for="participants">Participants (comma-separated emails):</label>
            <textarea id="participants" name="participants" rows="3" placeholder="e.g., user1@example.com, user2@example.com" required></textarea>
            
            <button type="submit">Create Trip</button>
        </fieldset>
    </form>
</body>
</html>
