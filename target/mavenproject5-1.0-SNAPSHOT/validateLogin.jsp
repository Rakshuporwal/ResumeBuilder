<%
    // Retrieve credentials from the form
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // Check credentials
    if ("admin".equals(username) && "1234".equals(password)) {
        // Redirect to index.jsp on successful login
        response.sendRedirect("index.jsp");
    } else {
        // Redirect back to login page with error message
        response.sendRedirect("login.jsp?error=Invalid Username or Password.");
    }
%>
