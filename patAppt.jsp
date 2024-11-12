<%-- 
    Document   : patAppt
    Created on : Nov 4, 2015, 2:02:30 PM
    Author     : renz
--%>

<%@page import="Business.*"%>
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
        
        String pname = p1.getFname()+" "+p1.getLname();
        
        Appointment a1 = p1.appt;
        
        if (!(a1.getADateTime().equals("null"))) {
        
            Dentist d1 = new Dentist();
            d1.selectDB(a1.getDid());
        
            String dname = d1.getFname()+" "+d1.getLname();
        
            Procedure pr1 = new Procedure();
            pr1.selectDB(a1.getPcode());
        
            String prname = pr1.getPname();
        
            String pcost = "$"+pr1.getPrice();
            out.println("<html><form><h1>Patient Next Appointment</h1>"+
        "<table border=3>"+
            "<tr>"+
                "<td><h4>Appt Time/Date</h4></td> "+
                "<td><h4>Patient Name</h4></td>"+
                "<td><h4>Dentist Name</h4></td>"+
                "<td><h4>Procedure</h4></td>"+
                "<td><h4>Estimated Cost</h4></td>"+
            "</tr>"+
            "<tr> "+
                "<td>"+a1.getADateTime()+"  </td>"+
                "<td>"+pname+"</td>"+
                "<td>"+dname+"</td>"+
                "<td>"+prname+"</td>"+
                "<td>"+pcost+"</td>"+
                
            "</tr>"+
        "</table>"+
    "</form> </html>");
            }
            else {
                out.println("<html><body>");
                out.println("<h1>No Appointments Scheduled</h1>");
                out.println("<a href='newApptPage.jsp'>Make an Appointment</a>");
                out.println("</body></html>");    
            }
               
        
        
        
  %>
                 <tr>
                <td><a href="/DentOffice/newApptPage.jsp">View Next Appointment</a></td>
                </tr>

</html>
