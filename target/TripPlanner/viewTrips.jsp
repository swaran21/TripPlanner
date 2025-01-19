<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>View Your Trips</title>
    <link rel="stylesheet" href="css/viewTrips.css">
</head>
<body>
    <div class="content">
        <h1>Your Trips</h1>

        <c:if test="${empty trips}">
            <p class="no-trips">No trips found. Start planning your next adventure!</p>
        </c:if>
        <c:if test="${not empty trips}">
            <table>
                <thead>
                    <tr>
                        <th>Trip Name</th>
                        <th>Destination</th>
                        <th>Start Date</th>
                        <th>End Date</th>
                        <th>Budget</th>
                        <th>Participants</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="trip" items="${trips}">
                        <tr>
                            <td>${trip.tripName}</td>
                            <td>${trip.destination}</td>
                            <td>${trip.startDate}</td>
                            <td>${trip.endDate}</td>
                            <td>${trip.budget}</td>
                            <td>${trip.participants}</td>
                            <td class="actions">
                                <form action="editTrip" method="get" style="display:inline;">
                                    <input type="hidden" name="id" value="${trip.id}" />
                                    <button type="submit" class="edit-btn">Edit</button>
                                </form>
                                <form action="deleteTrip" method="post" style="display:inline;">
                                    <input type="hidden" name="id" value="${trip.id}" />
                                    <button type="submit" class="delete-btn" onclick="return confirm('Are you sure you want to delete this trip?');">Delete</button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
    </div>
</body>
</html>
