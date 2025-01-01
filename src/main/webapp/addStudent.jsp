<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Student</title>
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
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .form-container {
            background: #fff;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
        }

        .form-container h1 {
            font-size: 1.8rem;
            color: #333;
            margin-bottom: 1.5rem;
            text-align: center;
        }

        label {
            display: block;
            font-size: 1rem;
            margin-bottom: 0.5rem;
            color: #555;
        }

        input[type="number"],
        input[type="text"],
        textarea {
            width: 100%;
            padding: 0.8rem;
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 1rem;
            transition: border-color 0.3s ease;
        }

        input[type="number"]:focus,
        input[type="text"]:focus,
        textarea:focus {
            border-color: #007BFF;
            outline: none;
        }

        button {
            display: block;
            width: 100%;
            padding: 0.8rem;
            font-size: 1rem;
            font-weight: bold;
            color: #fff;
            background: #007BFF;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.2s ease;
        }

        button:hover {
            background: #0056b3;
            transform: scale(1.05);
        }

        button:active {
            transform: scale(1);
        }

        @media (max-width: 768px) {
            .form-container {
                padding: 1.5rem;
            }

            label {
                font-size: 0.9rem;
            }

            input[type="number"],
            input[type="text"],
            textarea {
                font-size: 0.9rem;
            }

            button {
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Enter Student Information</h1>
        <form action="processStudent.jsp" method="post">
            <label for="id">ID:</label>
            <input type="number" id="id" name="id" required>

            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            
            <label for="age">Age:</label>
            <input type="number" id="age" name="age" required>
            
            <label for="education">Education:</label>
            <textarea id="education" name="education" rows="3" required></textarea>
            
            <label for="skills">Skills:</label>
            <textarea id="skills" name="skills" rows="3" required></textarea>
            
            <label for="achievements">Achievements:</label>
            <textarea id="achievements" name="achievements" rows="3" required></textarea>

            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
