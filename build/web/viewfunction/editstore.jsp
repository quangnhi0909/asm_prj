<%-- 
    Document   : edit-store
    Created on : Mar 17, 2022, 8:53:42 AM
    Author     : Hoang Quang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="../store/edit" method="post">
            <c:set var="store" value="${requestScope.store}"></c:set>
            ID Sản Phẩm: <br/>
            ${store.id} <br/>
            <input type="hidden" name="id" value="${store.id}">
            Tên Sản Phẩm: <br/>
            <input type="text" name="productName" value="${store.productName}"/> <br/>
            Số lượng trong kho: <br/>
            <input type="text" name="quantity" value="${store.quantity}"/> <br/>
            Ngày Nhập Sản Phẩm:<br/>
            <input type="date" name="idate" value="${store.idate}"><br/>
            <input type="submit" value="Save" />
        </form>
    </body>
</html>
