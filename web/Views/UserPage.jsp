<%-- 
    Document   : UserPage
    Created on : Dec 8, 2025, 10:42:02 PM
    Author     : nhtho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
    </head>
    <body>
        <h3>Xin chào ${fullName}</h3>
        <div>
            <a href="viewProfileDetails?id=${profileId}">Xem hồ sơ</a>
        </div>
    </body>
</html>
