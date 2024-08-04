<%-- 
    Document   : home
    Created on : 01-Aug-2024, 6:07:49 pm
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
        <%! int data=50; %>  
        <%
            String name = request.getParameter("username");
            session.setAttribute("user",name);  
        %>  
        <h1><%= name %></h1>
        
        <%= "Value of the variable is:"+data %> 
        <a href="second.jsp">second jsp page</a>  
    </body>
</html>
