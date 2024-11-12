<%-- 
    Document   : loginError
    Created on : Nov 4, 2015, 11:54:49 AM
    Author     : renz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Business.Dentist"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Error Page</title>
        <jsp:useBean id = "d1" scope="session" class="Business.Dentist"/>
        
    </head>
    <body>
        <h1><jsp:getProperty name="d1" property="fname"/>    <jsp:getProperty name = "d1" property = "lname"/></h1>
        <h2>Password NOT Correct</h2>
        <a href="/DentOffice/index.jsp">
            click here to try again
        </a>
    </body>
</html>
