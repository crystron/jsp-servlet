<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<form action="${pageContext.request.contextPath}/admin/create" method="post">
    <div class="row">
                <div class="col-md-6">
            <div class="box-body">
                <div>
                    Back to list
                </div>
                <div class="form-group">
                    <label> Tên Sách</label>
                    <input type="text" class="form-control" id="TenSach" name="TenSach" placeholder="Tên Sách" style="border-radius: 0;box-shadow:none; border-color: #d2d6de;">
                </div>
                <div class="form-group">
                    <label> Giá Tiền</label>
                    <input type="number" class="form-control" id="GiaTien" name="GiaTien" placeholder="Giá Tiền" style="border-radius: 0;box-shadow:none; border-color: #d2d6de;">
                </div>
                <div class="form-group">
                    <label> Số Lượng</label>
                    <input type="number" class="form-control" id="SoLuong" name="SoLuong" placeholder="Số Lượng" style="border-radius: 0;box-shadow:none; border-color: #d2d6de;">
                </div>
                <div class="form-group">
                    <label> Hình Ảnh</label>
                    <input type="text" class="form-control" id="Hinh" name="Hinh" placeholder="Hình Ảnh" style="border-radius: 0;box-shadow:none; border-color: #d2d6de;">
                </div>
                <div class="form-group">
                    <label> Ưu Tiên</label>
                    <input type="number" class="form-control" id="UuTien" name="UuTien" value="1" min="1" max="10" placeholder="Ưu Tiên" style="border-radius: 0;box-shadow:none; border-color: #d2d6de;">
                </div>
                <!-- /.box-body -->
            </div>
            <div class="box-footer">
                <input type="hidden" value="Sach" name="action">
                <button type="submit" class="btn btn-primary">Thêm mới</button>
            </div>
        </div>
        <div class="col-md-6">
            <div class="box-body">
                <div class="form-group">
                    <label> Danh Mục</label>
                    <select class="form-control" style="border-radius: 0;box-shadow:none; border-color: #d2d6de;" name="MaDM" id="MaDM">
                        <c:forEach items="${DanhMuc}" var="item">
                            <option id="${item.maDM}" value="${item.maDM}">${item.tenDM}</option>
                        </c:forEach>
                    </select>

                </div>
                <div class="form-group">
                    <label> Thể Loại</label>
                    <select class="form-control" style="border-radius: 0;box-shadow:none; border-color: #d2d6de;" name="MaTL" id="MaTL">
                        <c:forEach items="${TheLoai}" var="item">
                            <option id="${item.maTL}" value="${item.maTL}">${item.tenTL}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label> Tác Giả</label>
                    <select class="form-control" style="border-radius: 0;box-shadow:none; border-color: #d2d6de;" name="MaTG" id="MaTG">
                        <c:forEach items="${TacGia}" var="item">
                            <option id="${item.maTG}" value="${item.maTG}">${item.tenTG}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label> Nhà Xuất Bản</label>
                    <select class="form-control" style="border-radius: 0;box-shadow:none; border-color: #d2d6de;" name="MaNXB" id="MaNXB">
                        <c:forEach items="${NXB}" var="item">
                            <option id="${item.maNXB}" value="${item.maNXB}">${item.tenNXB}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
        </div>
    </div>
</form>