<%-- 
    Document   : AccountList
    Created on : Dec 9, 2025, 2:36:31 PM
    Author     : nhtho
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/Account.css">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/styleH.css">
    </head>
    <body>
        <h1>List of Accounts</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>AccountId</th>
                    <th>Username</th>
                    <th>Password</th>
                    <th>Role name</th>
                    <th colspan="3">Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="c" items="${accountList}">
                <tr>
                    <td>${c.accountId}</td>
                    <td>${c.username}</td>
                    <td>${c.password}</td>
                    <td>${c.roleName}</td>
                    <td><a href="viewAccountDetails?id=${c.accountId}">View</a></td>
                    <td><a href="updateAccount?id=${c.accountId}">Update</a></td>
                    <td><a href="deleteAccount?id=${c.accountId}">Delete</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <jsp:include page="footer.jsp" />
    </body>
</html>
