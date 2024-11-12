<%-- 
    Document   : newApptPage
    Created on : Nov 4, 2015, 3:09:25 PM
    Author     : renz
--%>

<%@page import="Business.Patient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        Patient p1 = (Patient)session.getAttribute("p1");
        p1.display();
        
    %>
    
    <form action="/DentOffice/AddAppointment">
        <h1>Make an Appointment</h1>
        <table border="3">
            <tr>
                <td>ID:</td>
                <td> <input type="text" name="id"  value=<%=p1.getPid() %> /></td>
            </tr>
            <tr>
                <td>Appointment Date & Time:</td>
                <td> <input type="text" name="aTime"   />  </td>
            </tr>
            <tr>
                <td>Dentist:</td>
                <td> <input type="text" name="did"   />   </td>
            </tr>
            <tr>
                <td>Procedure:</td>
                <td> <input type="text" name="pcode"   />   </td>
            </tr>
             
             
            <tr>
                <td><input type="submit" value="Make Appointment" /></td>
                <td><input type="reset" value="Clear" /></td>
            </tr>
            
        </table>
    </form>
</html>
