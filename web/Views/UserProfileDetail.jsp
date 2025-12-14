<%-- 
    Document   : UserProfileDetail
    Created on : Dec 12, 2025, 2:51:14 PM
    Author     : nhtho
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi tiết</title>
        <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/User.css">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/styleH.css">

    </head>
    <body>
        <h1>Thông tin cá nhân</h1>
        <input type="hidden" name="profileId" value="${profileId}" readonly="readonly" />
        <input type="hidden" name="accountId" value="${accountId}" readonly="readonly" />
        <table border="1">
            <thead>
                <tr>
                    <th>FullName</th>
                    <th>Age</th>
                    <th>Gender</th>
                    <th>Hobbies</th>
                    <th>Email</th>
                    <th>Description</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>${profile.fullName}</td>
                    <td>${profile.age}</td>
                    <td>${profile.gender}</td>
                    <td>${profile.hobbies}</td>
                    <td>${profile.email}</td>
                    <td>${profile.des}</td>
                </tr>
            </tbody>
        </table>

<jsp:include page="footer.jsp" />
    </body>
</html>
