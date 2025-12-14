<%-- 
    Document   : SignUpUserInfo
    Created on : Dec 8, 2025, 11:24:52 PM
    Author     : nhtho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thông tin cá nhân</title>
        <link rel="stylesheet" href="<%= request.getContextPath()%>/static/css/SignUpUserInfo.css"> 
        <link rel="stylesheet" href="<%= request.getContextPath()%>/static/css/styleH.css"> 
    </head>
    <body>
        <div class="profile-container">
            <h1>Cập nhật thông tin cá nhân</h1>

            <form action="signUpInfo" method="POST">
                <input type="hidden" name="accountId" value="${accountId}" readonly="readonly" />
                <table border="0">
                    <tbody>
                        <tr>
                            <td>Full name</td>
                            <td>
                                <input type="text" name="fullName" value="" />
                            </td>
                        </tr>
                        <tr>
                            <td>Age</td>
                            <td>
                                <input type="text" name="age" value="" />
                            </td>
                        </tr>
                        <tr>
                            <td>Gender</td>
                            <td>
                                <input type="radio" name="gender" value="Nam" /> Nam
                                <input type="radio" name="gender" value="Nữ" /> Nữ
                            </td>
                        </tr>
                        <tr>
                            <td>Hobbies</td>
                            <td>
                                <input type="text" name="hobbies" value="" />
                            </td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>
                                <input type="text" name="email" value="" />
                            </td>
                        </tr>
                        <tr>
                            <td>Description</td>
                            <td>
                                <input type="text" name="des" value="" />
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input type="submit" value="SUBMIT" />
                            </td>
                        </tr>
                    </tbody>
                </table>

            </form>
            <jsp:include page="footer.jsp" />
        </div>
    </body>
</html>
