<!DOCTYPE html>
<html>
<head>
    <title>Welcome to Trip Planner</title>
    <style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to bottom, #74ebd5, #9face6);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }

        /* Container */
        .container {
            background: #fff;
            padding: 40px 30px;
            border-radius: 10px;
            box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 400px;
        }

        /* Heading */
        h1 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #4a4a4a;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        /* Links */
        a {
            display: inline-block;
            text-decoration: none;
            font-size: 16px;
            font-weight: bold;
            color: #fff;
            background: #4CAF50;
            padding: 12px 20px;
            border-radius: 5px;
            margin: 10px;
            transition: background 0.3s ease, transform 0.2s ease;
        }

        a:hover {
            background: #45a049;
            transform: scale(1.05);
        }

        /* Footer */
        .footer {
            margin-top: 20px;
            font-size: 14px;
            color: #777;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to the Trip Planner</h1>
        <a href="login.jsp">Login Here</a>
        <a href="register.jsp">Register Here</a>
        <div class="footer">
            <p>Your journey starts here!</p>
        </div>
    </div>
</body>
</html>
