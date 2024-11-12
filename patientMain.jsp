<%-- 
    Document   : studentMain
    Created on : Nov 4, 2015, 11:54:17 AM
    Author     : renz
--%>

<%@page import="Business.Patient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient Main Page</title>
    </head>
    <%
        Patient p1 = (Patient)session.getAttribute("p1");
        p1.display();
        
    %>
    <form>
        <h1>Patient Main Page</h1>
        <table border="3">
            <tr>
                <td>ID:</td>
                <td> <%= p1.getPid() %>  </td>
            </tr>
            <tr>
                <td>First Name:</td>
                <td> <%= p1.getFname() %>  </td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td> <%= p1.getLname() %>  </td>
            </tr>
            <tr>
                <td>Address:</td>
                <td> <%= p1.getAddr() %>  </td>
            </tr>
            <tr>
                <td>Email:</td>
                <td> <%= p1.getEmail() %>  </td>
            </tr>
            <tr>
                <td>Insurance Co.:</td>
                <td> <%= p1.getInsCo() %>  </td>
            </tr>
            <tr>
                <td><a href="/DentOffice/patAppt.jsp">View Next Appointment</a></td>
                <td><a href="/DentOffice/ChangePatientInfo.jsp">Change Personal Info.</a></td>
            </tr>
            
        </table>
    </form>
</html>
