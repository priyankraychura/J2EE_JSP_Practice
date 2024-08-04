<%-- 
    Document   : second
    Created on : 01-Aug-2024, 6:08:23 pm
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
        <%
            String name = (String) session.getAttribute("user");
            session.removeAttribute(name);
            session.invalidate();

            if (name != null)
                out.print(name);
            else
                response.sendRedirect("home.jsp");
        %>  
        <a href="session.jsp">session jsp page</a>  
    </body>
</html>