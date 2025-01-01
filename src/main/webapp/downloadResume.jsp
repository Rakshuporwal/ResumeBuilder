<%@ page import="com.itextpdf.text.*" %>
<%@ page import="com.itextpdf.text.pdf.*" %>
<%@ page import="java.io.*" %>
<%
    // Retrieve student details from the session
    Integer studentId = (Integer) session.getAttribute("studentId");
    String name = (String) session.getAttribute("name");
    Integer age = (Integer) session.getAttribute("age");
    String education = (String) session.getAttribute("education");
    String skills = (String) session.getAttribute("skills");
    String achievements = (String) session.getAttribute("achievements");

    if (studentId == null || name == null || age == null || education == null || skills == null || achievements == null) {
        response.getWriter().println("<p style='color: red;'>No resume data found. Please generate the resume first.</p>");
        return;
    }

    // Set response headers to trigger download as an attachment
    response.setContentType("application/pdf");
    response.setHeader("Content-Disposition", "attachment; filename=Resume_" + studentId + ".pdf");

    try {
        // Create a PDF document and write directly to the response output stream
        Document document = new Document();
        PdfWriter.getInstance(document, response.getOutputStream());
        document.open();

        // Add content to the PDF
        document.add(new Paragraph("Resume", FontFactory.getFont(FontFactory.HELVETICA_BOLD, 18)));
        document.add(new Paragraph("-------------------------------------------------------------------------------------------------------------------------------"));
        document.add(new Paragraph("Name: " + name));
        document.add(new Paragraph("Age: " + age));
        document.add(new Paragraph(" "));
        document.add(new Paragraph(" "));
        document.add(new Paragraph("Education: "));
        document.add(new Paragraph("-------------------------------------------------------------------------------------------------------------------------------"));
        document.add(new Paragraph(education));
        document.add(new Paragraph(" "));
        document.add(new Paragraph(" "));
        document.add(new Paragraph("Skills: "));
        document.add(new Paragraph("-------------------------------------------------------------------------------------------------------------------------------"));
        document.add(new Paragraph(skills));
        document.add(new Paragraph(" "));
        document.add(new Paragraph(" "));
        document.add(new Paragraph("Achievements: "));
        document.add(new Paragraph("-------------------------------------------------------------------------------------------------------------------------------"));
        document.add(new Paragraph(achievements));
        
        
        
        

        document.close();
    } catch (Exception e) {
        response.getWriter().println("<p style='color: red;'>An error occurred: " + e.getMessage() + "</p>");
    }
%>
