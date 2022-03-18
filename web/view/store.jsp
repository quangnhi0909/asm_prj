<%-- 
    Document   : store
    Created on : Mar 17, 2022, 8:28:13 AM
    Author     : Hoang Quang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kho Hàng</title>
        <script>
        function deleteProduct(id) {
                var result = confirm("Bạn có thực sự muốn xóa sản phẩm này");
                if (result) {
                    window.location.href = "../store/delete?id=" + id
                }
            }
            </script>
    </head>
    <body>
        <div>
            <table border="1px">
                <tr>
                    <th colspan="3">Kho Hàng Của Bạn Hiện Tại</th>
                </tr>
                <tr>
                    <td>Tên Sản Phẩm</td>
                    <td>Tổng Số lượng</td>
                    <td>Ngày Nhập Hàng</td>
                </tr>
                <c:forEach items="${requestScope.listStoreProduct}" var="list">
                    <tr>
                        <td>${list.productName}</td>
                        <td>${list.quantity}</td>
                        <td>${list.idate}</td>
                        <td>
                            <a style="text-decoration: none" href="../store/edit?id=${list.id}">Cập Nhật Sản Phẩm</a>
                        </td>
                        <td>
                            <a style="text-decoration: none" href="#" onclick="deleteProduct(${list.id})">Xóa Sản Phẩm</a>
                        </td>
                    </tr>    
                </c:forEach>

            </table>
        </div>
    </body>
</html>
