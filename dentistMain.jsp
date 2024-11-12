<%-- 
    Document   : dentistMain
    Created on : Nov 4, 2015, 11:54:31 AM
    Author     : renz
--%>

<%@page import="Business.Dentist"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dentist Main Test</title>
    </head>
    <%
        Dentist d1 = (Dentist)session.getAttribute("d1");
        d1.display();
        
    %>
    <form>
        <h1><h1>ID = <jsp:getProperty name="d1" property="did"/>   Name = <jsp:getProperty name="d1" property="fname"/>  <jsp:getProperty name = "d1" property = "lname"/></h1></h1>
        <table border="3">
            <tr>
                <td>ID:</td>
                <td> <%= d1.getDid() %>  </td>
            </tr>
            <tr>
                <td>First Name:</td>
                <td> <%= d1.getFname() %>  </td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td> <%= d1.getLname() %>  </td>
            </tr>
            <tr>
                <td>Email:</td>
                <td> <%= d1.getEmail() %>  </td>
            </tr>
            <tr>
                <td>Office:</td>
                <td> <%= d1.getOffice() %>  </td>
            </tr>
             
            <tr>
                <td><a href="/DentOffice/dentAppts.jsp">View Appointment Schedule</a></td>
                <td><a href="/DentOffice/ChangeDentistInfo.jsp">Change Personal Info.</a></td>
            </tr>
            
        </table>
    </form>
</html>
