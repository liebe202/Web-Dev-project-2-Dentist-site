<%-- 
    Document   : index
    Created on : Nov 4, 2015, 11:53:49 AM
    Author     : renz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DentOne Login Page</title>
    </head>
    <form name="LoginForm" action="/DentOffice/LoginServlet">
        <h1>DentOne</h1>
        <table border="3">
            <tr>
                <td>ID:</td>
                <td><input type="text" name="id" /></td>
            </tr>
            <tr>
                <td>PW:</td>
                <td><input type="password" name="pw" /></td>
            </tr>
            <tr>
                <td><input type="submit" value="Login" /></td>
                <td><input type="reset" value="Clear" /></td>
            </tr>
            
        </table>
        
    </form>
</html>
