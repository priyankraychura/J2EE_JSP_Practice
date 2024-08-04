<%-- 
    Document   : timeTicker
    Created on : 04-Aug-2024, 7:06:22 pm
    Author     : Priya
--%>

<%@ page import="com.example.TimeThread" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Day, Date, and Time Ticker</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f8f9fa;
        }
        .ticker-container {
            text-align: center;
        }
        .ticker {
            font-size: 2em;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="ticker-container">
        <h1>Day, Date, and Time Ticker</h1>
        <div class="ticker">
            <%
                session = request.getSession();
                TimeThread timeThread = (TimeThread) session.getAttribute("timeThread");

                if (timeThread == null) {
                    timeThread = new TimeThread();
                    session.setAttribute("timeThread", timeThread);
                    Thread t = new Thread(timeThread);
                    t.start();
                }

                out.print(timeThread.getCurrentTime());
            %>
        </div>
        <meta http-equiv="refresh" content="1">
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
