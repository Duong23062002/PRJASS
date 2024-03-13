<%-- 
    Document   : register
    Created on : Feb 25, 2024, 4:10:43 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DuongPizza</title>
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

            form {
                text-align: center;
                margin-bottom: 20px;
            }

            input[type="text"],
            input[type="submit"] {
                padding: 10px;
                border: none;
                border-radius: 5px;
                margin-right: 10px;
            }

            input[type="submit"] {
                background-color: #333;
                color: white;
                cursor: pointer;
            }

            table {
                width: 100%;
                border-collapse: collapse;
            }

            table th, table td {
                padding: 10px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            table th {
                background-color: #f2f2f2;
                color: #333;
            }

            table tr:hover {
                background-color: #f9f9f9;
            }

            img {
                display: block;
                margin: 0 auto;
            }

            footer {
                text-align: center;
                padding: 20px;
                background-color: #333;
                color: white;
                position: fixed;
                bottom: 0;
                width: 100%;
            }

        </style>
    </head>
    <body>
        <%@include file="header-user.jsp" %>
        <br/>
        <h1>Pizza Store</h1>
        <br/>
        <form method="get" action="./home">
            Search <input type="text" name="search" value="${param.search}">
            <input type="submit" value="Search" style="color: white; background: green; padding: 5px; border-radius: 5px">
        </form>

        <br/>
    <th:if test="${message != null}">
        <p>${message}</p>
    </th:if>
    <th:if test="${pizzas != null}">
        <p>${pizzas.size()} pizzas found</p>
        <br/>
        <table>
            <tr >
                <th>ID</th>
                <th>Name</th>
                <th>Price</th>
                <th>Description</th>
                <th>Image Url</th>
                <th>Category</th>
                <th></th>
            </tr>
            <c:forEach items="${pizzas}" var="pizza">
                <tr style="border-bottom: #777777 1px solid">
                    <td style="padding: 5px 10px;">${pizza.productId}</td>
                    <td style="padding: 5px 10px;">${pizza.productName}</td>
                    <td style="padding: 5px 10px;">$${pizza.unitPrice}</td>
                    <td style="padding: 5px 10px;">${pizza.category.description}</td>
                    <td style="padding: 5px 10px;">
                        <img src="${pizza.productImage}" width="100" height="100" alt="Image" />
                    </td>
                    <td style="padding: 5px 10px;">${pizza.category.categoryName}</td>
                    <td>
                        <form method="get" action="./order">
                            <input type="hidden" name="productId" value="${pizza.productId}">
                            <input type="hidden" name="productName" value="${pizza.productName}">
                            <input type="hidden" name="unitPrice" value="${pizza.unitPrice}">
                            <input type="hidden" name="quantity" value="1">
                            <input type="submit" value="Order" style="color: white; background: orange; padding: 5px; border-radius: 5px">
                        </form>
                    </td>
                </tr>

            </c:forEach>
        </table>
    </th:if>
    <br/>


</body>
</html>
