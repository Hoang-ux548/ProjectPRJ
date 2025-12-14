
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
        <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/User.css">
        <link rel="stylesheet" href="<%= request.getContextPath()%>/static/css/styleH.css">
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <jsp:include page="topnav.jsp" />
        <h1>User Profile</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>ProfileId</th>
                    <th>AccountId</th>
                    <th>fullName</th>
                    <th>Age</th>
                    <th>Gender</th>
                    <th>Hobbies</th>
                    <th>Email</th>
                    <th>Description</th>
                    <th colspan="3">Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="u" items="${profileList}">
                    <tr>
                        <td>${u.profileId}</td>
                        <td>${u.accountId}</td>
                        <td>${u.fullName}</td>
                        <td>${u.age}</td>
                        <td>${u.gender}</td>
                        <td>${u.hobbies}</td>
                        <td>${u.email}</td>
                        <td>${u.des}</td>
                        <td><a href="viewProfileDetails?id=${u.profileId}">View</a></td>
                        <td><a href="updateProfile?id=${u.profileId}">Update</a></td>
                        <td><a href="deleteProfile?id=${u.profileId}">Delete</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <jsp:include page="footer.jsp" />
    </body>
</html>
