<%-- 
    Document   : ChangeDentistInfo.jsp
    Created on : Nov 4, 2015, 1:40:43 PM
    Author     : renz
--%>

<%@page import="Business.Dentist"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        Dentist d1 = (Dentist)session.getAttribute("d1");
        d1.display();
        
    %>
   <form action = "/DentOffice/ChangeDentistInfoServlet">
        <h1>Dentist Main Test</h1>
        <table border="3">
            <tr>
                <td>ID:</td>
                <td><input type="text" name="id" value=<%= d1.getDid() %> /></td>
            </tr>
            <tr>
                <td>First Name:</td>
                <td><input type="text" name="fn" value=<%= d1.getFname() %> /></td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td><input type="text" name="ln" value=<%= d1.getLname() %> /></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="text" name="em" value=<%= d1.getEmail() %> /></td>
            </tr>
            <tr>
                <td>Office:</td>
                <td><input type="text" name="of" value=<%= d1.getOffice() %> /></td>
            </tr>
             
            <tr>
                <td><input type="submit" name="update"  value="Update Info." /></td>
                <td><input type="reset" value="Clear" /></td>
            </tr>
            
        </table>
    </form>
</html>
