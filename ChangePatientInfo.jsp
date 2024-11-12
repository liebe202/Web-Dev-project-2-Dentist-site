<%-- 
    Document   : ChangePatientInfo
    Created on : Nov 4, 2015, 1:31:28 PM
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
    <form action = "/DentOffice/ChangePatientInfoServlet">
        <h1>Change Patient Info Page</h1>
        <table border="3">
            <tr>
                <td>ID:</td>
                <td><input type="text" name="id" value=<%= p1.getPid() %> /></td>
            </tr>
            <tr>
                <td>First Name:</td>
                <td><input type="text" name="fn" value=<%= p1.getFname() %> /></td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td><input type="text" name="ln" value=<%= p1.getLname() %> /></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><input type="text" name="ad" value=<%= p1.getAddr() %> /></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="text" name="em" value=<%= p1.getEmail() %> /></td>
            </tr>
            <tr>
                <td>Insurance Co.:</td>
                <td><input type="text" name="ic" value=<%= p1.getInsCo() %> /></td>
            </tr>
            <tr>
                <td><input type="submit" name="update"  value="Update Info." /></td>
                <td><input type="reset" value="Clear" /></td>
            </tr>
            
        </table>
    </form>
</html>
