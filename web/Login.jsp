
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang chủ</title>
        <link rel="stylesheet" href="<%= request.getContextPath()%>/static/css/login.css"> 
        <link rel="stylesheet" href="<%= request.getContextPath()%>/static/css/styleH.css"> 
    </head>
    <body>
        <h1>Đăng nhập</h1>
        <form method="POST" action="login">
            <div>
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
                            <td></td>
                            <td>
                                <div style="color: red">${message}</div>
                                Chưa có tài khoản? <a href="signup"> Đăng kí</a>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input type="submit" value="Đăng nhập" />
                            </td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </form>
        <jsp:include page="Views/footer.jsp" />
    </body>
</html>
