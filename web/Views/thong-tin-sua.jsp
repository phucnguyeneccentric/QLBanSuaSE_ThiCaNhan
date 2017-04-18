<%-- 
    Document   : thong-tin-sua
    Created on : Apr 14, 2017, 2:50:59 PM
    Author     : NHQ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="page2" class="main">
    <div class="col1 thuc-don">
        <%@include file="thuc-don.jsp"%>
    </div>
    <div class="col2">
        <table border="0" width="100%">
            <tr>
                <td colspan="2" class="tieu-de-sua">${sua.tenSua}</td>
            </tr>
            <tr>
                <td><img src="./images/${sua.hinh}"/></td>
                <td>
                    <p><b><i>Thành phần dinh dưỡng:</i></b><br>${sua.tpDinhDuong} </p>
                    <p><b><i>Lợi ích:</i></b><br> ${sua.loiIch}</p>
                    <p><b><i>Trọng lượng:</i></b> ${sua.trongLuong} gr - <b><i>Đơn giá:</i></b> ${sua.donGia} đ</p>
                </td>
            </tr>
        </table>
    </div>
</div>