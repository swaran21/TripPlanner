<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%
    if (session == null || session.getAttribute("userId") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
    //response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    //response.setHeader("Pragma", "no-cache");
    //response.setDateHeader("Expires", 0);
%>   
 
<!DOCTYPE html>
<html>
<head>
    <title>Trip Planner</title>
    <link rel="stylesheet" href="css/createTripStyle.css">
</head>
<body>
    
    <form action="createtrip" method="post">
        <fieldset>
            <legend>Trip Details</legend>
            
            <label for="tripName">Trip Name:</label>
            <input type="text" id="tripName" name="tripName"required><br><br>
            
            <label for="destination">Destination:</label>
            <input type="text" id="destination" name="destination"required><br><br>
            
            <label for="startDate">Start Date:</label>
            <input type="date" id="startDate" name="startDate"required><br><br>
            
            <label for="endDate">End Date:</label>
            <input type="date" id="endDate" name="endDate" required><br><br>
            
            <label for="budget">Budget:</label>
            <input type="number" id="budget" name="budget" min="0" required><br><br>
            
            <label for="participants">Participants (comma-separated-emails):</label>
            <textarea id="participants" name="participants" rows="3" cols="40" required></textarea><br><br>
            
            <button type="submit">Create Trip</button>
        </fieldset>
    </form>
</body>
</html>
