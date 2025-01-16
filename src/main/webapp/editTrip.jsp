<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Trip</title>
    <link rel="stylesheet" href="css/editTripStyle.css">
</head>
<body>
    <div class="container">
        <h2>Edit Trip</h2>
        <form action="editTrip" method="post">
            <c:if test="${not empty trip}">
                <input type="hidden" name="trip_id" value="${trip.id}" />

                <div class="form-group">
                    <label for="tripName">Trip Name:</label>
                    <input type="text" id="tripName" name="tripName" value="${trip.tripName}" required />
                </div>

                <div class="form-group">
                    <label for="destination">Destination:</label>
                    <input type="text" id="destination" name="destination" value="${trip.destination}" required />
                </div>

                <div class="form-group">
                    <label for="startDate">Start Date:</label>
                    <input type="date" id="startDate" name="startDate" value="${trip.startDate}" required />
                </div>

                <div class="form-group">
                    <label for="endDate">End Date:</label>
                    <input type="date" id="endDate" name="endDate" value="${trip.endDate}" required />
                </div>

                <div class="form-group">
                    <label for="budget">Budget:</label>
                    <input type="number" id="budget" step="0.01" name="budget" value="${trip.budget}" required />
                </div>

                <div class="form-group">
                    <label for="participants">Participants:</label>
                    <textarea id="participants" name="participants" rows="3" required>${trip.participants}</textarea>
                </div>

                <div class="form-actions">
                    <input type="submit" value="Update Trip" />
                </div>
            </c:if>
        </form>
    </div>
</body>
</html>
