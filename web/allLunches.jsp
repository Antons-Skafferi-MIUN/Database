<%-- 
    Document   : allstudents
    Created on : Feb 21, 2020, 10:54:14 PM
    Author     : Rosen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Lunches</title>
    </head>
    <body>
        <table border="1">
            <td><a href="lunchInfo.html">Lunch info</a></td>
            <td><a href="./AllLunches">All lunches</a></td>
        </table>
        <br />
        <h3>List of Lunches</h3>
        <br />
        <table border="1">
            <th>Lunch ID</th>
            <th>Name</th>
            <th>Week</th>
            <th>Day</th>
            <c:forEach items="${requestScope.list}" var="lunch">
                <tr>
                    <td><a href="./GetLunch?id=${lunch.lunchID}">${lunch.lunchID}</td>
                    <td>${lunch.name}</td>
                    <td>${lunch.week}</td>
                    <td>${lunch.day}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>