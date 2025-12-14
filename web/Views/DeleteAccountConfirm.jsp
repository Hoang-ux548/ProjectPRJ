<%-- 
    Document   : DeleteAccountConfirm
    Created on : Dec 11, 2025, 8:10:27 PM
    Author     : nhtho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Xác nhận xóa</title>
        <link rel="stylesheet" href="<%= request.getContextPath()%>/static/css/DeleteAccount.css"> 
        <link rel="stylesheet" href="<%= request.getContextPath()%>/static/css/styleH.css"> 
    </head>
    <body>
        <div class="delete-container">
            <form action="deleteAccount" method="POST">
                <table border="0">
                    <tbody>
                        <tr>
                            <td>Are you sure want to delete this account?
                                <input type="hidden" name="id" value="${id}" readonly="readonly" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="submit" value="Yes" name="btn"/>
                                <input type="submit" value="No" name="btn"/>
                            </td>
                        </tr>
                    </tbody>
                </table>

            </form>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>
