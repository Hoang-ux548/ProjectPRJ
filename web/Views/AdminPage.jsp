
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <link rel="stylesheet" href="<%= request.getContextPath()%>/static/css/styleH.css">
        <link rel="stylesheet" href="<%= request.getContextPath()%>/static/css/AdminPage.css">

    </head>
    <body>
        <jsp:include page="header.jsp" />
        <jsp:include page="topnav.jsp" />
        <div class="admin-container">
            <h1>Quản lý chương trình bạn muốn hẹn hò Demo</h1>
            <div><a href="accountList">Quản lý tài khoản người dùng</a></div>
            <div><a href="userProfile">Quản lý hồ sơ người dùng</a></div>
            <div><a href="Views/">Quản lý ghép cặp</a></div>
            <div><a href="Views/">Quản lý lịch quay</a></div>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>
