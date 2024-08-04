<%-- 
    Document   : session
    Created on : 01-Aug-2024, 6:08:37 pm
    Author     : Priya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String name = (String) session.getAttribute("user");
           
            if (name != null)
                out.print(name);
            else
                response.sendRedirect("home.jsp");
        %>  
    </body>
</html>