package com.mycompany.mavenproject5;

import java.sql.*;

public class studentDao {
    public static int save(student student) {
        int result = 0;
        String dbURL = "jdbc:mysql://localhost:3306/resume?autoReconnect=true&useSSL=false";
        String dbUser = "root";
        String dbPassword = "root";

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection
            Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // Prepare SQL query
            String sql = "INSERT INTO students (id, name, age, education, skills, achievements) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, student.getId());
            pstmt.setString(2, student.getName());
            pstmt.setInt(3, student.getAge());
            pstmt.setString(4, student.getEducation());
            pstmt.setString(5, student.getSkills());
            pstmt.setString(6, student.getAchievements());

            // Execute update
            result = pstmt.executeUpdate();

            // Close resources
            pstmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
