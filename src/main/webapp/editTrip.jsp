<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Trip</title>
    <link rel="stylesheet" href="css/editTripStyle.css">
</head>
<body>
    <h2>Edit Trip</h2>
    <form action="editTrip" method="post">
        <c:if test="${not empty trip}">
            <input type="hidden" name="trip_id" value="${trip.id}" />
            
            <label for="tripName">Trip Name:</label>
            <input type="text" id="tripName" name="tripName" value="${trip.tripName}" required /><br><br>
            
            <label for="destination">Destination:</label>
            <input type="text" id="destination" name="destination" value="${trip.destination}" required /><br><br>
            
            <label for="startDate">Start Date:</label>
            <input type="date" id="startDate" name="startDate" value="${trip.startDate}" required /><br><br>
            
            <label for="endDate">End Date:</label>
            <input type="date" id="endDate" name="endDate" value="${trip.endDate}" required /><br><br>
            
            <label for="budget">Budget:</label>
            <input type="number" id="budget" step="0.01" name="budget" value="${trip.budget}" required /><br><br>
            
            <label for="participants">Participants:</label>
            <textarea id="participants" name="participants" required>${trip.participants}</textarea><br><br>
            
            <input type="submit" value="Update Trip" />
        </c:if>
        <c:if test="${empty trip}">
            <p>Invalid trip data.</p>
        </c:if>
    </form>
</body>
</html>
