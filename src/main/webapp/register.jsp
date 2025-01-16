<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Page</title>
    <style>
        body{
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom right, #6dd5ed, #2193b0);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            animation: fadeIn 0.8s ease-in-out;
        }

        .register-container {
            background: #fff;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            width: 350px;
            text-align: center;
            animation: slideIn 0.8s ease-out;
        }

        .register-container h2 {
            margin-bottom: 20px;
            font-size: 28px;
            color: #4CAF50;
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        .register-form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .register-form input[type="text"],
        .register-form input[type="password"],
        .register-form input[type="email"] {
            padding: 12px 15px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
            width: 100%;
            box-sizing: border-box;
            transition: all 0.3s ease;
        }

        .register-form input[type="text"]:focus,
        .register-form input[type="password"]:focus,
        .register-form input[type="email"]:focus {
            border: 1px solid #4CAF50;
            outline: none;
            box-shadow: 0 0 8px rgba(76, 175, 80, 0.4);
        }

        .btn-submit {
            background: #4CAF50;
            color: white;
            border: none;
            padding: 14px 20px;
            margin-top: 15px;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            transition: all 0.3s ease;
        }

        .btn-submit:hover {
            background: #45a049;
            transform: scale(1.03);
        }

        @media (max-width: 600px) {
            .register-container {
                width: 90%;
                padding: 30px;
            }

            .register-form input[type="text"],
            .register-form input[type="password"],
            .register-form input[type="email"] {
                font-size: 14px;
            }

            .btn-submit {
                font-size: 14px;
            }
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }
        @keyframes slideIn {
            from {
                transform: translateY(-20px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }
    </style>
</head>
<body>
    <div class="register-container">
        <h2>Register</h2>
        <form action="register" method="post" class="register-form">
            <label for="username">Username:</label>
            <input type="text" name="uname" id="username" placeholder="Enter your username" required />

            <label for="password">Password:</label>
            <input type="password" name="pass" id="password" placeholder="Enter your password" required />

            <label for="email">Email:</label>
            <input type="email" name="email" id="email" placeholder="Enter your email" required />

            <input type="submit" value="Register" class="btn-submit" />
        </form>
    </div>
</body>
</html>
