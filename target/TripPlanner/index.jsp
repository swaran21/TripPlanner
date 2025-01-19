<!DOCTYPE html>
<html>
<head>
    <title>Welcome to Trip Planner</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to bottom, #4facfe, #00f2fe);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }

        .container {
            background: #fff;
            padding: 50px 40px;
            border-radius: 15px;
            box-shadow: 0px 10px 25px rgba(0, 0, 0, 0.3);
            text-align: center;
            width: 400px;
            animation: fadeIn 1.5s ease-in-out;
        }

        h1 {
            font-size: 28px;
            margin-bottom: 25px;
            color: #2c3e50;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        a {
            display: inline-block;
            text-decoration: none;
            font-size: 16px;
            font-weight: bold;
            color: #fff;
            background: linear-gradient(90deg, #56ab2f, #a8e063);
            padding: 12px 30px;
            border-radius: 30px;
            margin: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            transition: all 0.3s ease;
        }

        a:hover {
            background: linear-gradient(90deg, #a8e063, #56ab2f);
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
        }

        .footer {
            margin-top: 30px;
            font-size: 14px;
            color: #777;
            animation: fadeInUp 2s ease-in-out;
        }

        @media (max-width: 480px) {
            .container {
                width: 90%;
                padding: 30px 20px;
            }

            h1 {
                font-size: 22px;
            }

            a {
                padding: 10px 20px;
                font-size: 14px;
            }
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: scale(0.9);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Trip Planner</h1>
        <a href="login.jsp">Login Here</a>
        <a href="register.jsp">Register Here</a>
        <div class="footer">
            <p>Your journey starts here!</p>
        </div>
    </div>
</body>
</html>
