<%-- 
    Document   : san-pham
    Created on : Apr 13, 2017, 7:25:47 PM
    Author     : hv
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="JavaBeans.LoaiSua"%>
<%@page import="BusinessLogics.LoaiSuaBL"%>
<div id="page1" class="main">
    <div class="col1">
        <p id="sp">Sản phẩm theo hãng sữa</p>
        <ul>
            <c:forEach var="i" begin="1" end="5" step="1">
                <li><a href="trang-chu.jsp?maHang=${i}">Hãng sữa ${i}</a></li>
            </c:forEach>
        </ul>
        <p>Sản phẩm theo loại</p>
        <ul>
            <c:forEach var="i" begin="1" end="5" step="1">
               <li><a href="trang-chu.jsp?maLoai=${i}">Loại sữa ${i}</a></li>
            </c:forEach>
        </ul>
    </div>
    <div class="col2">
        <div class="thuc-don thuc-don-ngang">
            <%@include file="thuc-don.jsp"%>
        </div>
        <div class="col21">
            <table border="1" width="100%">
                <caption>DANH SÁCH SỮA</caption>
                <thead>
                    <tr>
                        <th>Hình</th>
                        <th>Mã loại sữa</th>
                        <th>Tên sữa</th>
                        <th>Trọng lượng</th>
                        <th>Đơn giá</th>
                   
                    </tr>
                </thead>
                <tbody>
                    
                    <c:forEach items="${dsls}" var="ls">    
                    <tr>
                        <td style="text-align: center;"><img src="./images/AB007.jpg"/></td>
                        <td>${ls.maLoai}</td>
                        <td><a href="trang-thong-tin-sua.jsp?maSua=${ls.maLoai}">${ls.tenLoai}</a></td>
                          <td style="text-align: right;">200</td>
                        <fmt:setLocale value="vi-VN"></fmt:setLocale>
                        <fmt:formatNumber value="120000" var="donGia" type="number"></fmt:formatNumber>
                        <td style="text-align: right;">${donGia}</td>
                        
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
            <div class="danh-sach-trang">
            <c:if test="${tongSoTrang>1}">
                <c:forEach var="i" begin="1" end="${tongSoTrang}" step="1">
                    <c:if test="${!empty param.maHang}">
                        <a href="trang-chu.jsp?maHang=${param.maHang}&trang=${i}"> ${i} </a>
                    </c:if>
                    <c:if test="${!empty param.maLoai}">
                        <a href="trang-chu.jsp?maLoai=${param.maLoai}&trang=${i}"> ${i} </a>
                    </c:if>
                    <c:if test="${empty param.maHang && empty param.maLoai}">
                        <a href="trang-chu.jsp?trang=${i}"> ${i} </a>
                    </c:if>
                </c:forEach>
            </c:if>
            </div>
        </div>
        <div class="col22">
            <%@include file="hinh-anh.html"%>
        </div>
    </div>
</div>