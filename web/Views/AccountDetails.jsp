<%-- 
    Document   : AccountDetails
    Created on : Dec 10, 2025, 2:59:14 PM
    Author     : nhtho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thông tin chi tiết</title>
        <link rel="stylesheet" href="<%= request.getContextPath()%>/static/css/Account.css">
        <link rel="stylesheet" href="<%= request.getContextPath()%>/static/css/styleH.css">
    </head>
    <body>
        <h1>Thông tin chi tiết</h1>
        <table border="1">
            <tbody>
                <tr>
                    <td>AccountId</td>
                    <td>Username</td>
                    <td>Password</td>
                    <td>Role Name</td>
                </tr>
                <tr>
                    <td>${account.accountId}</td>
                    <td>${account.username}</td>
                    <td>${account.password}</td>
                    <td>${account.roleName}</td>
                </tr>
            </tbody>
        </table>
        <jsp:include page="footer.jsp" />
    </body>
</html>
