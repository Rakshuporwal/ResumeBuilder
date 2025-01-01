<!DOCTYPE html>
<html>
<head>
    <title>Generate Resume</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            padding: 20px;
            color: #333;
        }

        .container {
            background-color: #fff;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
            text-align: center;
        }

        .container h2 {
            font-size: 2rem;
            margin-bottom: 1.5rem;
            color: #007BFF;
        }

        .container form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .container label {
            font-size: 1rem;
            margin-bottom: 0.5rem;
            color: #333;
        }

        .container input[type="text"] {
            padding: 0.8rem;
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 100%;
            margin-bottom: 1.5rem;
            box-sizing: border-box;
            outline: none;
            transition: border-color 0.3s ease;
        }

        .container input[type="text"]:focus {
            border-color: #007BFF;
        }

        .container button {
            padding: 0.8rem 1.5rem;
            background-color: #007BFF;
            border: none;
            color: #fff;
            font-size: 1rem;
            font-weight: bold;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .container button:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }

        .container button:active {
            transform: scale(1);
        }

        @media (max-width: 768px) {
            .container {
                padding: 1.5rem;
            }

            .container h2 {
                font-size: 1.5rem;
            }

            .container button {
                font-size: 0.9rem;
                padding: 0.6rem 1.2rem;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Resume Generator</h2>
        <form action="processResume.jsp" method="post">
            <label for="studentId">Enter Student ID:</label>
            <input type="text" id="studentId" name="studentId" required>
            <button type="submit">Generate Resume</button>
        </form>
    </div>
</body>
</html>
