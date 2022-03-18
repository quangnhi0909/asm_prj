<%-- 
    Document   : addproduct
    Created on : Mar 16, 2022, 5:16:02 PM
    Author     : Hoang Quang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../css/addproduct.css" rel="stylesheet" type="text/css"/>
        <title>Nhập Hàng</title>
    </head>
    <body>
        <div class="content">
            <p>Xin Mời Nhập Thông Tin Đơn Hàng</p>
            <form action="add" method="post">
                Lần Nhập Hàng:
                <br/>
                <input type="text" name="itime"><br/>
                Ngày Nhập Hàng:
                <br/>
                <input type="date" name="idate"><br/>
                Người Bán:
                <br/>
                <input type="text" name="seller"><br/>
                Số Điện Thoại:
                <br/>
                <input type="text" name="phone"><br/>
                Tên Sản Phẩm:
                <br/>
                <input type="text" name="pname"><br/>
                Giá Sản Phẩm:
                <br/>
                <input type="text" name="pprice"><br/>
                Số Lượng Sản Phẩm:
                <br/>
                <input type="text" name="quantity"><br/>
                <button type="submit">Xác Nhận</button>
            </form>
        </div>
    </body>
</html>
