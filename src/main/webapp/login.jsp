<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
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
		
		/* Login container styling */
		.login-container {
		    background: #fff;
		    padding: 30px;
		    border-radius: 10px;
		    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
		    width: 300px;
		    text-align: center;
		}
		
		/* Heading */
		.login-container h2 {
		    margin-bottom: 20px;
		    font-size: 24px;
		    color: #4CAF50;
		    text-transform: uppercase;
		}
		
		/* Form styling */
		.login-form {
		    display: flex;
		    flex-direction: column;
		}
		
		/* Input fields */
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
		    .login-container {
		        width: 90%;
		    }
		}
		    	
		    	
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form action="login" method="post" class="login-form">
            <label for="username">Username:</label>
            <input type="text" name="uname" id="username" placeholder="Enter your username" required />

            <label for="password">Password:</label>
            <input type="password" name="pass" id="password" placeholder="Enter your password" required />

            <input type="submit" value="Login" class="btn-submit" />
        </form>
    </div>
</body>
</html>
