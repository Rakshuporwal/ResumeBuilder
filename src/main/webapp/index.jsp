<%-- 
    Document   : index
    Created on : 4 Dec 2024, 9:15:04 am
    Author     : porwa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>RESUME BUILDER</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            min-height: 100vh;
            background: #f5f5f5; /* Light gray background */
            color: #333;
            position: relative;
        }

        /* Logout Button Styling */
        .logout-btn {
            position: absolute;
            top: 20px;
            right: 20px;
            background: #d9534f; /* Red color for logout */
            color: #fff;
            padding: 0.8rem 1.5rem;
            text-decoration: none;
            font-size: 1rem;
            font-weight: bold;
            border-radius: 8px;
            transition: background 0.3s ease, transform 0.2s ease;
        }

        .logout-btn:hover {
            background: #c9302c; /* Darker red on hover */
            transform: scale(1.05);
        }

        .logout-btn:active {
            transform: scale(1);
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            padding: 2rem;
        }

        .container h1 {
            font-size: 2rem;
            color: #333;
            margin-bottom: 2rem;
        }

        .button {
            display: inline-block;
            margin: 0.5rem 0;
            padding: 0.8rem 1.5rem;
            background: #007BFF; /* Blue button */
            color: #ffffff;
            text-decoration: none;
            border-radius: 8px;
            font-size: 1rem;
            font-weight: bold;
            transition: background 0.3s ease, transform 0.2s ease;
        }

        .button:hover {
            background: #0056b3; /* Darker blue on hover */
            transform: scale(1.05);
        }

        .button:active {
            transform: scale(1);
        }

        @media (max-width: 768px) {
            body {
                padding: 1rem;
            }

            .container {
                padding: 1.5rem;
            }

            .button {
                font-size: 0.9rem;
                padding: 0.6rem 1rem;
            }
        }
    </style>
</head>
<body>
    <a href="login.jsp" class="logout-btn">Logout</a> <!-- Logout Button -->
    <div class="container">
        <h1>Welcome to Resume Builder</h1>
        <a href="addStudent.jsp" class="button">Add Student</a>
        <a href="generateResume.jsp" class="button">Create Resume</a>
    </div>
</body>
</html>
