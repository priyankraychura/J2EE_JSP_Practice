<%-- 
    Document   : DayDateTicker
    Created on : 04-Aug-2024, 6:41:04 pm
    Author     : Priya
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Day, Date, and Time Ticker</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
            padding: 50px;
        }
        #ticker {
            background-color: #333;
            color: #fff;
            padding: 20px;
            border-radius: 10px;
            display: inline-block;
            font-size: 24px;
        }
    </style>
    <script>
        function startTicker() {
            setInterval(updateTime, 1000);
        }

        function updateTime() {
            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function() {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    document.getElementById("ticker").innerHTML = xhr.responseText;
                }
            };
            xhr.open("GET", "TimeServlet", true);
            xhr.send();
        }
    </script>
</head>
<body onload="startTicker()">
    <h1>Day, Date, and Time Ticker</h1>
    <div id="ticker">
        Loading...
    </div>
</body>
</html>
