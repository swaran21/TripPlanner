<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>View Your Trips</title>
    <style>
        body {
		    font-family: Arial, sans-serif;
		    background: linear-gradient(to bottom, #74ebd5, #9face6);
		    padding: 20px;
		}
		
		/* Container for the page content */
		.content {
		    max-width: 1200px;
		    margin: 0 auto;
		    background-color: white;
		    padding: 20px;
		    border-radius: 10px;
		    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
		}
		
		/* Heading styling */
		h1 {
		    text-align: center;
		    color: #4CAF50;
		}
		
		/* Table styling */
		table {
		    border-collapse: collapse;
		    width: 100%;
		    margin-top: 20px;
		}
		
		table th, table td {
		    border: 1px solid #ddd;
		    padding: 10px;
		    text-align: center;
		}
		
		table th {
		    background-color: #f2f2f2;
		}
		
		/* No trips message styling */
		.no-trips {
		    text-align: center;
		    color: gray;
		    margin-top: 20px;
		}
		
		/* Action buttons styling */
		form button {
		    background-color: #4CAF50;
		    color: white;
		    padding: 5px 10px;
		    margin-top: 5px;
		    border: none;
		    border-radius: 5px;
		    cursor: pointer;
		    transition: background-color 0.3s ease;
		}
		
		form button:hover {
		    background-color: #45a049;
		}
		
		/* Responsive design for smaller screens */
		@media (max-width: 600px) {
		    .content {
		        width: 90%;
		    }
		
		    table {
		        font-size: 14px;
		    }
		
		    form button {
		        padding: 10px 15px;
		    }
		}
    </style>
</head>
<body>
    <h1>Your Trips</h1>

    <!-- Check if the trips list is empty -->
    <c:if test="${empty trips}">
        <p class="no-trips">No trips found. Start planning your next adventure!</p>
    </c:if>

    <!-- Display trips if not empty -->
    <c:if test="${not empty trips}">
        <table>
            <tr>
                <th>Trip Name</th>
                <th>Destination</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Budget</th>
                <th>Participants</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="trip" items="${trips}">
                <tr>
                    <td>${trip.tripName}</td>
                    <td>${trip.destination}</td>
                    <td>${trip.startDate}</td>
                    <td>${trip.endDate}</td>
                    <td>${trip.budget}</td>
                    <td>${trip.participants}</td>
                    <td>
                        <!-- Edit button -->
                        <form action="editTrip" method="get" style="display:inline;">
						    <input type="hidden" name="id" value="${trip.id}" />
						    <button type="submit">Edit</button>
						</form>

                        
                        <!-- Delete button -->
                        <form action="deleteTrip" method="post" style="display:inline;">
                            <input type="hidden" name="id" value="${trip.id}" />
                            <button type="submit" onclick="return confirm('Are you sure you want to delete this trip?');">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</body>
</html>
