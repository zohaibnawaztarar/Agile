<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
    String userid = request.getParameter("email");    
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://silva.computing.dundee.ac.uk:3306/18agileteam2db",
            "18agileteam2", "8474.at2.4748");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from login where staffID='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>
</body>
</html>