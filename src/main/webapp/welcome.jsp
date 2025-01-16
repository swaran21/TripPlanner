<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    if (session == null || session.getAttribute("userId") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <link rel="stylesheet" href="css/welcomeStyle.css">
</head>
<body>
    <div class="container">
        <div class="card">
            <h2 class="title">Welcome, <%= session.getAttribute("username") %>!</h2>
            <p class="subtitle">What would you like to do?</p>

            <div class="button-group">
                <form action="viewTrip" method="post">
                    <button type="submit" class="btn">View Existing Plans</button>
                </form>

                <form action="createTrip.jsp" method="get">
                    <button type="submit" class="btn">Create a New Trip</button>
                </form>

                <form action="logout" method="get">
                    <button type="submit" class="btn btn-secondary">Logout</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
