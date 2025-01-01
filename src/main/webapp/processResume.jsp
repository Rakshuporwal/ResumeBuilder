<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Resume Preview</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .resume-container {
            width: 60%;
            margin: auto;
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .resume-container h2 {
            text-align: center;
            text-decoration: underline;
        }
        .resume-detail {
            margin-bottom: 10px;
        }
        .resume-detail label {
            font-weight: bold;
        }
        .actions {
            text-align: center;
            margin-top: 20px;
        }
        .actions button {
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            background-color: #28a745;
            color: white;
            cursor: pointer;
        }
        .actions button:hover {
            background-color: #218838;
        }
        .error {
            color: red;
            text-align: center;
        }
    </style>
</head>
<body>
<%
    String studentIdStr = request.getParameter("studentId");

    if (studentIdStr == null || studentIdStr.trim().isEmpty()) {
%>
        <p class="error">Student ID is required. Please provide a valid ID.</p>
        <a href="generateResume.jsp">Go Back</a>
<%
        return;
    }

    // Database connection details
    String dbURL = "jdbc:mysql://localhost:3306/resume?autoReconnect=true&useSSL=false";
    String dbUser = "root";
    String dbPassword = "root";

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        int studentId = Integer.parseInt(studentIdStr);
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

        String sql = "SELECT * FROM students WHERE id = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, studentId);
        rs = pstmt.executeQuery();

        if (rs.next()) {
            String name = rs.getString("name");
            int age = rs.getInt("age");
            String education = rs.getString("education");
            String skills = rs.getString("skills");
            String achievements = rs.getString("achievements");

            // Store the student details in the session to use in the download
            session.setAttribute("studentId", studentId);
            session.setAttribute("name", name);
            session.setAttribute("age", age);
            session.setAttribute("education", education);
            session.setAttribute("skills", skills);
            session.setAttribute("achievements", achievements);
%>
        <div class="resume-container">
            <h2>Resume Preview</h2>
            <div class="resume-detail"><label>Name:</label> <%= name %></div>
            <div class="resume-detail"><label>Age:</label> <%= age %></div>
            <div class="resume-detail"><label>Education:</label> <%= education %></div>
            <div class="resume-detail"><label>Skills:</label> <%= skills %></div>
            <div class="resume-detail"><label>Achievements:</label> <%= achievements %></div>
        </div>
        <div class="actions">
            <form action="downloadResume.jsp" method="post">
                <button type="submit">Download Resume</button>
            </form>
        </div>
<%
        } else {
%>
        <p class="error">No student found with the given ID.</p>
        <a href="generateResume.jsp">Go Back</a>
<%
        }
    } catch (Exception e) {
%>
        <p class="error">An error occurred: <%= e.getMessage() %></p>
<%
    } finally {
        try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
        try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>
</body>
</html>
