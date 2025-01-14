<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Page</title>
	<style>
				/* Resetting basic styles */
		body, html {
		    margin: 0;
		    padding: 0;
		    font-family: Arial, sans-serif;
		    background: linear-gradient(to bottom, #74ebd5, #9face6);
		    height: 100vh;
		    display: flex;
		    justify-content: center;
		    align-items: center;
		}
		
		/* Container styling */
		.register-container, .login-container {
		    background: #fff;
		    padding: 30px;
		    border-radius: 10px;
		    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
		    width: 300px;
		    text-align: center;
		}
		
		/* Heading */
		.register-container h2, .login-container h2 {
		    margin-bottom: 20px;
		    font-size: 24px;
		    color: #4CAF50;
		    text-transform: uppercase;
		}
		
		/* Form styling */
		.register-form, .login-form {
		    display: flex;
		    flex-direction: column;
		}
		
		/* Input fields */
		.register-form input[type="text"],
		.register-form input[type="password"],
		.register-form input[type="email"],
		.login-form input[type="text"],
		.login-form input[type="password"] {
		    padding: 10px;
		    margin: 10px 0;
		    border: 1px solid #ccc;
		    border-radius: 5px;
		    font-size: 14px;
		    width: 100%;
		    box-sizing: border-box;
		    transition: border 0.3s ease;
		}
		
		.register-form input[type="text"]:focus,
		.register-form input[type="password"]:focus,
		.register-form input[type="email"]:focus,
		.login-form input[type="text"]:focus,
		.login-form input[type="password"]:focus {
		    border: 1px solid #4CAF50;
		    outline: none;
		}
		
		/* Submit button */
		.btn-submit {
		    background: #4CAF50;
		    color: white;
		    border: none;
		    padding: 12px 20px;
		    margin-top: 10px;
		    border-radius: 5px;
		    cursor: pointer;
		    font-size: 16px;
		    transition: background 0.3s ease;
		}
		
		.btn-submit:hover {
		    background: #45a049;
		}
		
		/* Responsive Design */
		@media (max-width: 600px) {
		    .register-container, .login-container {
		        width: 90%;
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
