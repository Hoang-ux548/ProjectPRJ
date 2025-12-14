<%-- 
    Document   : EditAccount
    Created on : Dec 11, 2025, 7:11:52 PM
    Author     : nhtho
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Account</title>
        <link rel="stylesheet" href="<%= request.getContextPath()%>/static/css/EditAccount.css">
        <link rel="stylesheet" href="<%= request.getContextPath()%>/static/css/styleH.css">
    </head>
    <body>
        <div class="edit-container">
            <h1>Edit Account</h1>
            <form action="updateAccount" method="POST">
                <table border="0">
                    <tbody>
                        <tr>
                            <td>AccountId</td>
                            <td>
                                <input type="text" name="accountId" value="${accountId}" readonly="true"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Username</td>
                            <td>
                                <input type="text" name="username" value="${username}" readonly="true"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td>
                                <input type="password" name="password" value="${password}" />
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <select name="roleId">
                                    <c:forEach var="r" items="${roleList}">
                                        <option value="${r.roleId}">${r.roleName}</option>
                                    </c:forEach>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input type="submit" value="Update" />
                            </td>
                        </tr>
                    </tbody>
                </table>

            </form>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>
