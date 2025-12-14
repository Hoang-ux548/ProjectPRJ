<%-- 
    Document   : header
    Created on : Dec 14, 2025, 7:31:49 PM
    Author     : nhtho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="models.Account" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="header">
    <table>
        <tr>
            <td><b>Xin chào <c:out value="${user.username}" /></b></td>
        </tr>
    </table>
</div>
