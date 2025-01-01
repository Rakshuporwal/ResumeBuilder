<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: #f5f5f5; /* Light gray background */
            color: #333;
        }

        h2 {
            font-size: 2rem;
            color: #333;
            text-align: center;
            margin-bottom: 1.5rem;
        }

        .login-container {
            background: #ffffff; /* White container */
            border-radius: 15px;
            padding: 2rem;
            width: 100%;
            max-width: 400px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease;
        }

        .login-container:hover {
            transform: scale(1.03);
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 0.5rem;
            font-weight: bold;
            font-size: 1rem;
        }

        input {
            padding: 0.8rem;
            margin-bottom: 1.5rem;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 1rem;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        input:focus {
            border-color: #007BFF; /* Blue border on focus */
            box-shadow: 0 0 10px rgba(0, 123, 255, 0.5);
            outline: none;
        }

        button {
            padding: 0.8rem;
            background: #007BFF; /* Blue button */
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            font-weight: bold;
            color: #fff;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.2s ease;
        }

        button:hover {
            background: #0056b3; /* Darker blue on hover */
            transform: scale(1.05);
        }

        button:active {
            transform: scale(1);
        }

        .error {
            color: #ff4d4d;
            font-weight: bold;
            text-align: center;
            margin-top: 1rem;
        }

        @media (max-width: 768px) {
            body {
                padding: 1rem;
            }

            .login-container {
                padding: 1.5rem;
            }

            h2 {
                font-size: 1.8rem;
            }

            label, button {
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Welcome to create Resume</h2>
        <form action="validateLogin.jsp" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            
            <button type="submit">Login</button>
        </form>
        <%-- Display error if present --%>
        <%
            String error = request.getParameter("error");
            if (error != null) {
        %>
            <p class="error"><%= error %></p>
        <%
            }
        %>
    </div>
</body>
</html>
