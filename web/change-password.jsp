<%@ page import="dtos.AccountDTO" %><%--
    Document   : orderpage
    Created on : Feb 26, 2024, 8:38:15 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f4f4f4;
            }

            .container {
                width: 80%;
                margin: 0 auto;
                padding: 20px;
            }

            h1 {
                text-align: center;
                color: #333;
            }

            table {
                width: 50%;
                margin: 0 auto;
                border-collapse: collapse;
            }

            table td {
                padding: 10px;
                border-bottom: 1px solid #ddd;
            }

            table td:first-child {
                width: 30%;
            }

            input[type="text"],
            input[type="submit"] {
                width: calc(100% - 20px);
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                box-sizing: border-box;
            }

            input[type="submit"] {
                background-color: #333;
                color: #fff;
                cursor: pointer;
            }

            input[type="submit"]:hover {
                background-color: #555;
            }

            input[type="text"][readonly] {
                background-color: #f4f4f4;
                cursor: not-allowed;
            }
        </style>
    </head>
    <body>
        <%
            if (session.getAttribute("account") == null) {
                response.sendRedirect("login");
            } else {
                AccountDTO account = (AccountDTO) session.getAttribute("account");
                if (account.getType() == 1) {
        %>
        <jsp:include page="header.jsp" />
        <%
        } else if (account.getType() == 2) {
        %>
        <jsp:include page="header-user.jsp" />
        <%
                }
            }
        %>
        <br/>
        <h1>Change Password</h1>
        <br/>
        <br/>
        <%--        <th:if test="${message != null}">--%>
        <%--            <p>${message}</p>--%>
        <%--        </th:if>--%>
        <%--        <th:if test="${orderDetails != null}">--%>
        <%--            <p>${orderDetails.size()} orders found</p>--%>
        <br/>
    <th:if test="${message != null}">
        <p>${message}</p>
    </th:if>
    <form action="./change-password" method="post">
        <table>
            <th:set var="account" value="${sessionScope.account}" />
            <tbody>
                <tr>
                    <td>Old password</td>
                    <td style="padding: 5px 10px;"><input type="text" name="password" value="${param.password}" required/></td>
                </tr>
                <tr>
                    <td>New password</td>
                    <td style="padding: 5px 10px;"><input type="text" name="newPassword" value="${param.newPassword}" required/></td>
                </tr>
                <tr>
                    <td>Confirm password</td>
                    <td style="padding: 5px 10px;"><input type="text" name="confirmPassword" value="${param.confirmPassword}" required /></td>
                </tr>

            <td></td>
            <td><input type="submit" value="Save" style="color: white; background: #333; padding: 5px; border-radius: 5px; cursor: pointer"/></td>
            </tr>
            </tbody>
        </table>
    </form>

</body>
</html>
