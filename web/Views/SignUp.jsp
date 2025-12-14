<%-- 
    Document   : SignUp
    Created on : Dec 8, 2025, 10:10:07 PM
    Author     : nhtho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng kí tài khoản</title>
        <link rel="stylesheet" href="<%= request.getContextPath()%>/static/css/SignUp.css">
        <link rel="stylesheet" href="<%= request.getContextPath()%>/static/css/styleH.css">
    </head>
    <body>

        <div class="signup-container">
            <h1>Đăng kí tài khoản</h1>
            <form action="signup" method="POST">
                <table border="0">
                    <tbody>
                        <tr>
                            <td>Tài khoản</td>
                            <td>
                                <input type="text" name="txtUser" value="" placeholder="Enter Username" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Mật khẩu</td>
                            <td>
                                <input type="password" name="txtPass" value="" placeholder="Enter password" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Nhập lại mật khẩu</td>
                            <td>
                                <input type="password" name="txtRePass" value="" placeholder="Enter password" required/>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <div style="color: red">${message}</div>
                                <input type="submit" value="Đăng kí" />
                            </td>
                        </tr>
                    </tbody>
                </table>

            </form>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>
