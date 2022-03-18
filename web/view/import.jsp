<%-- 
    Document   : bill
    Created on : Mar 17, 2022, 7:34:25 AM
    Author     : Hoang Quang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
            <table border="1px">
                <tr>
                    <th colspan="7">Các Lần Nhập Hàng Gần Đây</th>
                </tr>
                <tr>
                    <td>Lần Nhập</td>
                    <td>Ngày Nhập</td>
                    <td>Người Bán</td>
                    <td>Số Điện Thoại</td>
                    <td>Tên Sản Phẩm</td>
                    <td>Giá Sản Phẩm</td>
                    <td>Số Lượng</td>
                </tr>
                <c:forEach items="${requestScope.listProducts}" var="p">
                    <tr>
                        <td>${p.itime}</td>
                        <td>${p.idate}</td>
                        <td>${p.seller}</td>
                        <td>${p.phone}</td>
                        <td>${p.pName}</td>
                        <td>${p.price}</td>
                        <td>${p.quantity}</td>
                    </tr>
                </c:forEach>

            </table>
        </body>
    </html>
