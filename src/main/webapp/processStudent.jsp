<%@ page import="com.mycompany.mavenproject5.student" %>
<%@ page import="com.mycompany.mavenproject5.studentDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Process Student</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9; /* Light background color */
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
            max-width: 600px;
        }

        .container h1 {
            font-size: 1.8rem;
            margin-bottom: 1.5rem;
            text-align: center;
            color: #007BFF;
        }

        .container a {
            display: inline-block;
            text-align: center;
            margin-top: 1rem;
            font-size: 1rem;
            font-weight: bold;
            text-decoration: none;
            padding: 0.5rem 1rem;
            color: #fff;
            background-color: #007BFF;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .container a:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }

        .container a:active {
            transform: scale(1);
        }

        .error {
            color: red;
            font-weight: bold;
            text-align: center;
            margin-top: 1rem;
        }

        @media (max-width: 768px) {
            .container {
                padding: 1.5rem;
            }

            .container h1 {
                font-size: 1.5rem;
            }

            .container a {
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Process Student Information</h1>
        <%
            try {
                // Retrieve form data from the request
                String idParam = request.getParameter("id");
                String name = request.getParameter("name");
                String ageParam = request.getParameter("age");
                String education = request.getParameter("education");
                String skills = request.getParameter("skills");
                String achievements = request.getParameter("achievements");

                // Input validation
                if (idParam == null || name == null || ageParam == null || education == null || 
                    skills == null || achievements == null || 
                    idParam.isEmpty() || name.isEmpty() || ageParam.isEmpty() || education.isEmpty() ||
                    skills.isEmpty() || achievements.isEmpty()) {
        %>
                    <p class="error">All fields are required. Please go back and fill out the form completely.</p>
                    <a href="addStudent.jsp">Go Back to Form</a>
        <%
                } else {
                    // Parse numeric fields
                    int id = Integer.parseInt(idParam);
                    int age = Integer.parseInt(ageParam);

                    // Create a new Student object and populate it
                    student student = new student();
                    student.setId(id);
                    student.setName(name);
                    student.setAge(age);
                    student.setEducation(education);
                    student.setSkills(skills);
                    student.setAchievements(achievements);

                    // Save the student to the database using StudentDAO
                    studentDao studentDao = new studentDao();
                    int result = studentDao.save(student);

                    // Check the result of the database operation
                    if (result > 0) {
        %>
                        <p>Student information added successfully!</p>
                        <a href="index.jsp">Go Back to Home</a>
        <%
                    } else {
        %>
                        <p class="error">Failed to add student information. Please try again.</p>
                        <a href="addStudent.jsp">Go Back to Form</a>
        <%
                    }
                }
            } catch (NumberFormatException e) {
        %>
                <p class="error">Invalid input for ID or Age. Please enter numeric values.</p>
                <a href="addStudent.jsp">Go Back to Form</a>
        <%
            } catch (Exception e) {
        %>
                <p class="error">An error occurred: <%= e.getMessage() %></p>
                <a href="addStudent.jsp">Go Back to Form</a>
        <%
            }
        %>
    </div>
</body>
</html>
