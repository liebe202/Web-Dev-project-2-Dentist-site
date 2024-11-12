<%-- 
    Document   : dentAppts
    Created on : Nov 4, 2015, 2:41:59 PM
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
    <form>
    <%
        Dentist d1 = (Dentist)session.getAttribute("d1");
        d1.display();
        String dname = d1.getFname()+" "+d1.getLname();
        Appointment a1;
        int count;
        
        count = d1.apList.count;
        if (count == 0) {
            
            out.println("<html><body><h1>No Appointments Scheduled</h1></body></html>"); 
        
        }
        else {
    %>
    
    <h3> Appointments for Dentist: <%= dname %> </h3>
        <table border=3>
            <tr>
                <td><h4>Appt Time/Date</h4></td> 
                <td><h4>Patient Name</h4></td>
                 
                <td><h4>Procedure</h4></td>
               <td><h4>Estimated Cost</h4></td>
            </tr>
            <%
            String pname, prname, pcost;
            Patient p1;
            Procedure pr1;
            for(int x=0; x<count; x++) {
                a1 = d1.apList.aList[x];
                
                p1 = new Patient();
                p1.selectDB(a1.getPid());
                pname = p1.getFname()+" "+p1.getLname();
                pr1 = new Procedure();
                pr1.selectDB(a1.getPcode());
        
                prname = pr1.getPname();
        
                pcost = "$"+pr1.getPrice();
            
            %>
            <tr> 
                <td><%=a1.getADateTime() %></td>
                <td><%=pname %></td>
                 
                <td><%=prname %></td>
                <td><%=pcost %></td>
                
            </tr>
            
            <%
        } //end for
        
        %>
        </table>
    
    
    <%
        } //end else
        
    %>
                 <tr>
                <td><a href="/DentOffice/newApptPage.jsp">View Next Appointment</a></td>
                </tr>
    </form>
</html>
